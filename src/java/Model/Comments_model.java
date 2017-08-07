/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Categories;
import beans.Comment;
import beans.user_bean;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EHS
 */
public class Comments_model {

    Connection connect = null;
    ResultSet rs = null;
    String query;
    Categories categories = null;

    public Comments_model() {
        try {
            CheckDatabase cd = new CheckDatabase();
            connect = cd.check();
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList selectCommentsBYQuetionID(String question_ID) {
        ArrayList<Comment> arrComments = new ArrayList<>();
        try {
            query="SELECT `CommentID`, `Comment`, `CommenterID`, `CommenDate` FROM `comments` WHERE questionID=? and Deleted=0";
            PreparedStatement ps = connect.prepareStatement(query);
            ps.setString(1, question_ID);
            rs=ps.executeQuery();
            while(rs.next()){
                Comment comment=new Comment();
                comment.setCommentID(rs.getString("CommentID"));
                comment.setComment(rs.getString("Comment"));
                comment.setQuestionID(question_ID);
                comment.setCommenterID(rs.getString("CommenterID"));
                comment.setCommenDate(rs.getTimestamp("CommenDate"));
                arrComments.add(comment);
            }
            
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            closeConnection();
        }

        return arrComments;
    }
    public boolean insertComment(Comment comment){
    try {
        query="INSERT INTO `comments`( `Comment`, `questionID`, `CommenterID`) VALUES (?,?,?)";
            PreparedStatement preparedStatement=connect.prepareStatement(query);
            preparedStatement.setString(1, comment.getComment());
            preparedStatement.setString(2, comment.getQuestionID());
            preparedStatement.setString(3, comment.getCommenterID());
            int insertionCheck=preparedStatement.executeUpdate();
            return (insertionCheck>0);
        } catch (SQLException ex) {
            Logger.getLogger(Reply_model.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            closeConnection();
        }
    return false;
    }
     public ArrayList SelectRecentAnswed(int from,int to) {
        ArrayList<HashMap> arrRecent = new ArrayList<>();

        try {
            query = "SELECT questions.questionID,questions.questionTitle,comments.Comment,user_details.avatar FROM questions INNER JOIN comments ON ( comments.questionID=questions.questionID AND comments.CommentID=(SELECT comments.CommentID FROM comments WHERE questions.questionID=comments.questionID ORDER BY comments.CommenDate DESC LIMIT 1 )) INNER JOIN user_details ON user_details.UserDetails_ID=comments.CommenterID ORDER BY comments.CommenDate DESC LIMIT "+from+","+to;
            PreparedStatement statement = connect.prepareStatement(query);
            rs = statement.executeQuery();
            user_bean user=new user_bean();
            while (rs.next()) {
                HashMap questionComment = new HashMap();
                questionComment.put("id", rs.getString("questionID"));
                questionComment.put("title", rs.getString("questionTitle"));
                Blob  avatarBlob=rs.getBlob("avatar");
                if(avatarBlob!=null){
                   byte[] avatarbyte=avatarBlob.getBytes(1,(int)avatarBlob.length() );
                   String avatar="data:image/jpg;base64,"+Base64.getEncoder().encodeToString(avatarbyte);
                   questionComment.put("avatar",avatar);
                }else{
                questionComment.put("avatar","./assets/site/images/avatars/default-user-icon-profile.png");
                }
                questionComment.put("comment", rs.getString("Comment"));
                arrRecent.add(questionComment);
                
            }
            rs=null;
        } catch (SQLException ex) {
            System.err.println(ex.getMessage());
        }
        closeConnection();
        return arrRecent;
    }
    private void closeConnection() {
        try {
//            rs.close();
            connect.close();
        } catch (SQLException ex) {
            Logger.getLogger(Questions_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
