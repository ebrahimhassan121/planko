<%-- 
    Document   : only-question
    Created on : Jul 21, 2017, 3:13:45 PM
    Author     : AHMED 50070
--%>

<%@page import="Model.Like_model"%>
<%@page import="Model.Favourite_model"%>
<%@page import="Model.Reply_model"%>
<%@page import="beans.Reply"%>
<%@page import="beans.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Comments_model"%>
<%@page import="beans.question_bean"%>
<%@page import="Model.Questions_model"%>
<%@page import="java.net.URI"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <head>
         <base href="/planko/" />
         <%@include file="init.jsp" %>
        <%
            String url = request.getRequestURI();
            String URLquestionName = "";
            Questions_model questions_model = new Questions_model();
            Users_model users_model = new Users_model();
            question_bean question = null;
            user_bean owner = null;
            ArrayList<beans.Comment> arrComments = null;
            if (url.contains(".jsp")) {
                response.sendRedirect("Home.jsp");
                return;
            } else if (url.contains("/question/")) {
                URLquestionName = url.split("/")[3].toLowerCase();
                System.out.println(URLquestionName);
                question = questions_model.selectQuestionsByID(URLquestionName);
                owner = users_model.Select_userByID(question.getOwnerID());
                Model.Comments_model comments_model = new Comments_model();
                arrComments = comments_model.selectCommentsBYQuetionID(question.getQuestionID());
            } else {
                response.sendRedirect("Home.jsp");
                return;

            }
            session.setAttribute("url", request.getRequestURL());
        %>
        <meta charset="UTF-8" />
        <meta name="fb:app_id" content="1007698446038457" />
        <meta name="og:title" charset="UTF-8" content="<%=question.getQuestionTitle().toString()%>" />
        <meta name="og:type"  content="article" />
        <meta name="og:description" charset="UTF-8" content="<%=question.getQuestion_text()%>" />
       
        <title><%=question.getQuestionTitle()%></title>
        <meta name="type" content="article"/>
        <meta property="og:title"  content="<%=question.getQuestionTitle().toString()%>/" />
        <meta property="fb:app_id" content="1007698446038457">
        <meta property="og:type" charset="UTF-8" content="article" />
        <meta property="og:description" content="<%=question.getQuestion_text()%>" />
        <meta property="og:type"  content="article" />
        <meta property="og:url" charset="UTF-8" content="<%=request.getRequestURL().toString()%>/" />
        <meta property="og:title" charset="UTF-8" content="<%=question.getQuestionTitle().toString()%>" />
        <meta property="og:description" charset="UTF-8" content="<%=question.getQuestion_text()%>" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    <body>
        <div class="wrapper">
            <div class="top-header">
                <div class="container">
                    <%@include file="Header_1.jsp" %>
                </div><!--End Container-->
            </div><!--End Top-Header-->
            <div id="top-header">
                <%@include file="top-header.jsp" %>
            </div>

            <div class="main" role="main">
                <div class="page-head">
                    <div class="page-head-img">
                        <img src="./assets/site/images/blog/blog-page-head-1.jpg" alt="...">
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
                                    <li>
                                        <a href="Home.jsp">
                                            <i class="fa fa-pencil-square-o"></i>
                                            الأسئلة
                                        </a>
                                    </li>
                                    <li class="active">
                                        <i class="fa "></i>
                                        <%=question.getQuestionTitle()%>
                                    </li>
                                </ol>
                            </div><!--End page-breadcrumb-->
                        </div><!--End Container-->
                    </div><!--End Overlay-->
                </div><!--End Page-Head-->
                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9">
                                <div class="center-colume-lg-right">
                                    <div class="question only-question">
                                        <div class="question-head">
                                            <a class="question-name title title-md" href="question/<%=question.getQuestionID()%>/<%=question.getQuestionTitle().replaceAll("\\s+", "-")%>">
                                                <%=question.getQuestionTitle()%>
                                            </a>
                                            <div class="question-author">
                                                <div class="question-author-img">
                                                    <img src="<%=owner.getAvatar()%>" />
                                                </div>
                                                <div class="question-author-cont">
                                                    <h4 class="author-name">
                                                        <%=owner.getName()%>
                                                    </h4>
                                                    <span class="time">
                                                        <%=question.getDateInArabic()%>
                                                    </span>
                                                    <span class="type ask">
                                                        <i class="fa fa-question"></i>
                                                        سؤال
                                                    </span>
                                                    <span class="type survay">
                                                        <i class="fa fa-bar-chart"></i>
                                                        استطلاع رأى
                                                    </span>
                                                </div><!--End question-author-cont-->
                                            </div><!--End question-author-->
                                        </div><!--End question-head-->
                                        <div class="question-content">
                                            <div>
                                                <p class="custom-p">
                                                    <%=question.getQuestion_text()%>
                                                </p>
                                                <% if (question.getQuestion_image() != null) {%>
                                                <img src="<%=question.getQuestion_image()%>">
                                                <%}%>
                                            </div>
                                            <div>
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
                                                    <a href="<%="cat/" + question.getQuestionCategory()%>" class="info">
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
                                                    <div id="<%=question.getQuestionID()%>d">
                                                        <jsp:include page="like.jsp" flush="true">
                                                            <jsp:param name="QID" value="<%=question.getQuestionID()%>" />
                                                        </jsp:include>
                                                    </div>
                                                    <script>
                                                        function addLIke<%=question.getQuestionID()%>() {
                                                             $.post('addLike', {questionid: "<%=question.getQuestionID()%>"
                                                            }, function (responseText) {
                                                                console.log(responseText);
                                                                if (responseText === "fav-unfav") {
                                                                    console.log("ddd");
                                                                    $('#<%=question.getQuestionID()%>d').load("./like.jsp?QID=<%=question.getQuestionID()%>");
                                                                } else if (responseText === "login_required") {
                                                                    $("#login-dialog-link").click();
                                                                }
                                                            });
                                                        }
                                                    </script>
                                                </div>
                                            </div>
                                        </div><!--End question-Content-->
                                        <div class="question-foot">

                                            <div class="share-box">
                                                <%
                                                    String classFav = "";
                                                    Model.Favourite_model favourite_model = new Favourite_model();
                                                    if (favourite_model.select_favouriteByQuestionIDANDUSERID(question.getQuestionID(), UserID)) {
                                                        classFav = "added-to-wishlist";
                                                    }
                                                %>
                                                <span class="btn-wishlist <%=classFav%>" id="favourite"title="إضافة اللى المفضلة" onclick="addFav();">
                                                    <i class="fa fa-heart" id="heart"></i>
                                                </span>
                                                <script>
                                                    function addFav() {
                                                         $.post('addFavourite', {questionid: "<%=question.getQuestionID()%>"
                                                        }, function (responseText) {
                                                            $('#top-header').load("top-header.jsp");
                                                            if (responseText === "fav-unfav") {

                                                            } else if (responseText === "login_required") {
                                                                $("#login-dialog-link").click();
                                                            }
                                                        });
                                                    }
                                                    function copyStringToClipboard(string) {
                                                        function handler(event) {
                                                            event.clipboardData.setData('text/plain', string);
                                                            event.preventDefault();
                                                            document.removeEventListener('copy', handler, true);
                                                        }

                                                        document.addEventListener('copy', handler, true);
                                                        document.execCommand('copy');
                                                    }
                                                </script>
                                                <span class="icon-share" data-toggle="tooltip" data-placement="top" title="نسخ الرابط" onclick="copyStringToClipboard('<%=request.getRequestURL().toString()%>')">
                                                    <i class="fa fa-mail-reply"></i>
                                                </span>
                                                <ul class="social">
                                                    <li>
                                                        <%
                                                            System.out.println(request.getRequestURL().toString());
                                                        %>
                                                        <a href="http://www.facebook.com/share.php?u=<%=request.getRequestURL().toString()%>/" target="_blank" class="facebook" >
                                                            <i class="fa fa-facebook"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="http://twitter.com/home?status=<%=question.getQuestionTitle()%>+<%=request.getRequestURL().toString()%>
                                                           " target="_blank" class="twitter">
                                                            <i class="fa fa-twitter"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="http://www.linkedin.com/shareArticle?mini=true&url=<%=request.getRequestURL().toString()%>&title=<%=question.getQuestionTitle()%>&source=[SOURCE/DOMAIN]
                                                           " target="_blank" class="linkedin">
                                                            <i class="fa fa-linkedin"></i>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div><!--End question-share-->
                                        </div><!--End question-foot-->
                                    </div><!--End question-->
                                    <div class="commentes">
                                        <div class="comments-title">
                                            <h2 class="title title-md has-after">
                                                عن الكاتب
                                            </h2>
                                        </div>
                                        <div class="comment-box author">
                                            <div class="comment-img">
                                                <img src="<%=owner.getAvatar()%>" alt="...">
                                            </div><!--Comment-image-->
                                            <div class="comment-content">
                                                <div class="content-info">
                                                    <div class="content-title">
                                                        <a href="#" >
                                                            <%=owner.getName()%>
                                                        </a>
                                                    </div>
                                                    <div class="content-time">
                                                        <span>
                                                            <%=owner.getDateInArabic()%>
                                                        </span>
                                                        <!--span>
                                                            فى 11:16 مساءا
                                                        </span-->
                                                    </div>
                                                    <div class="replay">
                                                        <label for="comment-Input">رد</label>
                                                        <i class="fa fa-mail-reply"></i>
                                                    </div><!--End replay-->
                                                </div><!--End Content-info-->
                                                <div class="content-body">
                                                    <p>
                                                        <%=owner.getAbout()%>
                                                    </p>
                                                </div><!--End Contwnt-body-->
                                            </div><!--End Comment--content-->
                                        </div><!--End Comment-box-->
                                        <div class="comments-title">
                                            <h2 class="title title-md has-after">
                                                الإجابات (<%=arrComments.size()%>)
                                            </h2>
                                        </div>
                                        <%
                                            for (int i = 0; i < arrComments.size(); i++) {
                                                user_bean commentUser = users_model.Select_userByID(arrComments.get(i).getCommenterID());
                                                Reply_model reply_model = new Reply_model();
                                        %>
                                        <div style="background-color: rgba(221, 221, 221, 0.12);margin-bottom: 50px;padding: 1.85em 0;">
                                            <div class="comment-box">
                                                <div class="comment-img">
                                                    <img src="<%=commentUser.getAvatar()%>" alt="...">
                                                </div><!--Comment-image-->
                                                <div class="comment-content">
                                                    <div class="content-info">
                                                        <div class="content-title">
                                                            <a href="#" >
                                                                <%=commentUser.getName()%>
                                                            </a>
                                                        </div>
                                                        <div class="content-time">
                                                            <span>
                                                                <%=arrComments.get(i).getDateInArabic()%>
                                                            </span>
                                                            <!--span>
                                                                فى 11:16 مساءا
                                                            </span -->
                                                        </div>
                                                        <!--div class="replay" onclick="$('#comment-Input').focus();">
                                                        <span for="comment-Input"> رد
                                                            <i class="fa fa-mail-reply"></i>
                                                        </span>
                                                    </div--><!--End replay-->
                                                    </div><!--End Content-info-->
                                                    <div class="content-body">
                                                        <p>
                                                            <%=arrComments.get(i).getComment()%>
                                                        </p>
                                                    </div><!--End Contwnt-body-->
                                                </div><!--End Comment--content-->

                                            </div><!--End Comment-box-->  

                                            <%
                                                ArrayList<Reply> replys = reply_model.selectReplyByCommentID(arrComments.get(i).getCommentID());
                                                for (int r_counter = 0; r_counter < replys.size(); r_counter++) {
                                                    System.out.println(replys.get(r_counter).getReplyerID() + "9000");
                                                    user_bean replayOwner = users_model.Select_userByID(replys.get(r_counter).getReplyerID());

                                            %>
                                            <div class="comment-box replay-comment">
                                                <div class="comment-img">
                                                    <img src="<%=replayOwner.getAvatar()%>" alt="...">
                                                </div><!--Comment-image-->
                                                <div class="comment-content">
                                                    <div class="content-info">
                                                        <div class="content-title">
                                                            <a href="#" >
                                                                <%=replayOwner.getName()%>
                                                            </a>
                                                        </div>
                                                        <div class="content-time">
                                                            <span>
                                                                <%=replys.get(r_counter).getDateInArabic()%>
                                                            </span>
                                                            <!--span>
                                                                فى 11:16 مساءا
                                                            </span-->
                                                        </div>
                                                        <!--div class="replay">
                                                            رد
                                                            <i class="fa fa-mail-reply"></i>
                                                        </div--><!--End replay-->
                                                    </div><!--End Content-info-->
                                                    <div class="content-body">
                                                        <p>
                                                            <%=replys.get(r_counter).getReply()%>
                                                        </p>
                                                    </div><!--End Contwnt-body-->
                                                </div><!--End Comment--content-->

                                            </div><!--End Comment-box-->


                                            <%
                                                }
                                            %>
                                            <form class=""  id="reply_form<%=arrComments.get(i).getCommentID()%>">
                                                <div class="form-group" style="margin: 0.75em 7.75em 0.75em 1.15em;">
                                                    <input class="form-control" id="reply-Input<%=arrComments.get(i).getCommentID()%>" type="text" placeholder="رد" />
                                                    <div class="replay replay-comment-button" onclick="$('#submit_input<%=arrComments.get(i).getCommentID()%>').click()" >
                                                        رد
                                                        <i class="fa fa-mail-reply"></i>
                                                    </div><!--End replay-->
                                                    <input type="submit" id="submit_input<%=arrComments.get(i).getCommentID()%>" hidden="true"/>
                                                </div><!--End Form-group-->
                                            </form>
                                            <script>
                                                $('#reply_form<%=arrComments.get(i).getCommentID()%>').submit(function (e) {
                                                    e.preventDefault();
                                                    $.post('addReply', {
                                                        reply_Input: $('#reply-Input<%=arrComments.get(i).getCommentID()%>').val(),
                                                        commentid: "<%=arrComments.get(i).getCommentID()%>"
                                                    }, function (responseText) {
                                                        console.log(responseText);
                                                        if (responseText === "done") {
                                                            location.reload();
                                                        } else if (responseText === "login_required") {
                                                            $("#login-dialog-link").click();
                                                        }
                                                    },
                                                            );
                                                });


                                            </script>
                                        </div>
                                        <%
                                            }
                                        %>

                                        <div class="comments-title">
                                            <h2 class="title title-md has-after">
                                                أضف حل
                                            </h2>
                                        </div>
                                        <div class="comments-form">
                                            <form class="form" id="comment-form" action="addComment" method="post">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <textarea class="form-control" id="comment-Input" name="comment-Input" placeholder="أكتب اجابة هنا" required></textarea>
                                                        </div><!--End Form-group-->
                                                        <div class="form-group">
                                                            <button type="submit" id="submit-button" class="custom-btn btn-submit">
                                                                ارسال
                                                            </button>
                                                        </div><!--End Form-group-->
                                                    </div>
                                                </div><!--End Row-->
                                            </form><!--End Form-->
                                        </div><!--End Comments-form-->
                                    </div><!--End Comments-->

                                </div><!--End Center-colume-->
                            </div><!--End Col-md-6-->
                            <%@include file="sidepar.jsp" %>

                        </div><!--End Row-->
                    </div><!--End Container-->
                </div><!--End page-content-->
                <%@include file="Footer.jsp" %>

            </div><!--End main-->
        </div><!--End Wrapper-->

    </body>
    <script>
        $('#comment-form').submit(function (e) {
            e.preventDefault();
             $.post('addComment', {comment_Input: $('#comment-Input').val(),
                questionid: "<%=question.getQuestionID()%>"
            }, function (responseText) {
                console.log(responseText);
                if (responseText === "done") {
                    location.reload();
                } else if (responseText === "login_required") {
                    $("#login-dialog-link").click();
                }
            },
                    );
        });

    </script>
</html>
