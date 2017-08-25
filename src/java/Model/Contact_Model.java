/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Contact_Bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author AHMED 50070
 */
public class Contact_Model {

    Connection conn = null;
    ResultSet rs = null;
    String Query = null;
    PreparedStatement pre = null;

    public Contact_Model() {
        try {
            CheckDatabase check = new CheckDatabase();
            conn = check.check();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public boolean insertMessge(Contact_Bean con) {
        
        Query = "insert into contact (name,email,phone,address,message) values(?,?,?,?,?)";
        int row = 0;
        try {
            pre = conn.prepareStatement(Query);
            pre.setString(1, con.getName());
            pre.setString(2, con.getEmail());
            pre.setString(3, con.getPhone());
            pre.setString(4, con.getAdress());
            pre.setString(5, con.getMessage());
            row = pre.executeUpdate();
            System.out.println("inserted");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return (row > 0);
        
    }
    ///////////////////////////////////////////////////////////////////////////////////

    public ArrayList<Contact_Bean> getAllMessge() {

        ArrayList<Contact_Bean> list = new ArrayList<>();

        Query = "select * from contact";

        try {

            pre = conn.prepareStatement(Query);
            rs = pre.executeQuery();
            while (rs.next()) {

                Contact_Bean cont = new Contact_Bean();
                cont.setId(rs.getInt("id"));
                cont.setName(rs.getString("name"));
                cont.setEmail(rs.getString("email"));
                cont.setPhone(rs.getString("phone"));
                cont.setAdress(rs.getString("address"));
                cont.setMessage(rs.getString("message"));

                list.add(cont);

            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    ///////////////////////////////////////////////////////////////////////////////////////
    public boolean deletMessage(int id) {

        Query = "DELETE FROM contact WHERE id = ?";

        int row = 0;
        try {
            pre = conn.prepareStatement(Query);
            pre.setInt(1, id);
            row = pre.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();
        }
        return (row > 0);
    }

/////////////////////////////////////////////////////////////////////////////////////////////
    public Contact_Bean getContact(int id) {

        Contact_Bean contact = new Contact_Bean();

        Query = "select * from contact where id=?";
        try {
            pre = conn.prepareStatement(Query);
            pre.setInt(1, id);
            rs = pre.executeQuery();
            while (rs.next()) {
                contact.setId(rs.getInt("id"));
                contact.setName(rs.getString("name"));
                contact.setEmail(rs.getString("email"));
                contact.setMessage(rs.getString("message"));
                contact.setAdress(rs.getString("address"));
                contact.setPhone(rs.getString("phone"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return contact;
    }

}
