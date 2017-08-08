<%-- 
    Document   : like
    Created on : Aug 5, 2017, 11:57:21 AM
    Author     : EHS
--%>

<%@page import="beans.Likes"%>
<%@page import="Model.Like_model"%>
<%@page import="beans.question_bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    String questionID = (request.getParameter("QID") != null) ? request.getParameter("QID").toString() : "";
    String selection=(request.getParameter("selection") != null) ? request.getParameter("selection").toString() : "";
 
    if(questionID.equals(""))response.sendRedirect("Home.jsp");
    Likes like_bean = new Likes();
    Like_model like_model = new Like_model();
    like_bean.setQuestionID(questionID);
    int likes_count = like_model.select_LikeByQuestionID(questionID);
    String UserID = (session.getAttribute("ID")!= null) ? session.getAttribute("ID").toString() : "";
    String colorLike="";
    if (like_model.select_LikeByQuestionIDANDUSERID(questionID, UserID)) {
        colorLike = "color:#00008B;";
    }
%>
<button class="vote" onclick="addLIke<%=selection+questionID%>()" style="<%=colorLike%>">
    <i class="fa fa-thumbs-o-up"></i><%=likes_count%>
    صوت
</button>
