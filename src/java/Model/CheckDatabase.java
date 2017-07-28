/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ebrahim
 */
public class CheckDatabase {
    
    
    /*Initiate Connection*/
    Connection con=null;
     public Connection check() throws SQLException{
         
        try {
            String hostname = "localhost:3306";
            String dbname = "planko";
            String MysqlURL = "jdbc:mysql://" + hostname + "/" + dbname;
            String user = "root";
            String passwrd = "";
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(MysqlURL + "?useUnicode=true&characterEncoding=UTF-8", user, passwrd);
         } catch (ClassNotFoundException ex) {
            Logger.getLogger(CheckDatabase.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
                   return con;
 
        }
     }
     
 
}
