<%-- 
    Document   : top-header
    Created on : Aug 2, 2017, 8:31:50 PM
    Author     : EHS
--%>

<%@page import="Model.Users_model"%>
<%@page import="beans.user_bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
              <div class="top-header">
            <div class="container">
                <%@include file="Header_1.jsp" %>
            </div><!--End Container-->
        </div><!--End Top-Header-->
        <%
            String email = "";
            String password = "";
            user_bean user = null;
            if (session.getAttribute("email") != null && session.getAttribute("password") != null) {
                email = session.getAttribute("email").toString();
                password = session.getAttribute("password").toString();
                user = (new Users_model()).select_user(email, password);
                if (user != null) {
        %>
        <jsp:include page="Header_2.jsp">
            <jsp:param name="userID" value="<%=user.getUserID()%>" />
        </jsp:include>
        <%@include file="Header_2.jsp" %>
        <% }
            } else {%>
        <%@include file="Header_0.jsp" %>
        <% }%>
    </body>
</html>
