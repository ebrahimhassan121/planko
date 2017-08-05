/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Base64;
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EHS
 */

public class user_bean {
    private String email,password,role,userID,phone="",Facebook,twitter,name="",address="",about="",avatar;
    Timestamp RegisterDate;
    private String dateInArabic;

    public Timestamp getRegisterDate() {
        return RegisterDate;
    }

    public void setRegisterDate(Timestamp RegisterDate) {
        setDateInArabic(RegisterDate);
        this.RegisterDate = RegisterDate;
    }
    



    public String getAvatar() {
        return (this.avatar!=null)?this.avatar : "./assets/site/images/avatars/default-user-icon-profile.png";
        
    }

    public void setAvatar(byte[] avatar) {
         try{
        this.avatar = "data:image/jpg;base64,"+Base64.getEncoder().encodeToString(avatar);
       }catch(Exception ex){
           this.avatar=null;
       }
    }
   
    /**
     * @return the name
     */
    public String getName() {
        return name;
    } 

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the about
     */
    public String getAbout() {
        return about;
    }

    /**
     * @param about the about to set
     */
    public void setAbout(String about) {
        this.about = about;
    }
    /**
     * @return the userID
     */
    public String getUserID() {
        return userID;
    }

    /**
     * @param userID the userID to set
     */
    public void setUserID(String userID) {
        this.userID = userID;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return (this.phone!=null)?this.phone:"";
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the Facebook
     */
    public String getFacebook() {
        return (this.Facebook!=null)?this.Facebook:"";
    }

    /**
     * @param Facebook the Facebook to set
     */
    public void setFacebook(String Facebook) {
        this.Facebook = Facebook;
    }

    /**
     * @return the twitter
     */
    public String getTwitter() {
        return (this.twitter!=null)?this.twitter:"";
    }

    /**
     * @param twitter the twitter to set
     */
    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }
    // `UserID`, `UserEmail`, `Password`, `role_id`, `phone`, `Facebook`, `twitter`, `Active`
   
    public void setEmail(String email) {
        this.email = email;
    }

   

    public void setPassword(String password) {
        this.password = password;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    public String getEmail() {
        return email;
    }

 
    public String getPassword() {
        return password;
    }

    public String getRole() {
        return role;
    }
     public String getDateInArabic() {
        return dateInArabic;
    }

    public void setDateInArabic(Timestamp dateInEnglish) {
        String finalDate="";
        try {
            Timestamp timestamp = Timestamp.valueOf(LocalDateTime.now());
            long newT = timestamp.getTime() - dateInEnglish.getTime();
            String questDateTime= dateInEnglish.toString();
            String date_s =questDateTime.substring(0, questDateTime.length()-2 );
            
            SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            Date date = dt.parse(date_s);
            
            // *** same for the format String below
            SimpleDateFormat dt1 = new SimpleDateFormat("EEEE  YYYY/MM/dd hh:mm a",new Locale("AR"));
             finalDate=dt1.format(date);
            if (newT < 86400000) {
                int seconds = (int) (newT / 1000) % 60;
                int minutes = (int) ((newT / (1000 * 60)) % 60);
                int hours = (int) ((newT / (1000 * 60 * 60)) % 24);
               if(hours>0){
                   switch (hours) {
                        case 1:
                            this.dateInArabic = "منذ "+"ساعة واحدة";
                            break;
                        case 2:
                            this.dateInArabic = "منذ "+"ساعتين";
                            break;
                        default:
                            this.dateInArabic = "منذ "+hours+" ساعات";
                            break;
                    }
                   return;
               }else if(minutes>0){
                    switch (minutes) {
                        case 1:
                            this.dateInArabic = "منذ "+"دقيقة واحدة";
                            break;
                        case 2:
                            this.dateInArabic = "منذ "+"دقيقتين";
                            break;
                        default:
                            this.dateInArabic = "منذ "+minutes+" دقائق";
                            break;
                    }
                   return;
               }else{
                   this.dateInArabic = "الان";
                   return;
               }
            }else{
                
            }
            
        } catch (ParseException ex) {
            Logger.getLogger(question_bean.class.getName()).log(Level.SEVERE, null, ex);
        }
        this.dateInArabic = finalDate;
    }
    
    
}
