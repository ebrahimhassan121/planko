/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.user_bean;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EHS
 */
public class Users_model {

    CheckDatabase cd = new CheckDatabase();

    Connection connect;
    ResultSet re = null;
    String query;

    public user_bean select_user(String email, String password) throws SQLException {
        user_bean user = new user_bean();
        ResultSet rs = null;
        String UserDetails_ID = null;
        try {
            connect = cd.check();

           query = " Select users.UserID, users.UserEmail, users.Password, users.role_id, users.phone, users.Facebook, users.twitter, users.Active,user_details.UserDetails_ID,user_details.Name,user_details.Address,user_details.about ,user_details.avatar From `users`,`user_details` WHERE users.UserEmail='" + email + "' AND users.password = '" + password + "' AND users.UserID = user_details.UserDetails_ID  ";
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
                user.setName(rs.getString("name"));
                user.setAddress(rs.getString("address"));
                user.setAbout(rs.getString("about"));
                Blob imageBlob = rs.getBlob("avatar");
                if(imageBlob!=null){
                user.setAvatar(imageBlob.getBytes(1, (int) imageBlob.length()));
                }

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
            String query = " Select  `UserEmail`From users WHERE `UserEmail`=(?) ";
            PreparedStatement ps=connect.prepareStatement(query);
            ps.setString(1, email);
           // Statement ps = connect.createStatement();
            rs = ps.executeQuery();
            return (rs.next());
    }
    public boolean insert_user(user_bean user,int Role) {
        ResultSet rs = null;
        String UserDetails_ID = null;
          boolean isInserted=false;
        try {
            connect = cd.check();
            System.out.println(user.getEmail());
            String query = "INSERT INTO `users`(`UserID`, `UserEmail`, `Password`, `role_id`) VALUES (?,?,?,?)";
            PreparedStatement preparedStatement = connect.prepareStatement(query);
            preparedStatement.setInt(1,0);
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setInt(4, Role);
            preparedStatement.execute();
            
            query="select `UserID` from `users` where `UserEmail` ='"+user.getEmail()+"'";
            preparedStatement.close();
            preparedStatement=connect.prepareStatement(query);
            rs=preparedStatement.executeQuery();
            if(rs.next()){
                user.setUserID(rs.getString("UserID"));
                System.out.println(user.getUserID()+"--------------");
            }
            query="INSERT INTO `user_details`(`UserDetails_ID`, `Name`, `Address`, `about`) VALUES (?,?,?,?)";
            preparedStatement.close();
            preparedStatement=connect.prepareStatement(query);
            preparedStatement.setInt(1, Integer.parseInt(user.getUserID()));
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getAddress());
            preparedStatement.setString(4, user.getAbout());
            preparedStatement.execute();
            isInserted=true;
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
          return isInserted;
    }
    public boolean update_user(user_bean user,String oldMail) {
        ResultSet rs = null;
        String UserDetails_ID = null;
          boolean isupdated=false;
        try {
            connect = cd.check();
            String query = "UPDATE `users` SET `phone`=?, `UserEmail`=? ,`Facebook`=?,`twitter`=? WHERE `UserEmail`='"+oldMail+"' AND `password`='"+user.getPassword()+"'";
            PreparedStatement preparedStatement = connect.prepareStatement(query);
            preparedStatement.setString(1,(user.getPhone().equals(""))?null:user.getPhone());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, (user.getFacebook().equals(""))?null:user.getFacebook());
            preparedStatement.setString(4, (user.getTwitter().equals(""))?null:user.getTwitter());
            preparedStatement.executeUpdate();
            
            query="UPDATE `user_details` SET `Name`=?,`Address`=?,`about`=? WHERE `UserDetails_ID` IN(select `UserID` from `users` where  `UserEmail`='"+user.getEmail()+"')";
             preparedStatement = connect.prepareStatement(query);
            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getAddress());
            preparedStatement.setString(3,user.getAbout());
            preparedStatement.executeUpdate();
            isupdated=true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
          return isupdated;
    }
    public boolean updateAvatar(InputStream avatar,String userID){
        try {
             connect = cd.check();
            if(avatar==null){System.out.println("---------------------");}
            query="UPDATE `user_details` SET avatar=? WHERE UserDetails_ID=?";
            
            java.sql.PreparedStatement statement=connect.prepareStatement(query);
            statement.setBlob(1, avatar);
            statement.setString(2, userID);
            int updateCheck=statement.executeUpdate();
            return (updateCheck>0);
        } catch (SQLException ex) {
            ex.printStackTrace();
            try {
                connect.close();
            } catch (SQLException ex1) {
                Logger.getLogger(Users_model.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    return  false;
    }
    public user_bean Select_userByID(String userID){
        try {
            query="SELECT  `Name`, `Address`, `about`, `avatar`,`RegisterDate` FROM `user_details` WHERE `UserDetails_ID`=? ";
           connect=cd.check();
            PreparedStatement statement=connect.prepareStatement(query);
            if (userID.equals(""))userID="-1";
            statement.setInt(1, Integer.parseInt(userID));
            re=statement.executeQuery();
            if(re.next()){
                user_bean user=new user_bean();
                user.setName(re.getString("Name"));
                user.setAddress(re.getString("Address"));
                user.setAbout(re.getString("about"));
                Blob  avatarBlob=re.getBlob("avatar");
                if(avatarBlob!=null){
                 user.setAvatar(avatarBlob.getBytes(1,(int)avatarBlob.length() ));
                }
               user.setRegisterDate(re.getTimestamp("RegisterDate"));
                return user;
            }
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
    
    return null;
    }
  
}
