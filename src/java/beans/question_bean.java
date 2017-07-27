/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author EHS
 */
public class question_bean {
    String  questionID,questionTitle,questionCategory,questionDate,OwnerID, LikesCount,Deleted,Question_text,translated;

    public void setQuestion_text(String Question_text) {
        this.Question_text = Question_text;
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

    public String getQuestionDate() {
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

    public void setQuestionID(String questionID) {
        this.questionID = questionID;
    }

    public void setQuestionTitle(String questionTitle) {
        this.questionTitle = questionTitle;
    }

    public void setQuestionCategory(String questionCategory) {
        this.questionCategory = questionCategory;
    }

    public void setQuestionDate(String questionDate) {
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
