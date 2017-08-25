/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Setting;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author khaled
 */
public class Setting_Model {

    Connection conn = null;
    ResultSet rs = null;
    String Query = null;
    PreparedStatement pre = null;
    Setting setting = null;

    public Setting_Model() {

        try {
            CheckDatabase ch = new CheckDatabase();
            conn = ch.check();
        } catch (SQLException ex) {
            System.out.println("Error in Data Base in Setting class ");
            ex.printStackTrace();
        }
    }

    public Setting getSetting() {

        Query = "SELECT * FROM `info`";

        try {
            pre = conn.prepareStatement(Query);
            rs = pre.executeQuery();

            while (rs.next()) {
                setting = new Setting();
                setting.setSiteName(rs.getString("SiteName"));
                Blob imageBlob = rs.getBlob("logo");
                setting.setLogo(imageBlob.getBytes(1, (int) imageBlob.length()));

                setting.setPhone(rs.getString("phone"));
                setting.setAddress(rs.getString("address"));
                setting.setFaceBook(rs.getString("facebook"));
                setting.setGoogle(rs.getString("google"));
                setting.setTwitter(rs.getString("twitter"));
                setting.setEmail(rs.getString("email"));

            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return setting;
    }

    public boolean updateSiteInfo(Setting setting, InputStream logo) {

        Query = "UPDATE `info` SET `SiteName`= ?,`logo`=?,`address`=?,`phone`=?,`facebook`=?,`google`=?,`twitter`=?,`email`=? where 1";
        int row = 0;
        try {

            pre = conn.prepareStatement(Query);

            pre.setString(1, setting.getSiteName());
            pre.setBlob(2, logo);
            pre.setString(3, setting.getAddress());
            pre.setString(4, setting.getPhone());
            pre.setString(5, setting.getFaceBook());
            pre.setString(7, setting.getTwitter());
            pre.setString(6, setting.getGoogle());
            pre.setString(8, setting.getEmail());

            System.out.println("1");
            row = pre.executeUpdate();
            System.out.println("2");
        } catch (Exception e) {
            System.out.println("3");
            e.printStackTrace();
        }

        return (row > 0);
    }
}
