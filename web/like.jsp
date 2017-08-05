<%-- 
    Document   : like
    Created on : Aug 5, 2017, 11:57:21 AM
    Author     : EHS
--%>

<%@page import="Model.Like_model"%>
<%@page import="beans.question_bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <div>
            <% question_bean question=new question_bean();
               question.setCommentsCount(request.getParameter("Comentcount"));
               question.setLikesCount(request.getParameter("Likecount"));
               question.setQuestionID(request.getParameter("questionID"));
               question.setQuestionCategory(request.getParameter("category"));
            %>
            <% if (Integer.parseInt(question.getCommentsCount()) <= 0) {%>
            <div class="foot-info wait">
                <i class="fa fa-clock-o"></i>
                بإنتظار الحل
            </div>
            <%} else {%>
            <div class="foot-info solved">
                <i class="fa fa-check"></i>
                تم الحل
            </div>
            <% }%>
            <div class="foot-info">
                <a href="#" class="info">
                    <i class="fa fa-align-center"></i>
                    <%=question.getQuestionCategory()%>
                </a>
            </div>
            <div class="foot-info">
                <span class="info">
                    <i class="fa fa-comments"></i>
                    <%=question.getCommentsCount()%> تعليق
                </span>
            </div>
            <div class="foot-info">
                <%
                    String colorLike = "";
                    Model.Like_model like_model = new Like_model();
                    String UserID = (session.getAttribute("ID") != null) ? session.getAttribute("ID").toString() : "";
                    if (like_model.select_LikeByQuestionIDANDUSERID(question.getQuestionID(), UserID)) {
                        colorLike = "#00008B";
                    }
                %>
                <button class="vote" onclick="addLIke()" style="color:<%=colorLike%>">
                    <i class="fa fa-thumbs-o-up"></i>
                    <%=question.getLikesCount()%>
                </button>
            </div>
        </div>
 