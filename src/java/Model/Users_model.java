/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.user_bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author EHS
 */
public class Users_model {

    CheckDatabase cd = new CheckDatabase();

    Connection connect = null;
    ResultSet re = null;

    public user_bean select_user(String email, String password) throws SQLException {
        user_bean user = new user_bean();
        ResultSet rs = null;
        String UserDetails_ID = null;
        try {
            connect = cd.check();
            String query = " Select `UserID`, `UserEmail`, `Password`, `role_id`, `phone`, `Facebook`, `twitter`, `Active` From users WHERE `UserEmail`='" + email + "' AND `password`='" + password + "' ";
            Statement ps = connect.createStatement();

            rs = ps.executeQuery(query);
            if (!rs.isBeforeFirst()) {
                System.out.println("No data");
                connect.close();
                rs.close();
                return null;
            }
            while (rs.next()) {
                user.setUserID(UserDetails_ID = rs.getString("UserID"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("UserEmail"));
                user.setRole(rs.getInt("role_id")+"");
                user.setFacebook(rs.getString("Facebook"));
                user.setTwitter(rs.getString("twitter"));
                user.setPhone(rs.getString("phone"));

            }

        } catch (SQLException e) {
            System.out.println("error/n" + e.getMessage());
        } finally {
            rs.close();
            connect.close();

        }
        return user;
    }
    public boolean CheckEmail(String email) throws SQLException{
            connect = cd.check();
            ResultSet rs;
            String query = " Select  `UserEmail`From users WHERE `UserEmail`='" + email + "' ";
            Statement ps = connect.createStatement();
            rs = ps.executeQuery(query);
            return (rs.next());
    }
    public boolean insert_user(user_bean user,int Role) {
        ResultSet rs = null;
        String UserDetails_ID = null;
          boolean isInserted=false;
        try {
            connect = cd.check();
            //INSERT INTO `users`(`UserID`, `UserEmail`, `Password`, `role_id`, `phone`, `Facebook`, `twitter`, `Active`) VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8])
            String query = "INSERT INTO `users`(`UserID`, `UserEmail`, `Password`, `role_id`, `phone`, `Facebook`, `twitter`, `Active`) VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connect.prepareStatement(query);
            preparedStatement.setInt(1,0);
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setInt(4, Role);
            preparedStatement.setString(5,"");
            preparedStatement.setString(6,"");
            preparedStatement.setString(7,"");
            preparedStatement.setInt(8,1);
            preparedStatement.execute();
            isInserted=true;
          
        } catch (Exception ex) {
            ex.printStackTrace();
        }
          return isInserted;
    }
}
