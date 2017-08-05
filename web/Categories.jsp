<%-- 
    Document   : Categories
    Created on : Jul 18, 2017, 5:42:10 PM
    Author     : AHMED 50070
--%>

<%@page import="java.util.Base64"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Categories"%>
<%@page import="Model.Categories_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <%@include file="init.jsp" %>
    </head>
    <body>
        <div class="wrapper">
            <div class="top-header">
                <div class="container">
                    <%@include file="Header_1.jsp" %>
                </div><!--End Container-->
            </div><!--End Top-Header-->
            <%@include file="top-header.jsp" %>
            <div class="main" role="main">
                <div class="page-head">
                    <div class="page-head-img">
                        <img src="<%=path%>images/categories/35.jpg" alt="...">
                    </div>
                    <div class="overlay">
                        <div class="container">
                            <div class="page-title">
                                <h3 class="title">
                                    الفئات
                                </h3>
                            </div><!--End Page-Title-->
                            <div class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="Home.jsp">
                                            <i class="fa fa-home"></i>
                                            الرئيسية
                                        </a>
                                    </li>
                                    <li class="active">
                                        <i class="fa fa-list"></i>
                                        الفئات
                                    </li>
                                </ol>
                            </div><!--End page-breadcrumb-->
                        </div><!--End Container-->
                    </div><!--End Overlay-->
                </div><!--End Page-Head-->
                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <% 
                                Categories_model categories_model=new Categories_model();
                                ArrayList<Categories> array_categories=categories_model.Select_ALL_Categories();
                                for(int i=0;i<array_categories.size();i++){
                                  String categoryID=array_categories.get(i).getCategoriesID();
                                  String categoryName=array_categories.get(i).getCategoryNam();
                                  String categoryPhoto=array_categories.get(i).getPhoto();
                                
                             %>
                               <div class="col-md-3">
                                <div class="widget-box">
                                    <div class="widget-img">
                                        <img src="<%=categoryPhoto%>" alt="<%=categoryName%>">
                                    </div><!--End widget-img-->
                                    <div class="widget-name">
                                        <h3 class="name"><%=categoryName%></h3>
                                    </div><!--End widget-name-->
                                    <div class="widget-hover">
                                        <ul class="widget-hover-links">
                                            <li>
                                                <a href="questions.jsp?categories=<%=categoryID%>" title="مشاهدة">
                                                    <i class="fa fa-link"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" title="متابعة">
                                                    <i class="fa fa-feed"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div><!--End Widget-hover-->
                                </div><!---End Widget-box-->
                            </div><!--END Col-md-3-->
                            
                            <% }%>


                        </div><!--End Row-->
                    </div><!--End Container-->
                </div><!--End page-content-->
                <%@include file="Footer.jsp" %>
            </div><!--Role Main-->
    </div><!--End Wrapper-->
</body>
</html>
