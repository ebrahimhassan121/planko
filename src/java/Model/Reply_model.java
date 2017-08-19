/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Reply;
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
public class Reply_model {

    Connection connect = null;
    ResultSet rs = null;
    String query;

    public Reply_model() {
        try {
            CheckDatabase cd = new CheckDatabase();
            connect = cd.check();
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public ArrayList selectReplyByCommentID(String CommentID) {
        ArrayList<beans.Reply> replys = new ArrayList<>();
        try {

            query = "SELECT `ReplyID`, `Reply`,`ReplyerID`, `ReplyDate`FROM `replay` WHERE `Deleted`=0 AND `CommentID` =?";
            PreparedStatement ps = connect.prepareStatement(query);
            ps.setInt(1, Integer.parseInt(CommentID));
            rs = ps.executeQuery();
            while (rs.next()) {
                beans.Reply reply = new Reply();
                reply.setCommentID(CommentID);
                reply.setReplyID(rs.getString("ReplyID"));
                reply.setReply(rs.getString("Reply"));
                reply.setReplyerID(rs.getString("ReplyerID"));
                reply.setReplyDate(rs.getTimestamp("ReplyDate"));
                replys.add(reply);
            }

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        } finally {
            closeConnection();
        }
        return replys;
    }

    public boolean insertReplay(Reply reply) {
        try {
            query = "INSERT INTO `replay`( `Reply`, `CommentID`, `ReplyerID`) VALUES (?,?,?)";
            PreparedStatement preparedStatement = connect.prepareStatement(query);
            preparedStatement.setString(1, reply.getReply());
            preparedStatement.setString(2, reply.getCommentID());
            preparedStatement.setString(3, reply.getReplyerID());
            int insertionCheck = preparedStatement.executeUpdate();
            return (insertionCheck > 0);
        } catch (SQLException ex) {
            Logger.getLogger(Reply_model.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            closeConnection();
        }
        return false;
    }
    public boolean updateReply(String ReplyID,String ReplyText){
         
          try{
              query="UPDATE `replay` SET `Reply`=? WHERE ReplyID=?";
             PreparedStatement statement=connect.prepareStatement(query);
             statement.setString(1, ReplyText);
             statement.setString(2, ReplyID);
             int updateCheck=statement.executeUpdate();
             return (updateCheck>0);
          }catch(Exception ex){
              return false;
          }
      
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
