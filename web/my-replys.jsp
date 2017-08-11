<%-- 
    Document   : my-replys
    Created on : Aug 10, 2017, 11:40:47 PM
    Author     : EHS
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Comments_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String from=request.getParameter("f").toString();
    String to=request.getParameter("t").toString();
    if(session.getAttribute("ID")==null)response.sendRedirect("Home.jsp");
    Comments_model my_commetns=new Comments_model();
    String userID=session.getAttribute("ID").toString();
    ArrayList<HashMap> arr=my_commetns.SelectmyReplys(Integer.parseInt(from),Integer.parseInt(to), userID);
    for(int i=0;i<arr.size();i++){
%>
<div class="answer">
    <div class="answer-content">
        <div class="question-head">
            <a class="question-name title title-md" href="question/<%=arr.get(i).get("id")%>/<%=arr.get(i).get("title").toString().replaceAll("\\s+", "-")%>">
                <%=arr.get(i).get("title")%>
            </a>
        </div>
        <div class="comment-content">
            <div class="content-info">
                <div class="content-time">
                    <span>
                        <%=arr.get(i).get("date")%>
                    </span>
                </div>
                    <br />
            </div><!--End Content-info-->
            <div class="content-body ">
                <p style="font-size: 1.2em;">
                    <%=arr.get(i).get("comment")%>
                </p>
            </div><!--End Contwnt-body-->
        </div>
    </div><!--End Answer-content--> 
</div><!--End answer-->
<br><br>
<% }%>