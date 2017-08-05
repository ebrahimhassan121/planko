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
import java.util.Date;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EHS
 */
public class Comment {
    String  CommentID,Comment,questionID,CommenterID,Deleted;
    Timestamp CommenDate;
    private String dateInArabic;

    public String getCommentID() {
        return CommentID;
    }

    public void setCommentID(String CommentID) {
        this.CommentID = CommentID;
    }

    public String getComment() {
        return Comment;
    }

    public void setComment(String Comment) {
        this.Comment = Comment;
    }

    public String getQuestionID() {
        return questionID;
    }

    public void setQuestionID(String questionID) {
        this.questionID = questionID;
    }

    public String getCommenterID() {
        return CommenterID;
    }

    public void setCommenterID(String CommenterID) {
        this.CommenterID = CommenterID;
    }

    public Timestamp getCommenDate() {
        return CommenDate;
    }

    public void setCommenDate(Timestamp CommenDate) {
        setDateInArabic(CommenDate);
        this.CommenDate = CommenDate;
    }

    public String getDeleted() {
        return Deleted;
    }

    public void setDeleted(String Deleted) {
        this.Deleted = Deleted;
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

    public String getDateInArabic() {
        return dateInArabic;
    }
      
    
}
