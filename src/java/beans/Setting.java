/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.Base64;

/**
 *
 * @author khaled
 */
public class Setting {
    
     private String SiteName , Logo , Phone , address , FaceBook , Twitter , Google , Email ;

    public String getSiteName() {
        return SiteName;
    }

    public void setSiteName(String SiteName) {
        this.SiteName = SiteName;
    }

    public String getLogo() {
        return Logo;
    }

    public void setLogo(byte[] Logo) {
       try{
        this.Logo = "data:image/jpg;base64,"+Base64.getEncoder().encodeToString(Logo);
       }catch(Exception ex){
           this.Logo=null;
       }
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getFaceBook() {
        return FaceBook;
    }

    public void setFaceBook(String FaceBook) {
        this.FaceBook = FaceBook;
    }

    public String getTwitter() {
        return Twitter;
    }

    public void setTwitter(String Twitter) {
        this.Twitter = Twitter;
    }

    public String getGoogle() {
        return Google;
    }

    public void setGoogle(String Google) {
        this.Google = Google;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }
    
     public static void main(String[] args) {
        new Setting().setLogo(null);
    }

}
