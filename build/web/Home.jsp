<%-- 
    Document   : Home
    Created on : Jul 21, 2017, 2:59:19 PM
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
            <%
                String email = "";
                String password = "";
                if (session.getAttribute("email") != null && session.getAttribute("password") != null) {
                    System.out.println("dddd");
                    email = session.getAttribute("email").toString();
                    password = session.getAttribute("password").toString();
            %>
            <%@include file="Header_2.jsp" %>
            <% } else {%>
            <%@include file="Header_0.jsp" %>
            <% }%>
            <div class="main" role="main">
                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-md-push-3">

                                <div class="ask-box">
                                    <div class="ask-box-head">
                                        <div class="account">
                                            <div class="account-img">
                                                <img src="./assets/site/images/avatars/team1.jpg" alt="account image">
                                            </div>
                                            <div class="account-name">
                                                <a href="my-account.html">
                                                    <h5>محمود إسماعيل</h5>
                                                </a>
                                            </div>
                                        </div>
                                    </div><!--End Ask-box-head-->
                                    <div class="ask-box-body">
                                        <a href="" class="" data-toggle="modal" data-target="#ask">
                                            اسأل ما تريد
                                        </a>
                                    </div><!--End Ask-box-body-->
                                </div><!--End Ask-box-->


                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade in active" id="solved">
                                        <%@include file="Solved_Questions.jsp" %>
                                        <%@include file="CategorieCoursal.jsp" %>
                                    </div><!--End tab-panel-->
                                    <div role="tabpanel" class="tab-pane fade " id="not-solved">
                                        <%@include file="NotSolved_Question.jsp" %>
                                    </div><!--End tab-panel-->
                                    <div role="tabpanel" class="tab-pane fade " id="translated">
                                        <%@include file="Translated_Questions.jsp" %>
                                    </div><!--End tab-panel-->
                                </div><!--End tab-content-->

                            </div><!--End Col-md-6-->

                            <div class="col-md-3 col-md-pull-6">
                                <div class="side-widget">
                                    <div class="side-widget-content">
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs side-tabs" role="tablist">
                                            <li role="presentation" class="active"><a href="#solved" aria-controls="solved" role="tab" data-toggle="tab">أسئلة مجابة</a></li>
                                            <li role="presentation"><a href="#not-solved" aria-controls="not-solved" role="tab" data-toggle="tab">غير مجابة</a></li>
                                            <li role="presentation"><a href="#translated" aria-controls="translated" role="tab" data-toggle="tab"> مترجمة </a></li>
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
                <div class="modal fade ask" id="ask" tabindex="-1" role="dialog" aria-labelledby="ask">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <form class="form" method="" action="">
                                <div class="modal-body">
                                    <div class="account">
                                        <div class="account-img">
                                            <img src="./assets/site/images/avatars/team1.jpg" alt="account image">
                                        </div>
                                        <div class="account-name">
                                            <a href="my-account.html">
                                                <h5>محمود إسماعيل</h5>
                                            </a>
                                        </div>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    </div>
                                    <div class="form-group">
                                        <textarea class="form-control"></textarea>
                                    </div><!--End Form-group-->
                                </div><!--End modal-body-->
                                <div class="modal-footer">
                                    <button type="submit" class="custom-btn pull-right"> اسأل سؤال</button>
                                </div>
                            </form><!--End Form-->
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->

            </div><!--End main-->
        </div><!--End Wrapper-->
    </body>
</html>
