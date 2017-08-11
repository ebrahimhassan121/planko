<%-- 
    Document   : Home
    Created on : Jul 21, 2017, 2:59:19 PM
    Author     : AHMED 50070
--%>
<%@page import="Model.Users_model"%>
<%@page import="beans.user_bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="init.jsp" %>
    </head>
    <body>

        <div class="wrapper">
            <div id="top-header" > <%@include file="top-header.jsp" %> </div>
            <div class="main" role="main">
                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-md-push-3">
                                <div id="ask-area">
                                <%@include  file="ask.jsp" %>
                                </div>
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="all">
                                        <div id="all_QuestionContent">

                                        </div>
                                        <div>
                                            <a href="#" onclick="loadNowPlaying(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                            <br>
                                        </div>
                                        <div id="categ"><%@include file="CategorieCoursal.jsp" %></div>

                                    </div><!--End tab-panel-->
                                    <div role="tabpanel" class="tab-pane fade " id="solved">
                                        <div id="all_solved">

                                        </div>

                                        <div>
                                            <a href="" onclick="loadANSwerd(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                            <br>
                                        </div>
                                    </div><!--End tab-panel-->
                                    <div role="tabpanel" class="tab-pane fade " id="not-solved">
                                        <div id="not_solved">

                                        </div>

                                        <div>
                                            <a href="" onclick="loadNotANSwerd(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                            <br>
                                        </div>
                                    </div><!--End tab-panel-->
                                    <div role="tabpanel" class="tab-pane fade " id="translated">
                                        <div id="translated-div">

                                        </div>

                                        <div>
                                            <a href="" onclick="loadTranslated(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                            <br>
                                        </div>
                                    </div><!--End tab-panel-->
                                </div><!--End tab-content-->

                            </div><!--End Col-md-6-->

                            <div class="col-md-3 col-md-pull-6">
                                <div class="side-widget">
                                    <div class="side-widget-content">
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs side-tabs" role="tablist">
                                            <li role="presentation" id="all-link" class="active"><a href="#all" aria-controls="all" role="tab" data-toggle="tab">الكل</a></li>
                                            <li role="presentation" id="solved-link" ><a href="#solved" aria-controls="solved" role="tab" data-toggle="tab">أسئلة مجابة</a></li>
                                            <li role="presentation" id="not-solved-link"><a href="#not-solved" aria-controls="not-solved" role="tab" data-toggle="tab">غير مجابة</a></li>
                                            <li role="presentation" id="translated-link"><a href="#translated" aria-controls="translated" role="tab" data-toggle="tab"> مترجمة </a></li>
                                        </ul>
                                    </div><!--End Side-widget-content-->
                                </div><!--End Side-widget-->
                                <div class="side-widget">
                                    <div class="side-widget-title">
                                        <h2 class="title title-sm has-after">
                                            إحصائيات
                                        </h2>
                                    </div><!--End Side-widget-title-->
                                    <div class="side-widget-content">
                                        <div class="item-wrapper">
                                            <div class="item">
                                                <i class="fa fa-pencil-square-o"></i>
                                                <span class="num timer" data-to="235" data-speed="2500">0</span>
                                                <p>مقالة</p>
                                            </div>
                                            <div class="item">
                                                <i class="fa fa-question"></i>
                                                <span class="num timer" data-to="216" data-speed="2500">0</span>
                                                <p>سؤال</p>
                                            </div>
                                            <div class="item">
                                                <i class="fa fa-comments"></i>
                                                <span class="num timer" data-to="235" data-speed="2500">0</span>
                                                <p>متابعة</p>
                                            </div>
                                        </div>
                                    </div><!--End Side-widget-content-->
                                </div><!--End Side-widget-->
                                <div class="side-widget">
                                    <div class="side-widget-title">
                                        <h2 class="title title-sm has-after">
                                            تواصل معنا 
                                        </h2>
                                    </div><!--End Side-widget-title-->
                                    <div class="side-widget-content">
                                        <ul class="side-social">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-facebook"></i>
                                                    <p>
                                                        فيسبوك
                                                    </p>
                                                    <span class="num timer" data-to="542335" data-speed="2500">0</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-twitter"></i>
                                                    <p>
                                                        تويتر
                                                    </p>
                                                    <span class="num timer" data-to="452543" data-speed="2500">0</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-google-plus"></i>
                                                    <p>
                                                        جوجل بلس
                                                    </p>
                                                    <span class="num timer" data-to="22344" data-speed="2500">0</span>
                                                </a>
                                            </li>

                                        </ul><!--End Side-social-->
                                    </div><!--End Side-widget-content-->
                                </div><!--End Side-widget-->
                                <%@include file="ads.jsp" %>
                            </div><!--End Col-md-3-->
                            <%@include file="sidepar.jsp" %>
                        </div><!--End Row-->
                    </div><!--End Container-->
                </div><!--End page-content-->
                <%@include file="Footer.jsp" %>

            </div><!--End main-->
        </div><!--End Wrapper-->
    </body>

    <script>
        $(document).ready(function () {
            $("#all_QuestionContent").append($('<div id="question0_3"></div>').hide());
            $('#question0_3').load('all-questions.jsp?selection=ALL&&f=0&&t=3');
            $('#question0_3').show();
            //////////////////////////////////
            $("#all_solved").append($('<div id="solved0_3"></div>').hide());
            $('#solved0_3').load('all-questions.jsp?selection=Answerd&&f=0&&t=3');
            $('#solved0_3').show();
            /////////////////////////////
            $("#not_solved").append($('<div id="not-solved0_3"></div>').hide());
            $('#not-solved0_3').load('all-questions.jsp?selection=NotAnswerd&&f=0&&t=3');
            $('#not-solved0_3').show();
            ///////////////////////////////////////////////////////
            $("#translated-div").append($('<div id="translated0_3"></div>').hide());
            $('#translated0_3').load('all-questions.jsp?selection=translated&&f=0&&t=3');
            $('#translated0_3').show();
        });
        var qf = 0;
        var qt = 3;
          function loadNowPlaying(e) {
            qf = qf + 3;
            // qt=qt+3;
            var idQ = qf + '_' + qt;
            var Url = 'all-questions.jsp?selection=ALL&&f=' + qf + '&&t=' + qt + '';
            console.log(idQ + "," + Url);
            e.preventDefault();
            if ($('#all-link').hasClass('active')) {
                $("#all_QuestionContent").append($('<div id="question' + idQ + '"></div>').hide());
                $('#question' + qf + '_' + qt + '').load(Url);
                $('#question' + qf + '_' + qt + '').show(500);
            }
        }

        var qfAnswerd = 0;
        var qtAnswerd = 3;
      
        function loadANSwerd(e) {
            qfAnswerd = qfAnswerd + 3;
            // qt=qt+3;
            var solvedidQ = qfAnswerd + '_' + qtAnswerd;
            var Url = 'all-questions.jsp?selection=Answerd&&f=' + qfAnswerd + '&&t=' + qtAnswerd + '';
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
            var Url = 'all-questions.jsp?selection=NotAnswerd&&f=' + qfNotAnswerd + '&&t=' + 3 + '';
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
            var Url = 'all-questions.jsp?selection=translated&&f=' + qftrnaslated + '&&t=' + qtAnswerd + '';
            console.log(translatedidQ + "," + Url);
            if ($('#translated-link').hasClass('active')) {
                $("#translated-div").append($('<div id="translated' + translatedidQ + '"></div>').hide());
                $('#translated' + translatedidQ).load(Url);
                $('#translated' + translatedidQ).show(500);
            }
        }

    </script>
</html>
