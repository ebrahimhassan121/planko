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
public class Likes {
    String LikeID,LikerID,questionID,Deleted;

    public String getLikeID() {
        return LikeID;
    }

    public void setLikeID(String LikeID) {
        this.LikeID = LikeID;
    }

    public String getLikerID() {
        return LikerID;
    }

    public void setLikerID(String LikerID) {
        this.LikerID = LikerID;
    }

    public String getQuestionID() {
        return questionID;
    }

    public void setQuestionID(String questionID) {
        this.questionID = questionID;
    }

    public String getDeleted() {
        return Deleted;
    }

    public void setDeleted(String Deleted) {
        this.Deleted = Deleted;
    }
    
}
