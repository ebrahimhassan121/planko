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
public class Reply {
    String ReplyID,Reply,CommentID,ReplyerID,Deleted;
    Timestamp ReplyDate;
    private String dateInArabic;

    public String getReplyID() {
        return ReplyID; 
    }

    public void setReplyID(String ReplyID) {
        this.ReplyID = ReplyID;
    }

    public String getReply() {
        return Reply;
    }

    public void setReply(String Reply) {
        this.Reply = Reply;
    }

    public String getCommentID() {
        return CommentID;
    }

    public void setCommentID(String CommentID) {
        this.CommentID = CommentID;
    }

    public String getReplyerID() {
        return ReplyerID;
    }

    public void setReplyerID(String ReplyerID) {
        this.ReplyerID = ReplyerID;
    }

    public Timestamp getReplyDate() {
        return ReplyDate;
    }

    public void setReplyDate(Timestamp ReplyDate) {
        setDateInArabic(ReplyDate);
        this.ReplyDate = ReplyDate;
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
