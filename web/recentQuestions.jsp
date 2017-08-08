<%-- 
    Document   : recentQuestions
    Created on : Aug 7, 2017, 11:55:32 AM
    Author     : EHS
--%>

<%@page import="Model.Questions_model"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Comments_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    Questions_model questions_model2=new Questions_model();
       ArrayList<HashMap> arrmostQuestions=questions_model2.SelectRecentQuestions(0,3);
       for(int i=0;i<arrmostQuestions.size();i++){
           HashMap recentquestions=arrmostQuestions.get(i);
           String link="question/"+recentquestions.get("id")+"/"+recentquestions.get("title").toString().replaceAll("\\s+", "-");
%>
    <li>
        <div class="side-article">
            <div class="side-article-img">
                <img src="<%=recentquestions.get("avatar")%>" style="width: 100%">
            </div>
            <div class="side-article-desc">
                <a href="<%=link%>" class="name"><%=recentquestions.get("title")%></a>
                <span class="date"><%=recentquestions.get("date")%></span>
            </div>
        </div><!--End Side-article-->
    </li>
    <%}%>