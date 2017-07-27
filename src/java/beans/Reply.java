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
public class Reply {
    String ReplyID,Reply,CommentID,ReplyerID,ReplyDate,Deleted;

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

    public String getReplyDate() {
        return ReplyDate;
    }

    public void setReplyDate(String ReplyDate) {
        this.ReplyDate = ReplyDate;
    }

    public String getDeleted() {
        return Deleted;
    }

    public void setDeleted(String Deleted) {
        this.Deleted = Deleted;
    }
}
