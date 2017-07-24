<%-- 
    Document   : questions
    Created on : Jul 21, 2017, 3:14:03 PM
    Author     : AHMED 50070
--%>

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
            <%@include file="Header_2.jsp" %>
            <div class="main" role="main">

                <div class="page-head">
                    <div class="page-head-img">
                        <img src="./assets/site/images/categories/34.jpg" alt="...">
                    </div>
                    <div class="overlay">
                        <div class="container">
                            <div class="page-title">
                                <h3 class="title">
                                    الأسئلة
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
                                        <i class="fa fa-question"></i>
                                        الأسئلة
                                    </li>
                                </ol>
                            </div><!--End page-breadcrumb-->
                        </div><!--End Container-->
                    </div><!--End Overlay-->
                </div>
                <!--End Page-Head-->


                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9">                                                                    
                                <div class="tabs">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#questions" aria-controls="questions" role="tab" data-toggle="tab">أسئلة متنوعة</a></li>
                                        <li role="presentation"><a href="#not-solved" aria-controls="not-solved" role="tab" data-toggle="tab">غير مجابة</a></li>
                                        <li role="presentation"><a href="#translated-questions" aria-controls="solved-quetions" role="tab" data-toggle="tab">أسئلة مترجمة</a></li>
                                        <li role="presentation"><a href="#add-question" aria-controls="add-question" role="tab" data-toggle="tab">أضف سؤال</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="questions">
                                            <%@include file="Solved_Questions.jsp" %>
                                            <%@include file="Pagination.jsp" %>
                                        </div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="not-solved">
                                            <%@include file="NotSolved_Question.jsp" %>
                                            <%@include file="Pagination.jsp" %>
                                        </div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="translated-questions">
                                            <%@include file="Translated_Questions.jsp" %>
                                            <%@include file="Pagination.jsp" %>
                                        </div>
                                        <!--End tabpanel-->

                                        <div role="tabpanel" class="tab-pane fade" id="add-question">
                                            <%@include file="add_Question.jsp" %>
                                        </div><!--End tabpanel-->
                                    </div>
                                </div><!--End Tabs-->
                            </div><!--End Col-md-6-->
                            <%@include file="sidepar.jsp" %>
                        </div><!--End Row-->
                    </div><!--End Container-->
                </div>
                <!--End page-content-->



                <%@include file="Footer.jsp" %>
            </div><!--Role Main-->
        </div><!--End Wrapper-->
    </body>
</html>
