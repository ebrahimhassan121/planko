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
public class Comment {
    String  CommentID,Comment,questionID,CommenterID,CommenDate,Deleted;

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

    public String getCommenDate() {
        return CommenDate;
    }

    public void setCommenDate(String CommenDate) {
        this.CommenDate = CommenDate;
    }

    public String getDeleted() {
        return Deleted;
    }

    public void setDeleted(String Deleted) {
        this.Deleted = Deleted;
    }
    
}
