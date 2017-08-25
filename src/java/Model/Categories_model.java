/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Categories;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
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
    PreparedStatement statement = null;
    ResultSet rs = null;
    String query;
    Categories categories = null;

    public Categories_model() {
        try {
            CheckDatabase cd = new CheckDatabase();
            connect = cd.check();
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public ArrayList<Categories> Select_ALL_Categories() {
        try {
            ArrayList<Categories> arr_categories = new ArrayList<>();
            query = "SELECT `categoriesID`, `categoryName`, `photo` FROM `categories` WHERE 1";
            Statement ps = connect.createStatement();
            rs = ps.executeQuery(query);

            while (rs.next()) {
                categories = new Categories();
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

    public ArrayList<String> Select_ALL_CategoriesNames() {
        try {
            ArrayList<String> arr_categoriesNames = new ArrayList<>();
            query = "SELECT `categoryName` FROM `categories` WHERE 1";
            Statement ps = connect.createStatement();
            rs = ps.executeQuery(query);

            while (rs.next()) {
                String catName = (rs.getString("categoryName"));
                arr_categoriesNames.add(catName);
            }
            return arr_categoriesNames;
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String SelectCatByID(String id) {
        try {
            query = "select categoryName from categories where categoriesID=" + id;
            Statement statement = connect.createStatement();
            rs = statement.executeQuery(query);
            rs.next();
            return rs.getString(1);
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public String SelectCatByName(String name) {
        try {
            query = "select categoriesID from categories where categoryName='" + name + "'";
            Statement statement = connect.createStatement();
            rs = statement.executeQuery(query);
            if (rs.next()) {
                return rs.getString(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "0";
    }

    public boolean insertFavCategories(String userID, String CatID) {
        try {
            query = "INSERT INTO `favCat`(`CatID`, `userID`, `Deleted`) VALUES (?,?,?)";
            PreparedStatement statement = connect.prepareStatement(query);
            statement.setInt(1, Integer.parseInt(CatID));
            statement.setInt(2, Integer.parseInt(userID));
            statement.setInt(3, 0);
            int insertionCheck = statement.executeUpdate();
            return (insertionCheck > -1);
        } catch (Exception ex) {
            return updateFavCategories(userID, CatID);
        }

    }

    public boolean updateFavCategories(String userID, String CatID) {
        try {
            query = "UPDATE `favcat` SET `Deleted`=(case when (Deleted =0) THEN 1 ELSE 0 END) WHERE `CatID`=? AND `userID`=? ";
            PreparedStatement statement = connect.prepareStatement(query);
            statement.setInt(1, Integer.parseInt(CatID));
            statement.setInt(2, Integer.parseInt(userID));
            int insertionCheck = statement.executeUpdate();
            return (insertionCheck > -1);
        } catch (Exception ex) {
            ex.printStackTrace();
            return false;
        }

    }

    public boolean CheckISFavCategories(String userID, String CatID) {
        try {
            query = "select * from `favCat` Where (`CatID`=? And `userID`=? And `Deleted`=0 )";
            statement = connect.prepareStatement(query);
            statement.setInt(1, Integer.parseInt(CatID));
            statement.setInt(2, Integer.parseInt(userID));
            rs = statement.executeQuery();
            return (rs.next());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            return false;
        }

    }

    public ArrayList<Categories> Select_ALL_CategoriesByUserID(String UserID) {
        ArrayList<Categories> arr_categories = new ArrayList<>();
        try {
            query = "SELECT `categoriesID`, `categoryName`, `photo` FROM `categories` WHERE  categories.categoriesID IN (SELECT favcat.CatID FROM `favcat` WHERE favcat.userID =? AND favcat.Deleted=0)";
            statement = connect.prepareStatement(query);
            statement.setInt(1, Integer.parseInt(UserID));
            rs = statement.executeQuery();
            System.out.println("--------------");
            while (rs.next()) {
                categories = new Categories();
                categories.setCategoriesID(rs.getString("categoriesID"));
                categories.setCategoryNam(rs.getString("categoryName"));
                Blob imageBlob = rs.getBlob("photo");
                if (imageBlob != null) {
                    categories.setPhoto(imageBlob.getBytes(1, (int) imageBlob.length()));
                }
                arr_categories.add(categories);
            }
            return arr_categories;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
            return arr_categories;
        }
    }

  //////////////////// Khaled Code /////////////////////////////////////
    
    public boolean insertCategory(String name, InputStream photo) {
        int row = 0;
        query = "INSERT INTO `categories`(`categoryName`, `photo`) VALUES (?,?)";

        try {
            statement = connect.prepareStatement(query);
            statement.setString(1, name);
            statement.setBlob(2, photo);

            row = statement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return (row > 0);
    }

    public Categories getCategorie(String id) {

        Categories categorie = null;

        query = "select * from categories where categoriesID=?";
        try {

            statement = connect.prepareStatement(query);
            statement.setString(1, id);
            rs = statement.executeQuery();
            while (rs.next()) {
                categorie = new Categories();
                categorie.setCategoriesID(rs.getString("categoriesID"));
                categorie.setCategoryNam(rs.getString("categoryName"));
                Blob imageBlob = rs.getBlob("photo");
                if (imageBlob != null) {
                    categorie.setPhoto(imageBlob.getBytes(1, (int) imageBlob.length()));
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return categorie;
    }

    public boolean deletCategorie(String id) {
        query = "DELETE FROM categories WHERE categoriesID = ?";
        int row = 0;
        try {
            statement = connect.prepareStatement(query);
            statement.setString(1, id);

            row = statement.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return (row > 0);
    }

    public boolean updateCategorie(Categories cat, String id) {

        query = "update categories set categoriesID =? , categoryName=? where category_id =?";
        int row = 0;
        try {

            statement = connect.prepareStatement(query);
            statement.setString(1, cat.getCategoriesID());
            statement.setString(2, cat.getCategoryNam());
            statement.setString(3, id);

            row = statement.executeUpdate();

        } catch (Exception e) {

            e.printStackTrace();
        }
        return (row > 0);
    }

}
