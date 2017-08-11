/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Categories;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EHS
 */
public class Categories_model {

    Connection connect = null;
    ResultSet rs = null;
    String query;
    Categories categories=null;

    public Categories_model() {
        try {
            CheckDatabase cd = new CheckDatabase();
            connect = cd.check();
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public ArrayList<Categories> Select_ALL_Categories(){
        try {
            ArrayList<Categories> arr_categories=new ArrayList<>();
            query="SELECT `categoriesID`, `categoryName`, `photo` FROM `categories` WHERE 1";
            Statement ps = connect.createStatement();
            rs=ps.executeQuery(query);
            
            while(rs.next()){
             categories=new Categories();
             categories.setCategoriesID(rs.getString("categoriesID"));
             categories.setCategoryNam(rs.getString("categoryName"));
             Blob imageBlob = rs.getBlob("photo");
             categories.setPhoto(imageBlob.getBytes(1, (int) imageBlob.length()));
             arr_categories.add(categories);
            }
            return arr_categories;
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
       public ArrayList<String> Select_ALL_CategoriesNames(){
        try {
            ArrayList<String> arr_categoriesNames=new ArrayList<>();
            query="SELECT `categoryName` FROM `categories` WHERE 1";
            Statement ps = connect.createStatement();
            rs=ps.executeQuery(query);
            
            while(rs.next()){
            String catName=(rs.getString("categoryName"));
             arr_categoriesNames.add(catName);
            }
            return arr_categoriesNames;
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public String SelectCatByID(String id){
        try {
            query="select categoryName from categories where categoriesID="+id;
            Statement statement=connect.createStatement();
            rs=statement.executeQuery(query);
            rs.next();
            return rs.getString(1);
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    return null;
    }
     public String SelectCatByName(String name){
        try {
            query="select categoriesID from categories where categoryName='"+name+"'";
            Statement statement=connect.createStatement();
            rs=statement.executeQuery(query);
            if(rs.next())return rs.getString(1);
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    return "0";
    }
}
