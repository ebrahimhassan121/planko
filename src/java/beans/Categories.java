/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.Base64;

/**
 *
 * @author EHS
 */
public class Categories {
     String categoriesID ,categoryNam,photo;

    public String getCategoriesID() {
        return categoriesID;
    }
 
    public String getCategoryNam() {
        return categoryNam;
    }

    public void setCategoriesID(String categoriesID) {
        this.categoriesID = categoriesID;
    }

    public void setCategoryNam(String categoryNam) {
        this.categoryNam = categoryNam;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(byte[] photoINBytes) {
       try{
        this.photo = "data:image/jpg;base64,"+Base64.getEncoder().encodeToString(photoINBytes);
       }catch(Exception ex){
           this.photo=null;
       }
    }

    public static void main(String[] args) {
        new Categories().setPhoto(null);
    }
    
}
