/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Categories;
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
public class Favourite_model {

    Connection connect = null;
    ResultSet rs = null;
    String query;
    Categories categories = null;

    public Favourite_model() {
        try {
            CheckDatabase cd = new CheckDatabase();
            connect = cd.check();
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean insert_Favourite(favourite fav) {
        try {

            query = "INSERT INTO `favourite`( `favouriteUserID`, `favouriteQuestionID`) VALUES (?,?)";
            PreparedStatement statement = connect.prepareStatement(query);
            statement.setString(1, fav.getFavouriteUserID());
            statement.setString(2, fav.getFavouriteQuestionID());
            int insertionCheck = statement.executeUpdate();
            return (insertionCheck > 0) ? true : false;
        } catch (Exception ex) {
            return update_favouriteByQuestionIDANDUSERID(fav.getFavouriteQuestionID(), fav.getFavouriteUserID());
        } finally {
            closeConnection();
        }
    }
      public boolean update_favouriteByQuestionIDANDUSERID(String questionID, String userID) {
        try {
            query = "UPDATE `favourite` SET `Deleted`=(case when (Deleted = 0) THEN 1 ELSE 0 END) Where favouriteUserID=? AND favouriteQuestionID=?";
            PreparedStatement statement = connect.prepareStatement(query);
            statement.setString(1, userID);
            statement.setString(2, questionID);
            int updateCheck=statement.executeUpdate();
            return (updateCheck>0);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            closeConnection();
            return false;

        }
    }

    public boolean select_favouriteByQuestionIDANDUSERID(String questionID, String userID) {
        try {
            query = "SELECT  `favouriteUserID`, `favouriteQuestionID` FROM `favourite` WHERE Deleted=0 AND favouriteUserID=? AND favouriteQuestionID=?";
            PreparedStatement statement = connect.prepareStatement(query);
            statement.setString(1, userID);
            statement.setString(2, questionID);
            rs = statement.executeQuery();
            return rs.next();
        } catch (SQLException ex) {
            closeConnection();
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
