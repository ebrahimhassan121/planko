/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import beans.Categories;
import beans.question_bean;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author EHS
 */
public class Questions_model {

    Connection connect = null;
    ResultSet rs = null;
    String query;
    Categories categories = null;

    public Questions_model() {
        try {
            CheckDatabase cd = new CheckDatabase();
            connect = cd.check();
        } catch (SQLException ex) {
            Logger.getLogger(Categories_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean insertQuestion(question_bean question) {
        try {

            query = "INSERT INTO `questions`( `questionTitle`, `questionCategory`, `questionDate`, `OwnerID`, `Deleted`) VALUES (?,?,?,?,?)";
            PreparedStatement ps = connect.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, question.getQuestionTitle());
            ps.setString(2, question.getQuestionCategory());
            ps.setTimestamp(3, question.getQuestionDate());
            ps.setInt(4, Integer.parseInt(question.getOwnerID()));
            ps.setInt(5, Integer.parseInt(question.getDeleted()));
            int insertionCheck = ps.executeUpdate();
            if (insertionCheck > 0) {
                rs = ps.getGeneratedKeys();
                rs.next();
                question.setQuestionID(rs.getInt(1) + "");
                query = "INSERT INTO `questiondatails`( `questionID`, `questionsText`, `questionImage`, `translated`) VALUES (?,?,?,?)";
                ps = connect.prepareStatement(query);
                ps.setInt(1, Integer.parseInt(question.getQuestionID()));
                ps.setString(2, question.getQuestion_text());
                ps.setString(3, question.getQuestion_image());
                ps.setInt(4, Integer.parseInt(question.getTranslated()));
                insertionCheck = ps.executeUpdate();
                closeConnection();
                return (insertionCheck > 0);
            }
        } catch (Exception ex) {
            closeConnection();
            ex.printStackTrace();
        }
        return false;
    }

    public ArrayList selectQuestions(String ALL_Answerd_NotAnswerd_Answerd_translated,String from, String to) {
        try {
            switch (ALL_Answerd_NotAnswerd_Answerd_translated) {
                case "ALL":
                    query = "SELECT *  ,(SELECT COUNT(*) FROM likes WHERE questions.questionID=likes.questionID AND likes.Deleted=0)as likescount ,(SELECT COUNT(*) FROM comments WHERE questions.questionID=comments.questionID and comments.deleted=0) AS commentscount FROM `questiondatails` JOIN `questions` ON questiondatails.questionID=questions.questionID AND questions.Deleted=0 INNER JOIN categories ON categories.categoriesID=questions.questionCategory ORDER BY `questions`.`questionDate` DESC Limit "+from+","+to;
                    break;
                case "Answerd":
                    query = "SELECT DISTINCT * , (SELECT COUNT(*) FROM likes WHERE questions.questionID=likes.questionID AND likes.Deleted=0)as likescount ,(SELECT COUNT(*) FROM comments WHERE questions.questionID=comments.questionID) AS commentscount FROM `questiondatails` JOIN `questions` ON questiondatails.questionID=questions.questionID AND questions.Deleted=0 INNER JOIN categories ON categories.categoriesID=questions.questionCategory WHERE questions.questionID IN (SELECT comments.questionID FROM comments) ORDER BY `questions`.`questionDate` DESC Limit "+from+","+to;
                    break;
                case "NotAnswerd":
                    query = "SELECT * ,(SELECT COUNT(*) FROM likes WHERE questions.questionID=likes.questionID AND likes.Deleted=0)as likescount ,(SELECT COUNT(*) FROM comments WHERE questions.questionID=comments.questionID and comments.deleted=0 AND comments.questionID IN (SELECT questiondatails.questionID FROM questiondatails WHERE 1)) AS commentscount FROM `questiondatails` JOIN `questions` ON questiondatails.questionID=questions.questionID AND questions.Deleted=0 INNER JOIN categories ON categories.categoriesID=questions.questionCategory ORDER BY `questions`.`questionDate` DESC limit "+from+","+to;
                    break;
                case "translated":
                    query = "SELECT *  ,(SELECT COUNT(*) FROM likes WHERE questions.questionID=likes.questionID AND likes.Deleted=0)as likescount , (SELECT COUNT(*) FROM comments WHERE questions.questionID=comments.questionID) AS commentscount FROM `questiondatails` JOIN `questions` ON questiondatails.questionID=questions.questionID AND questions.Deleted=0 AND questiondatails.translated=1 INNER JOIN categories ON categories.categoriesID=questions.questionCategory ORDER BY `questions`.`questionDate` DESC limit "+from+","+to;
                    break;
                default:
                    break;
            }
            Statement statement = connect.createStatement();
            rs = statement.executeQuery(query);
            ArrayList<question_bean> arrQuestion = new ArrayList<>();
            //`questionID`, `questionTitle`, `questionCategory`, `questionDate`,
            //`OwnerID`, `Deleted` `questionID`, `questionsText`, `questionImage`, `translated`
            while (rs.next()) {
                question_bean question = new question_bean();
                question.setQuestionID(rs.getInt("questionID") + "");
                question.setQuestionTitle(rs.getString("questionTitle"));
                question.setQuestionCategory(rs.getString("categoryName"));
                question.setQuestionDate(rs.getTimestamp("questionDate"));
                System.out.println(question.getQuestionDate());
                question.setOwnerID(rs.getInt("OwnerID") + "");
                question.setQuestion_text(rs.getString("questionsText"));
                question.setTranslated(rs.getInt("translated") + "");
                question.setCommentsCount(rs.getInt("commentscount") + "");
                question.setLikesCount(rs.getInt("likescount") + "");
                Blob questionImage = rs.getBlob("questionImage");
                if (questionImage != null) {
                    question.setQuestion_image(questionImage.getBytes(1, (int) questionImage.length()));
                }
                arrQuestion.add(question);
            }
            closeConnection();
            return arrQuestion;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            closeConnection();
        }
        closeConnection();
        return null;
    }

    public question_bean selectQuestionsByID(String id) {
        try {
            query = "SELECT *  ,(SELECT COUNT(*) FROM likes WHERE questions.questionID=likes.questionID and deleted=0)as likescount ,(SELECT COUNT(*) FROM comments WHERE questions.questionID=comments.questionID) AS commentscount FROM `questiondatails` JOIN `questions` ON questiondatails.questionID=questions.questionID AND questions.Deleted=0 INNER JOIN categories ON categories.categoriesID=questions.questionCategory  WHERE questiondatails.questionID ='" + Integer.parseInt(id) + "'  ORDER BY `questions`.`questionDate` DESC";
            System.out.println(query);
        //    query = "SELECT *  ,(SELECT COUNT(*) FROM likes WHERE questions.questionID=likes.questionID)as likescount ,(SELECT COUNT(*) FROM comments WHERE questions.questionID=comments.questionID) AS commentscount FROM `questiondatails` JOIN `questions` ON questiondatails.questionID=questions.questionID AND questions.Deleted=0 INNER JOIN categories ON categories.categoriesID=questions.questionCategory WHERE questiondatails.questionID =+" + Integer.parseInt(id) + " ORDER BY `questions`.`questionDate` DESC";

            PreparedStatement statement = connect.prepareStatement(query);
            rs = statement.executeQuery();
            //`questionID`, `questionTitle`, `questionCategory`, `questionDate`,
            //`OwnerID`, `Deleted` `questionID`, `questionsText`, `questionImage`, `translated`
            question_bean question = new question_bean();

            while (rs.next()) {
                question.setQuestionID(rs.getInt("questionID") + "");
                question.setQuestionTitle(rs.getString("questionTitle"));
                question.setQuestionCategory(rs.getString("categoryName"));
                question.setQuestionDate(rs.getTimestamp("questionDate"));
                System.out.println(question.getQuestionDate());
                question.setOwnerID(rs.getInt("OwnerID") + "");
                System.out.println(question.getOwnerID());
                question.setQuestion_text(rs.getString("questionsText"));
                question.setTranslated(rs.getInt("translated") + "");
                question.setCommentsCount(rs.getInt("commentscount") + "");
                question.setLikesCount(rs.getInt("likescount") + "");
                Blob questionImage = rs.getBlob("questionImage");
                if (questionImage != null) {
                    question.setQuestion_image(questionImage.getBytes(1, (int) questionImage.length()));
                }
            }
            closeConnection();
            return question;
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
            closeConnection();
        }
        closeConnection();
        return null;
    }
//    public static void main(String[] args) {
//        Questions_model q=new Questions_model();
//        question_bean question=q.selectQuestionsByID(0+"");
//        System.out.println(question.getQuestionTitle());
//    }
    private void closeConnection() {
        try {
            rs.close();
            connect.close();
        } catch (SQLException ex) {
            Logger.getLogger(Questions_model.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
