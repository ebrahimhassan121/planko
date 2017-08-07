<%-- 
    Document   : recentAnswers
    Created on : Aug 7, 2017, 2:31:49 AM
    Author     : EHS
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="Model.Comments_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <div class="side-widget">
            <div class="side-widget-title">
                <h2 class="title title-sm has-after">
                    أحدث الإجابات
                </h2>
            </div><!--End Side-widget-title-->
            <div class="side-widget-content side-carousel">
                <div class="carousel-1"> 
                    <div class="item">
                        <% 
       Comments_model comments_model=new Comments_model();
       ArrayList<HashMap> arrRecentAnswerd=comments_model.SelectRecentAnswed(3,3);
       for(int i=0;i<arrRecentAnswerd.size();i++){
           HashMap recentAnswerd=arrRecentAnswerd.get(i);
                        %>
                        <div class="answer">
                            <div class="answer-img">
                                <img src="<%=recentAnswerd.get("avatar")%>" alt="user">
                            </div><!--End Answer-img-->
                            <div class="answer-content">
                                <a href="question/<%=recentAnswerd.get("id")%>/<%=recentAnswerd.get("title").toString().trim().replaceAll("\\s+", "-")%>">
                                    <%=recentAnswerd.get("title")%>
                                </a>
                                <p>
                                    <%
                                       String comment=recentAnswerd.get("comment").toString();
                                       if(comment.length()>150){
                                          comment=comment.subSequence(0, 200).toString()+ ".....";
                                       }
                                    %>
                                    <%=comment%>
                                </p>
                            </div><!--End Answer-content--> 
                        </div><!--End answer-->
                        <% }%>
                    </div><!--End Item-->
                     <div class="item">
                        <% 
       Comments_model comments_model1=new Comments_model();
       ArrayList<HashMap> arrRecentAnswerd1=comments_model1.SelectRecentAnswed(0,3);
       for(int i=0;i<arrRecentAnswerd1.size();i++){
           HashMap recentAnswerd1=arrRecentAnswerd1.get(i);
                        %>
                        <div class="answer">
                            <div class="answer-img">
                                <img src="<%=recentAnswerd1.get("avatar")%>" alt="user">
                            </div><!--End Answer-img-->
                            <div class="answer-content">
                                <a href="question/<%=recentAnswerd1.get("id")%>/<%=recentAnswerd1.get("title").toString().trim().replaceAll("\\s+", "-")%>">
                                    <%=recentAnswerd1.get("title")%>
                                </a>
                                <p>
                                    <%
                                       String comment=recentAnswerd1.get("comment").toString();
                                       if(comment.length()>150){
                                          comment=comment.subSequence(0, 200).toString()+ ".....";
                                       }
                                    %>
                                    <%=comment%>
                                  
                                </p>
                            </div><!--End Answer-content--> 
                        </div><!--End answer-->
                        <% }%>
                    </div><!--End Item-->
                    
                </div><!--End Carousel-->
            </div><!--End Side-widget-content-->
        </div><!--End Side Widget-->
    </body>
</html>
