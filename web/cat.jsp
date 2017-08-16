<%-- 
    Document   : cat
    Created on : Aug 3, 2017, 6:24:48 AM
    Author     : EHS
--%>
<%@page import="Model.Users_model"%>
<%@page import="beans.user_bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
    try{
       request.setCharacterEncoding("UTF-8");
       String url=request.getRequestURI();
       String URLCatName="عام";
        if (url.contains(".jsp")) {
                response.sendRedirect("Home.jsp");
                return;
            } else if (url.contains("/cat/")) {
                String getcat=url.split("/")[3].trim();
                URLCatName =(getcat.equals(""))?URLCatName:getcat ;
                
            }else{
                response.sendRedirect("Home.jsp");
                return;

            }

%>
<html>
    <head>
         <base href="/planko/" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="init.jsp" %>
    </head>
    <body>

        <div class="wrapper">
            <div id="top-header" >  <%@include file="top-header.jsp" %></div>
            <div class="main" role="main">

                <div class="page-head">
                    <div class="page-head-img">
                        <img src="./assets/site/images/categories/34.jpg" alt="...">
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
                                        <i class="fa fa-question"></i>
                                        الفئات
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
                                        <li role="presentation" id="all-link" class="active"><a href="#questions" aria-controls="questions" role="tab" data-toggle="tab">أسئلة متنوعة</a></li>
                                        <li role="presentation" id="not-solved-link"><a href="#not-solved" aria-controls="not-solved" role="tab" data-toggle="tab">غير مجابة</a></li>
                                        <li role="presentation" id="translated-link"><a href="#translated-questions" aria-controls="solved-quetions" role="tab" data-toggle="tab">أسئلة مترجمة</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="questions">
                                            <div id="all_QuestionContent">

                                            </div>
                                            <div>
                                                <a href="#" onclick="loadNowPlaying(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                                <br>
                                            </div>
                                        </div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="not-solved">
                                            <div id="not_solved">

                                            </div>

                                            <div>
                                                <a href="" onclick="loadNotANSwerd(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                                <br>
                                            </div>
                                        </div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="translated-questions">
                                            <div id="translated-div">

                                            </div>

                                            <div>
                                                <a href="" onclick="loadTranslated(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                                <br>
                                            </div>
                                        </div>
                                        <!--End tabpanel-->

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
    <script>
        $(document).ready(function () {
            $("#all_QuestionContent").append($('<div id="question0_3"></div>').hide());
            $('#question0_3').load('Cat-Questions.jsp?catName=<%=URLCatName%>&&selection=ALL&&f=0&&t=3');
            $('#question0_3').show();
            //////////////////////////////////
            $("#all_solved").append($('<div id="solved0_3"></div>').hide());
            $('#solved0_3').load('Cat-Questions.jsp?catName=<%=URLCatName%>&&selection=Answerd&&f=0&&t=3');
            $('#solved0_3').show();
            /////////////////////////////
            $("#not_solved").append($('<div id="not-solved0_3"></div>').hide());
            $('#not-solved0_3').load('Cat-Questions.jsp?catName=<%=URLCatName%>&&selection=NotAnswerd&&f=0&&t=3');
            $('#not-solved0_3').show();
            ///////////////////////////////////////////////////////
            $("#translated-div").append($('<div id="translated0_3"></div>').hide());
            $('#translated0_3').load('Cat-Questions.jsp?catName=<%=URLCatName%>&&selection=translated&&f=0&&t=3');
            $('#translated0_3').show();
        });
        var qf = 0;
        var qt = 3;
        var qfAnswerd = 0;
        var qtAnswerd = 3;
        function loadNowPlaying(e) {
            qf = qf + 3;
            // qt=qt+3;
            var idQ = qf + '_' + qt;
            var Url = 'Cat-Questions.jsp?catName=<%=URLCatName%>&&selection=ALL&&f=' + qf + '&&t=' + qt + '';
            console.log(idQ + "," + Url);
            e.preventDefault();
            if ($('#all-link').hasClass('active')) {
                $("#all_QuestionContent").append($('<div id="question' + idQ + '"></div>').hide());
                $('#question' + qf + '_' + qt + '').load(Url);
                $('#question' + qf + '_' + qt + '').show(500);
            }
        }

        function loadANSwerd(e) {
            qfAnswerd = qfAnswerd + 3;
            // qt=qt+3;
            var solvedidQ = qfAnswerd + '_' + qtAnswerd;
            var Url = 'Cat-Questions.jsp?catName=<%=URLCatName%>&&selection=Answerd&&f=' + qfAnswerd + '&&t=' + qtAnswerd + '';
            console.log(solvedidQ + "," + Url);
            e.preventDefault();
            if ($('#solved-link').hasClass('active')) {
                $("#all_solved").append($('<div id="solved' + solvedidQ + '"></div>').hide());
                $('#solved' + solvedidQ).load(Url);
                $('#solved' + solvedidQ).show(500);
            }
        }
        var qfNotAnswerd = 0;
        function loadNotANSwerd(e) {
            e.preventDefault();
            qfNotAnswerd = qfNotAnswerd + 3;
            var notsolvedidQ = qfNotAnswerd + '_' + qtAnswerd;
            var Url = 'Cat-Questions.jsp?catName=<%=URLCatName%>&&selection=NotAnswerd&&f=' + qfNotAnswerd + '&&t=' + 3 + '';
            console.log(notsolvedidQ + "," + Url);
            if ($('#not-solved-link').hasClass('active')) {
                $("#not_solved").append($('<div id="not-solved' + notsolvedidQ + '"></div>').hide());
                $('#not-solved' + notsolvedidQ).load(Url);
                $('#not-solved' + notsolvedidQ).show(500);
            }
        }
        var qftrnaslated = 0;
        function loadTranslated(e) {
            e.preventDefault();
            qftrnaslated = qftrnaslated + 3;
            var translatedidQ = qftrnaslated + '_' + qtAnswerd;
            var Url = 'Cat-Questions.jsp?catName=<%=URLCatName%>&&selection=translated&&f=' + qftrnaslated + '&&t=' + qtAnswerd + '';
            console.log(translatedidQ + "," + Url);
            if ($('#translated-link').hasClass('active')) {
                $("#translated-div").append($('<div id="translated' + translatedidQ + '"></div>').hide());
                $('#translated' + translatedidQ).load(Url);
                $('#translated' + translatedidQ).show(500);
            }
        }

    </script>
</html>

<%}
catch(Exception ex){
response.sendRedirect("../Home.jsp");

}%>