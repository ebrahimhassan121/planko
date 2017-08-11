/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.InputStream;
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
public class question_bean {
    String  questionID,questionTitle,questionCategory,OwnerID, LikesCount,Deleted="0",Question_text,Question_image,translated="0",commentsCount,dateInArabic,keywords;
    InputStream image_input;
    java.sql.Timestamp questionDate;

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }
    
    public InputStream getImage_input() {
        return image_input;
    }

    public void setImage_input(InputStream image_input) {
        this.image_input = image_input;
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
    
    
    public void setQuestion_text(String Question_text) {
        this.Question_text = Question_text;
    }

    public void setQuestion_image(byte[] Question_image) {
        try{
        this.Question_image = "data:image/jpg;base64,"+Base64.getEncoder().encodeToString(Question_image);;
        }catch(Exception ex){
        this.Question_image=null;
        }
    
    }

    public String getCommentsCount() {
        return commentsCount;
    }

    public void setCommentsCount(String commentsCount) {
        this.commentsCount = commentsCount;
    }
        
    
    public void setTranslated(String translated) {
        this.translated = translated;
    }

    public String getQuestion_text() {
        return Question_text;
    }
    
    public String getTranslated() {
        return translated;
    }

    public String getQuestionID() {
        return questionID;
    }

    public String getQuestionTitle() {
        return questionTitle;
    }

    public String getQuestionCategory() {
        return questionCategory;
    }

    public java.sql.Timestamp getQuestionDate() {
        return questionDate;
    }

    public String getOwnerID() {
        return OwnerID;
    }

    public String getLikesCount() {
        return LikesCount;
    }

    public String getDeleted() {
        return Deleted;
    }

    public String getQuestion_image() {
        return Question_image;
    }
    
    public void setQuestionID(String questionID) {
        this.questionID = questionID;
    }

    public void setQuestionTitle(String questionTitle) {
        this.questionTitle = questionTitle;
    }

    public void setQuestionCategory(String questionCategory) {
        this.questionCategory = questionCategory;
    }

    public void setQuestionDate(java.sql.Timestamp questionDate) {
        setDateInArabic(questionDate);
        this.questionDate = questionDate;
    }

    public void setOwnerID(String OwnerID) {
        this.OwnerID = OwnerID;
    }

    public void setLikesCount(String LikesCount) {
        this.LikesCount = LikesCount;
    }

    public void setDeleted(String Deleted) {
        this.Deleted = Deleted;
    }

   
    
}
