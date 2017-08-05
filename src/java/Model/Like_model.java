/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Categories;
import beans.Likes;
import beans.favourite;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EHS
 */
public class Like_model {
    Connection connect = null;
    ResultSet rs = null;
    String query;
    Categories categories = null;

    public Like_model() {
        try {
            CheckDatabase cd = new CheckDatabase();
            connect = cd.check();
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean insert_Like(Likes Like) {
        try {

            query = "INSERT INTO `likes`(`LikerID`, `questionID`) VALUES (?,?)";
            PreparedStatement statement = connect.prepareStatement(query);
            statement.setString(1, Like.getLikerID());
            statement.setString(2,Like.getQuestionID());
            int insertionCheck = statement.executeUpdate();
            return (insertionCheck > 0);
        } catch (Exception ex) {
            return update_LikeByQuestionIDANDUSERID(Like.getQuestionID(), Like.getLikerID());
        } finally {
            closeConnection();
        }
    }
      public boolean update_LikeByQuestionIDANDUSERID(String questionID, String userID) {
        try {
            query = "UPDATE `likes` SET `Deleted`=(case when (Deleted =0) THEN 1 ELSE 0 END) Where `LikerID`=? AND `questionID`=?";
            PreparedStatement statement = connect.prepareStatement(query);
            statement.setString(1, userID);
            statement.setString(2, questionID);
            int updateCheck=statement.executeUpdate();
            System.out.println(updateCheck+"---"+userID+"----"+questionID);
            return (updateCheck>0);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            closeConnection();
            return false;
        }
    }

    public boolean select_LikeByQuestionIDANDUSERID(String questionID, String userID) {
        try {
            query = "SELECT  `LikerID`, `questionID` FROM `likes` WHERE Deleted=0 AND LikerID=? AND questionID=?";
            PreparedStatement statement = connect.prepareStatement(query);
            statement.setString(1, userID);
            statement.setString(2, questionID);
            rs = statement.executeQuery();
            return rs.next();
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return false;
        }finally{
            closeConnection();
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
