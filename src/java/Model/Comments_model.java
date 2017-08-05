/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Categories;
import beans.Comment;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
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
    private void closeConnection() {
        try {
//            rs.close();
            connect.close();
        } catch (SQLException ex) {
            Logger.getLogger(Questions_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
