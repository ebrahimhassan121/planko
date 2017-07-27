/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.user_bean;
import java.sql.Connection;
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
                user.setUserID(UserDetails_ID=rs.getString("UserID"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("UserEmail"));
                user.setRole(rs.getString("role_id"));
                user.setFacebook(rs.getString("Facebook"));
                user.setTwitter(rs.getString("twitter"));
                user.setPhone(rs.getString("phone"));

            }
//            query="SELECT `UserDetails_ID`, `Name`, `Address`, `about` FROM `user_details` WHERE `UserDetails_ID` ="+UserDetails_ID+"";
//            rs=ps.executeQuery(query);
//            while(rs.next()){
//               user.setName(rs.getString("Name"));
//               user.setAddress("");
//            }
        } catch (SQLException e) {
            System.out.println("error/n" + e.getMessage());
        } finally {
            rs.close();
            connect.close();

        }
        return user;
    }

}
