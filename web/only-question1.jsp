<%-- 
    Document   : oQ
    Created on : Aug 16, 2017, 1:33:26 PM
    Author     : EHS
--%>

<%-- 
    Document   : search
    Created on : Aug 15, 2017, 6:53:52 PM
    Author     : EHS
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
                    <div class="row">
                        <div class="col-xs-4">
                            <ul class="social">
                                <li>
                                    <a href="#" target="_blank" class="facebook">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank" class="twitter">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank" class="linkedin">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank" class="google-plus">
                                        <i class="fa fa-google-plus"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" target="_blank" class="youtube">
                                        <i class="fa fa-youtube"></i>
                                    </a>
                                </li>
                            </ul>
                        </div><!--End Col-sm-4-->
                        <div class="col-xs-8">
                            <ul class="top-header-info">
                                <li>
                                    <i class="fa fa-envelope"></i>
                                    <span>Mohamed.ata148@gmail.com</span>
                                </li>
                                <li>
                                    <i class="fa fa-phone"></i>
                                    <span>+002 01018241944</span>
                                </li>
                            </ul>
                        </div><!--End Col-sm-8-->
                    </div><!--End Row-->
                </div><!--End Container-->
            </div><!--End Top-Header-->
            <header class="header">
                <div class="container">
                    <a href="index.html" class="logo">
                        <img src="images/logo.png" alt="logo">
                    </a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".nav-main-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="header-icons">
                        <div class="dropdown">
                            <a href="my-account.html" class="my-account dropdwon">
                                <img src="images/avatars/team1.jpg" alt="profile">                                
                            </a><!--End my-account-->
                            <ul class="dropdown-menu">
                                <li>
                                    <a class="popup-text" href="#register-dialog" data-effect="mfp-move-from-top"> ???????</a>
                                </li>
                                <li>
                                    <a href="#">????? ??????</a>
                                </li>
                            </ul>
                        </div><!--End Dropdown-->
                        <a href="my-account.html" class="saved-head">
                            <div class="saved-icon" title="?????????">
                                <i class="fa fa-suitcase"></i>
                                <span>5</span>
                            </div><!--End cart-icon-->        
                        </a>
                    </div><!--End Header-Icons-->
                </div><!--End Container-->
                <div class="collapse navbar-collapse nav-main-collapse">
                    <div class="container">
                        <nav class="main-nav">
                            <ul class="nav navbar-nav ">
                                <li>
                                    <a href="index.html">
                                        <i class="fa fa-home"></i>
                                        ????????
                                    </a>
                                </li>
                                <li class="active">
                                    <a href="questions.html">
                                        <i class="fa fa-question"></i>
                                        ?????
                                    </a>
                                </li>
                                <li>
                                    <a href="Categories.html">
                                        <i class="fa fa-list"></i>
                                        ??????
                                    </a>
                                </li>
                                <li>
                                    <a href="contact-us.html">
                                        <i class="fa fa-envelope-o"></i>
                                        ???? ???
                                    </a>
                                </li>
                            </ul>
                        </nav><!--End Main-nav-->
                    </div><!--End container-->
                </div><!--End Navbar-collapse-->
            </header><!--End Header-->

            <div id="login-dialog" class="mfp-with-anim mfp-hide mfp-dialog dialog-box">
                <form class="dialog-form">
                    <div class="form-group">
                        <input class="form-control" placeholder="?????? ??????????" type="email">
                    </div><!--End form-group-->
                    <div class="form-group">
                        <input class="form-control"  placeholder="???? ????" type="password">
                    </div><!--End form-group-->
                    <a class="popup-text forget" href="#password-recover-dialog" data-effect="mfp-zoom-out">
                        ???? ???? ?????
                    </a>
                    <button type="submit" class="custom-btn">????? ????</button>
                </form><!--End dialog-form-->
                <div class="dont-have">
                    ??? ???? ????..
                    <a class="popup-text" href="#register-dialog" data-effect="mfp-zoom-out">??? ????</a>
                </div>           
            </div><!--End login-dialog-->
            <div id="password-recover-dialog" class="mfp-with-anim mfp-hide mfp-dialog dialog-box">
                <form class="dialog-form">
                    <div class="form-group">
                        <input class="form-control" placeholder="?????? ??????????" type="email">
                    </div><!--End form-group-->
                    <button type="submit" class="custom-btn">??????? ???? ??????</button>
                </form><!--End dialog-form-->
            </div><!--End login-dialog-->
            <div id="register-dialog" class="mfp-with-anim mfp-hide mfp-dialog dialog-box">
                <form class="dialog-form">
                    <div class="form-group text-center">
                        <a href="" class="login-with-fb">
                            <i class="fa fa-facebook"></i>
                            ??????? ?? ???? ??????
                        </a>
                        <span class="or">?? </span>
                    </div><!--End form-group-->
                    <div class="form-group">
                        <input class="form-control" placeholder="????? ?????" type="text">
                    </div><!--End form-group-->
                    <div class="form-group">
                        <input class="form-control" placeholder="????? ??????" type="text">
                    </div><!--End form-group-->
                    <div class="form-group">
                        <input class="form-control" placeholder="?????? ??????????" type="email">
                    </div><!--End form-group-->
                    <div class="form-group">
                        <input class="form-control"  placeholder="???? ????" type="password">
                    </div><!--End form-group-->
                    <div class="notes">
                        ?? ???? ????? ??? ?? ????? . ???? ????? ??? 
                        <a href="">????? ??????</a> ? 
                        <a href="">?????? ????????</a>
                    </div>
                    <button type="submit" class="custom-btn">????? </button>
                </form><!--End dialog-form-->
                <div class="dont-have">
                    ???? ???? ?????? ..
                    <a class="popup-text" href="#login-dialog" data-effect="mfp-zoom-out">???? ????</a>
                </div>           
            </div><!--End login-dialog-->

            <div class="main" role="main">
                <div class="page-head">
                    <div class="page-head-img">
                        <img src="images/blog/blog-page-head-1.jpg" alt="...">
                    </div>
                    <div class="overlay">
                        <div class="container">
                            <div class="page-title">
                                <h3 class="title">
                                    ???????
                                </h3>
                            </div><!--End Page-Title-->
                            <div class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="index.html">
                                            <i class="fa fa-home"></i>
                                            ????????
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Blogs.html">
                                            <i class="fa fa-pencil-square-o"></i>
                                            ???????
                                        </a>
                                    </li>
                                    <li class="active">
                                        <i class="fa "></i>
                                        ??? ??????
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
                                            <a class="question-name title title-md" href="only-question.html">
                                                ??? ?? ?????? ???? ?????????
                                            </a>
                                            <div class="question-author">
                                                <div class="question-author-img">
                                                    <img src="images/avatars/team1.jpg">
                                                </div>
                                                <div class="question-author-cont">
                                                    <h4 class="author-name">
                                                        ????? ???????
                                                    </h4>
                                                    <span class="time">
                                                        ??? 5 ?????
                                                    </span>
                                                    <span class="type ask">
                                                        <i class="fa fa-question"></i>
                                                        ????
                                                    </span>
                                                    <span class="type survay">
                                                        <i class="fa fa-bar-chart"></i>
                                                        ??????? ???
                                                    </span>
                                                </div><!--End question-author-cont-->
                                            </div><!--End question-author-->
                                            <div class="admin-action" data-toggle="tooltip" data-placement="right" title=" ????? ?? ??? ??????">
                                                <div class="dropdown">
                                                    <button class="dropdown-toggle dots-menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                        <i class="fa fa-ellipsis-h"></i>
                                                    </button>
                                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                                        <li><a href="#">
                                                                <i class="fa fa-edit"></i>
                                                                تعديل
                                                            </a></li>
                                                        <li><a href="#">
                                                                <i class="fa fa-trash"></i>
                                                                مسح
                                                            </a></li>
                                                    </ul>
                                                </div>
                                            </div><!--End Admin-Action-->
                                        </div><!--End question-head-->
                                        <div class="question-content">
                                            <div>
                                                <p class="custom-p">
                                                    ???? ????? ????? ??? ??? ???? ??? ?? ??????? ??????? ????? ?? ????? ?????? ?? ??????? ??? ????? ??????? ???? ?? ??? ???? ??????? ?? ?????? ???? ??????.????? ??? ??????? ????? ????? ?????? .
                                                    ???? ????? ????? ??? ??? ???? ??? ?? ??????? ??????? ????? ?? ????? ?????? ?? ??????? ??? ????? ??????? ???? ?? ??? ???? ??????? ?? ?????? ???? ??????.????? ??? ??????? ????? ????? ?????? .
                                                </p>
                                                <img src="images/ideas/idea.jpg">
                                            </div>
                                            <div>
                                                <div class="foot-info wait">
                                                    <i class="fa fa-clock-o"></i>
                                                    ??????? ????
                                                </div>
                                                <div class="foot-info solved">
                                                    <i class="fa fa-check"></i>
                                                    ?? ????
                                                </div>
                                                <div class="foot-info">
                                                    <a href="#" class="info">
                                                        <i class="fa fa-align-center"></i>
                                                        ????? ??????????
                                                    </a>
                                                </div>
                                                <div class="foot-info">
                                                    <span class="info">
                                                        <i class="fa fa-comments"></i>
                                                        15 ?????
                                                    </span>
                                                </div>
                                                <div class="foot-info">
                                                    <button class="vote">
                                                        <i class="fa fa-thumbs-o-up"></i>
                                                        25
                                                    </button>
                                                </div>
                                            </div>
                                        </div><!--End question-Content-->
                                        <div class="question-foot">
                                            <a class="custom-btn pull-right" href="only-question.html">
                                                ???? ???????
                                            </a>
                                            <div class="share-box">
                                                <span class="btn-wishlist" title="????? ???? ???????">
                                                    <i class="fa fa-heart"></i>
                                                </span>
                                                <span class="icon-share" title="??????">
                                                    <i class="fa fa-mail-reply"></i>
                                                </span>
                                                <ul class="social">
                                                    <li>
                                                        <a href="#" target="_blank" class="facebook">
                                                            <i class="fa fa-facebook"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank" class="twitter">
                                                            <i class="fa fa-twitter"></i>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="#" target="_blank" class="linkedin">
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
                                                ?? ??????
                                            </h2>
                                        </div>
                                        <div class="comment-box author">
                                            <div class="comment-img">
                                                <img src="images/avatars/team1.jpg" alt="...">
                                            </div><!--Comment-image-->
                                            <div class="comment-content">
                                                <div class="content-info">
                                                    <div class="content-title">
                                                        <a href="#" >
                                                            ????? ???????
                                                        </a>
                                                    </div>
                                                    <div class="content-time">
                                                        <span>
                                                            18 ???? 2017
                                                        </span>
                                                        <span>
                                                            ?? 11:16 ?????
                                                        </span>
                                                    </div>
                                                </div><!--End Content-info-->
                                                <div class="content-body">
                                                    <p>
                                                        ???? ????? ????? ??? ??? ???? ??? ?? ??????? ??????? ????? ?? ????? ?????? ?? ??????? ??? ????? ??????? ???? ?? ??? ???? ??????? ?? ?????? ???? ??????.????? ??? ??????? ????? ????? ?????? .
                                                    </p>
                                                </div><!--End Contwnt-body-->
                                            </div><!--End Comment--content-->
                                        </div><!--End Comment-box-->
                                        <div class="comments-title">
                                            <h2 class="title title-md has-after">
                                                ???????? (5)
                                            </h2>
                                        </div>
                                        <div class="comment-box">
                                            <div class="comment-img">
                                                <img src="images/avatars/team1.jpg" alt="...">
                                            </div><!--Comment-image-->
                                            <div class="comment-content">
                                                <div class="content-info">
                                                    <div class="content-title">
                                                        <a href="#" >
                                                            ????? ???????
                                                        </a>
                                                    </div>
                                                    <div class="content-time">
                                                        <span>
                                                            18 ???? 2017
                                                        </span>
                                                        <span>
                                                            ?? 11:16 ?????
                                                        </span>
                                                    </div>
                                                    <div class="comment-action" data-toggle="tooltip" data-placement="top" title="????? ?? ???">
                                                        <div class="dropdown">
                                                            <button class="dropdown-toggle dots-menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                                <i class="fa fa-ellipsis-h"></i>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                                                <li><a href="#edit" onclick="$('#edit').modal('show');">
                                                                        <i class="fa fa-edit"></i>
                                                                        ?????
                                                                    </a>

                                                                
                                                                </li>
                                                                <li><a href="#delete" onclick="$('#delete').modal('show');">
                                                                        <i class="fa fa-trash"></i>
                                                                        ???
                                                                    </a></li>
                                                            </ul>
                                                        </div>
                                                            <div class="modal fade ask" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit">
                                                                        <div class="modal-dialog" role="document">
                                                                            <div class="modal-content">
                                                                                <form class="form" method="post" action="addQuestion" id="questions-form">
                                                                                    <div class="modal-body">
                                                                                        <div class="account">
                                                                                            <div class="account-name">
                                                                                                
                                                                                                <a href="my-account.html">
                                                                                                   <h3 class="center-block">??? ?? ?????? ???? ?????????</h3>
                                                                                           
                                                                                                </a>
                                                                                            </div>
                                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                                                        </div>
                                                                                       <div class="form-group">
                                                                                            <textarea class="form-control" name="details_text" placeholder="???????? (???????)"></textarea>
                                                                                        </div><!--End Form-group-->
                                                                                    </div><!--End modal-body-->
                                                                                    <div class="modal-footer">
                                                                                        <input type="reset" hidden="true" id="reset" />
                                                                                        <a class="custom-btn pull-right" href="questions.jsp?new-question">?????</a>
                                                                                    </div>
                                                                                </form><!--End Form-->
                                                                                <script>
                                                                                    $('#questions-form').submit(function (e) {
                                                                                        e.preventDefault();
                                                                                        �$.post('addQuestion', $('#questions-form').serialize()
                                                                                                , function (responseText) {
                                                                                                    $('#ask .close').click();
                                                                                                    $('#reset').click();
                                                                                                    if (responseText === "done") {
                                                                                                        $("#all_QuestionContent").prepend($('<div id="question0_3"></div>').hide());
                                                                                                        $('#question0_3').load('all-questions.jsp?selection=ALL&&f=0&&t=3');
                                                                                                        $('#question0_3').show();
                                                                                                        //////////////////////////////////
                                                                                                        $("#all_solved").prepend($('<div id="solved0_3"></div>').hide());
                                                                                                        $('#solved0_3').load('all-questions.jsp?selection=Answerd&&f=0&&t=3');
                                                                                                        $('#solved0_3').show();
                                                                                                        /////////////////////////////
                                                                                                        $("#not_solved").prepend($('<div id="not-solved0_3"></div>').hide());
                                                                                                        $('#not-solved0_3').load('all-questions.jsp?selection=NotAnswerd&&f=0&&t=3');
                                                                                                        $('#not-solved0_3').show();
                                                                                                        ///////////////////////////////////////////////////////
                                                                                                        $("#translated-div").prepend($('<div id="translated0_3"></div>').hide());
                                                                                                        $('#translated0_3').load('all-questions.jsp?selection=translated&&f=0&&t=3');
                                                                                                        $('#translated0_3').show();
                                                                                                    } else if (responseText === "login_required") {
                                                                                                        $("#ask .close").click();
                                                                                                        $("#login-dialog-link").click();
                                                                                                    }
                                                                                                },
                                                                                                );
                                                                                    });
                                                                                </script>
                                                                            </div><!-- /.modal-content -->
                                                                        </div><!-- /.modal-dialog -->
                                                                    </div><!-- /.modal -->
                                                         <div class="modal fade ask" id="delete" tabindex="-1" role="dialog" aria-labelledby="delete">
                                                                        <div class="modal-dialog" role="document">
                                                                       <div class="modal-content">
            <div class="modal-header">
                ??? ?????
            </div>
            <div class="modal-body">
                ??? ??????  ??? ??? ?? ????? ?????? ???? ??? ????
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">?????</button>
                <a class="btn btn-danger btn-ok">???</a>
            </div>
        </div>
                                                                    </div><!-- /.modal -->

                                                    </div><!--End Comment-action-->
                                                    <div class="replay" data-toggle="collapse" data-target="#replay-box" aria-expanded="false" aria-controls="collapseExample">
                                                        ??
                                                        <i class="fa fa-mail-reply"></i>
                                                    </div><!--End replay-->
                                                </div><!--End Content-info-->
                                                <div class="content-body">
                                                    <p>
                                                        ???? ????? ????? ??? ??? ???? ??? ?? ??????? ??????? ????? ?? ????? ?????? ?? ??????? ??? ????? ??????? ???? ?? ??? ???? ??????? ?? ?????? ???? ??????.????? ??? ??????? ????? ????? ?????? .
                                                    </p>
                                                </div><!--End Contwnt-body-->
                                            </div><!--End Comment--content-->
                                        </div><!--End Comment-box-->
                                        <div class="collapse" id="replay-box">
                                            <div class="comment-box replay-comment">
                                                <div class="comment-img">
                                                    <img src="images/avatars/team1.jpg" alt="...">
                                                </div><!--Comment-image-->
                                                <div class="comment-content">
                                                    <div class="content-info">
                                                        <div class="content-title">
                                                            <a href="#" >
                                                                ????? ???????
                                                            </a>
                                                        </div>
                                                        <div class="content-time">
                                                            <span>
                                                                18 ???? 2017
                                                            </span>
                                                            <span>
                                                                ?? 11:16 ?????
                                                            </span>
                                                        </div>
                                                    </div><!--End Content-info-->
                                                    <div class="content-body">
                                                        <div class="form-group">
                                                            <textarea class="form-control" placeholder="??? ??" rows="2"></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <button type="submit" class="custom-btn btn-submit">
                                                                ?????
                                                            </button>
                                                        </div>
                                                    </div><!--End Contwnt-body-->
                                                </div><!--End Comment--content-->
                                            </div><!--End Comment-box-->
                                        </div><!--End Collapse-->                      
                                        <div class="comment-box">
                                            <div class="comment-img">
                                                <img src="images/avatars/team1.jpg" alt="...">
                                            </div><!--Comment-image-->
                                            <div class="comment-content">
                                                <div class="content-info">
                                                    <div class="content-title">
                                                        <a href="#" >
                                                            ????? ???????
                                                        </a>
                                                    </div>
                                                    <div class="content-time">
                                                        <span>
                                                            18 ???? 2017
                                                        </span>
                                                        <span>
                                                            ?? 11:16 ?????
                                                        </span>
                                                    </div>
                                                    <div class="comment-action" data-toggle="tooltip" data-placement="top" title="????? ?? ???">
                                                        <div class="dropdown">
                                                            <button class="dropdown-toggle dots-menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                                <i class="fa fa-ellipsis-h"></i>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                                                <li><a href="#">
                                                                        <i class="fa fa-edit"></i>
                                                                        ?????
                                                                    </a></li>
                                                                <li><a href="#">
                                                                        <i class="fa fa-trash"></i>
                                                                        ???
                                                                    </a></li>
                                                            </ul>
                                                        </div>
                                                    </div><!--End Comment-action-->
                                                    <div class="replay" data-toggle="collapse" data-target="#replay-box-2" aria-expanded="false" aria-controls="collapseExample">
                                                        ??
                                                        <i class="fa fa-mail-reply"></i>
                                                    </div><!--End replay-->
                                                </div><!--End Content-info-->
                                                <div class="content-body">
                                                    <p>
                                                        ???? ????? ????? ??? ??? ???? ??? ?? ??????? ??????? ????? ?? ????? ?????? ?? ??????? ??? ????? ??????? ???? ?? ??? ???? ??????? ?? ?????? ???? ??????.????? ??? ??????? ????? ????? ?????? .
                                                    </p>
                                                </div><!--End Contwnt-body-->
                                            </div><!--End Comment--content-->
                                        </div><!--End Comment-box-->
                                        <div class="collapse" id="replay-box-2">
                                            <div class="comment-box replay-comment">
                                                <div class="comment-img">
                                                    <img src="images/avatars/team1.jpg" alt="...">
                                                </div><!--Comment-image-->
                                                <div class="comment-content">
                                                    <div class="content-info">
                                                        <div class="content-title">
                                                            <a href="#" >
                                                                ????? ???????
                                                            </a>
                                                        </div>
                                                        <div class="content-time">
                                                            <span>
                                                                18 ???? 2017
                                                            </span>
                                                            <span>
                                                                ?? 11:16 ?????
                                                            </span>
                                                        </div>
                                                    </div><!--End Content-info-->
                                                    <div class="content-body">
                                                        <div class="form-group">
                                                            <textarea class="form-control" placeholder="??? ??" rows="2"></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <button type="submit" class="custom-btn btn-submit">
                                                                ?????
                                                            </button>
                                                        </div>
                                                    </div><!--End Contwnt-body-->
                                                </div><!--End Comment--content-->
                                            </div><!--End Comment-box-->
                                        </div><!--End Collapse-->                      
                                        <div class="comment-box replay-comment">
                                            <div class="comment-img">
                                                <img src="images/avatars/team1.jpg" alt="...">
                                            </div><!--Comment-image-->
                                            <div class="comment-content">
                                                <div class="content-info">
                                                    <div class="content-title">
                                                        <a href="#" >
                                                            ????? ???????
                                                        </a>
                                                    </div>
                                                    <div class="content-time">
                                                        <span>
                                                            18 ???? 2017
                                                        </span>
                                                        <span>
                                                            ?? 11:16 ?????
                                                        </span>
                                                    </div>
                                                    <div class="comment-action" data-toggle="tooltip" data-placement="top" title="????? ?? ???">
                                                        <div class="dropdown" >
                                                            <button class="dropdown-toggle dots-menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                                <i class="fa fa-ellipsis-h"></i>
                                                            </button>
                                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                                                <li><a href="#">
                                                                        <i class="fa fa-edit"></i>
                                                                        ?????
                                                                    </a></li>
                                                                <li><a href="#">
                                                                        <i class="fa fa-trash"></i>
                                                                        ???
                                                                    </a></li>
                                                            </ul>
                                                        </div>
                                                    </div><!--End Comment-action-->
                                                    <div class="replay" data-toggle="collapse" data-target="#replay-box-3" aria-expanded="false" aria-controls="collapseExample">
                                                        ??
                                                        <i class="fa fa-mail-reply"></i>
                                                    </div><!--End replay-->
                                                </div><!--End Content-info-->
                                                <div class="content-body">
                                                    <p>
                                                        ???? ????? ????? ??? ??? ???? ??? ?? ??????? ??????? ????? ?? ????? ?????? ?? ??????? ??? ????? ??????? ???? ?? ??? ???? ??????? ?? ?????? ???? ??????.????? ??? ??????? ????? ????? ?????? .
                                                    </p>
                                                </div><!--End Contwnt-body-->
                                            </div><!--End Comment--content-->
                                        </div><!--End Comment-box-->
                                        <div class="collapse" id="replay-box-3">
                                            <div class="comment-box replay-comment">
                                                <div class="comment-img">
                                                    <img src="images/avatars/team1.jpg" alt="...">
                                                </div><!--Comment-image-->
                                                <div class="comment-content">
                                                    <div class="content-info">
                                                        <div class="content-title">
                                                            <a href="#" >
                                                                ????? ???????
                                                            </a>
                                                        </div>
                                                        <div class="content-time">
                                                            <span>
                                                                18 ???? 2017
                                                            </span>
                                                            <span>
                                                                ?? 11:16 ?????
                                                            </span>
                                                        </div>
                                                    </div><!--End Content-info-->
                                                    <div class="content-body">
                                                        <div class="form-group">
                                                            <textarea class="form-control" placeholder="??? ??" rows="2"></textarea>
                                                        </div>
                                                        <div class="form-group">
                                                            <button type="submit" class="custom-btn btn-submit">
                                                                ?????
                                                            </button>
                                                        </div>
                                                    </div><!--End Contwnt-body-->
                                                </div><!--End Comment--content-->
                                            </div><!--End Comment-box-->
                                        </div><!--End Collapse-->                      
                                        <div class="comments-title">
                                            <h2 class="title title-md has-after">
                                                ??? ??
                                            </h2>
                                        </div>
                                        <div class="comments-form">
                                            <form class="form" action="" method="">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <textarea class="form-control" placeholder="???? ????? ???" rows="7"></textarea>
                                                        </div><!--End Form-group-->
                                                        <div class="form-group">
                                                            <button type="submit" class="custom-btn btn-submit">
                                                                ?????
                                                            </button>
                                                        </div><!--End Form-group-->
                                                    </div>
                                                </div><!--End Row-->
                                            </form><!--End Form-->
                                        </div><!--End Comments-form-->
                                    </div><!--End Comments-->



                                </div><!--End Center-colume-->
                            </div><!--End Col-md-6-->
                            <div class="col-md-3">
                                <div class="side-colume-right">
                                    <div class="side-widget">
                                        <div class="side-widget-title">
                                            <h2 class="title title-sm has-after">
                                                ?????
                                            </h2>
                                        </div><!--End Side-widget-title-->
                                        <div class="side-widget-content">
                                            <form class="" action="" method="">
                                                <div class="form-group">
                                                    <input class="form-control" type="text" placeholder="???? ???">
                                                    <button class="search-icon-btn" type="submit">
                                                        <i class="fa fa-search"></i>
                                                    </button>
                                                </div><!--End Form-group-->
                                            </form><!--End Form-->
                                        </div><!--End Side-widget-content-->
                                    </div><!--End Side-widget-->

                                    <div class="side-widget">
                                        <div class="side-widget-title">
                                            <h2 class="title title-sm has-after">
                                                ??????
                                            </h2>
                                        </div><!--End Side-widget-title-->
                                        <div class="side-widget-content">
                                            <ul class="side-widget-list">
                                                <li>
                                                    <a href="#">?????</a>
                                                </li>
                                                <li>
                                                    <a href="#">??</a>
                                                </li>
                                                <li>
                                                    <a href="#">?????</a>
                                                </li>
                                                <li>
                                                    <a href="#">????</a>
                                                </li>
                                                <li>
                                                    <a href="#">?????</a>
                                                </li>
                                            </ul><!--End Side-widget-list-->
                                            <a class="custom-btn pull-right" href="Categories.html">
                                                ?? ??????
                                            </a>
                                        </div><!--End Side-widget-content-->
                                    </div><!--End Side-widget-->
                                    <div class="side-widget">
                                        <div class="side-widget-title">
                                            <h2 class="title title-sm has-after">
                                                ?????? ?????
                                            </h2>
                                        </div><!--End Side-Widget-Title-->
                                        <div class="side-widget-content">
                                            <ul class="side-widget-list">
                                                <li>
                                                    <div class="side-article">
                                                        <div class="side-article-img">
                                                            <img src="images/blog/article-1.jpg">
                                                        </div>
                                                        <div class="side-article-desc">
                                                            <a href="#" class="name">?????? ??? ?????? ????????</a>
                                                            <span class="date">30 ????? 2015</span>
                                                        </div>
                                                    </div><!--End Side-article-->
                                                </li>
                                                <li>
                                                    <div class="side-article">
                                                        <div class="side-article-img">
                                                            <img src="images/blog/article-1.jpg">
                                                        </div>
                                                        <div class="side-article-desc">
                                                            <a href="#" class="name">?????? ??? ?????? ????????</a>
                                                            <span class="date">30 ????? 2015</span>
                                                        </div>
                                                    </div><!--End Side-article-->
                                                </li>
                                                <li>
                                                    <div class="side-article">
                                                        <div class="side-article-img">
                                                            <img src="images/blog/article-1.jpg">
                                                        </div>
                                                        <div class="side-article-desc">
                                                            <a href="#" class="name">?????? ??? ?????? ????????</a>
                                                            <span class="date">30 ????? 2015</span>
                                                        </div>
                                                    </div><!--End Side-article-->
                                                </li>
                                            </ul><!--End Side-widget-list-->
                                            <a class="custom-btn pull-right" href="Blogs.html">
                                                ?? ????????
                                            </a>
                                        </div><!--End Side-Widget-Content-->
                                    </div><!--End Side-Widget-->
                                    <div class="side-widget">
                                        <div class="side-widget-title">
                                            <h2 class="title title-sm has-after">
                                                ??????
                                            </h2>
                                        </div><!--End Side-widget-title-->
                                        <div class="side-widget-content">
                                            <ul class="tags">
                                                <li>
                                                    <a href="#">?????</a>
                                                </li>
                                                <li>
                                                    <a href="#">??</a>
                                                </li>
                                                <li>
                                                    <a href="#">?????</a>
                                                </li>
                                                <li>
                                                    <a href="#">????</a>
                                                </li>
                                                <li>
                                                    <a href="#">?????</a>
                                                </li>
                                            </ul><!--End Side-widget-list-->
                                        </div><!--End Side-widget-content-->
                                    </div><!--End Side-widget-->
                                </div><!--End Side-colume-->
                            </div><!--End Col-md-3-->


                        </div><!--End Row-->
                    </div><!--End Container-->
                </div><!--End page-content-->
                <footer class="footer">
                    <div class="container">
                        <div class="copyright">
                            <p>
                                ???? ?????? ?????? <span>&copy;</span> ??????? 2017
                            </p>
                        </div><!--End Copyright-->

                        <div class="design-by">
                            <p>
                                ????? <a href="#" target="_blank">Mohamed Ata</a>
                            </p>
                        </div><!--End Copyright-->
                    </div><!--End Container-->
                </footer><!--End Footer-->                
            </div><!--End main-->
        </div><!--End Wrapper-->


    </body>

</html>