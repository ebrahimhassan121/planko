<%-- 
    Document   : Header_0
    Created on : Jul 25, 2017, 11:31:17 PM
    Author     : EHS
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%
            boolean login_error = false;
            if (request.getAttribute("login") != null && request.getAttribute("login").equals("error")) {
                login_error = true;
            }
            

        %>
    </head>
    <body>
        <header class="header">
            <div class="container">
                <a href="Home.jsp" class="logo">
                    Planko
                </a>
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".nav-main-collapse" aria-expanded="false">
                    <span class="sr-only">Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="header-icons">
                    <div class="dropdown">
                        <a href="#" class="my-account dropdwon">
                            <img src="./assets/site/images/avatars/default-user-icon-profile.png" alt="profile">                                
                        </a><!--End my-account-->
                        <ul class="dropdown-menu">
                            <li>
                                <a class="popup-text" href="#register-dialog" data-effect="mfp-move-from-top"> التسجيل</a>
                            </li>
                            <li>
                                <a class="popup-text" href="#login-dialog" data-effect="mfp-move-from-top">تسجيل الدخول</a>
                            </li>
                        </ul>
                    </div><!--End Dropdown-->
                    <a href="Profile.jsp" class="saved-head">
                        <div class="saved-icon" title="المحفوظات">
                            <i class="fa fa-suitcase"></i>
                            <span>0</span>
                        </div><!--End cart-icon-->        
                    </a>
                </div><!--End Header-Icons-->
            </div><!--End Container-->
            <div class="collapse navbar-collapse nav-main-collapse">
                <div class="container">
                    <nav class="main-nav">
                        <ul class="nav navbar-nav ">

                            <li>
                                <a href="Home.jsp">
                                    <i class="fa fa-home"></i>
                                    الرئيسية
                                </a>
                            </li>

                            <li>
                                <a href="questions.jsp">
                                    <i class="fa fa-question"></i>
                                    أسئلة
                                </a>
                            </li>
                            <li>
                                <a href="Categories.jsp">
                                    <i class="fa fa-list"></i>
                                    الفئات
                                </a>
                            </li>
                            <li>
                                <a href="contact-us.jsp">
                                    <i class="fa fa-envelope-o"></i>
                                    اتصل بنا
                                </a>
                            </li>
                        </ul>
                    </nav><!--End Main-nav-->
                </div><!--End container-->
            </div><!--End Navbar-collapse-->
        </header><!--End Header-->

        <div id="password-recover-dialog" class="mfp-with-anim mfp-hide mfp-dialog dialog-box">
            <form class="dialog-form" method="post" action="">
                <div class="form-group">
                    <input class="form-control" placeholder="البريد الالكترونى" type="email">
                </div><!--End form-group-->
                <button type="submit" class="custom-btn">إسترجاع كلمة المرور</button>
            </form><!--End dialog-form-->
        </div><!--End login-dialog-->

        <div id="login-dialog" class="mfp-with-anim mfp-hide mfp-dialog dialog-box" >
            <form class="dialog-form" method="post" action="Login">
                <div class="form-group text-center">
                    <a href="" class="login-with-fb">
                        <i class="fa fa-facebook"></i>
                        الدخول من خلال فيسبوك
                    </a>
                    <span class="or">أو </span>
                </div><!--End form-group-->
                <%                    if (login_error) {

                %>

                <div class="form-group">
                    <span class="or"style="color: red;text-align: center" >معلومات دخول خاطئة</span>
                </div>
                <% } %>
                <div class="form-group">
                    <input class="form-control" placeholder="البريد الالكترونى" type="email" name="email" required>
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control" placeholder="كلمة السر" type="password" name="password" required>
                </div><!--End form-group-->
                <a class="popup-text forget" href="#password-recover-dialog" data-effect="mfp-zoom-out">
                    نسيت كلمة السر؟
                </a>
                <button type="submit" class="custom-btn">تسجيل دخول</button>
            </form><!--End dialog-form-->
            <div class="dont-have">
                ليس لديك حساب..
                <a class="popup-text" href="#register-dialog" data-effect="mfp-zoom-out">سجل الأن</a>
            </div>           
            <button title="Close (Esc)" type="button" class="mfp-close">×</button>
        </div>

        <div id="register-dialog" class="mfp-with-anim mfp-hide mfp-dialog dialog-box">
            <form class="dialog-form" method="post" action="Register" autocomplete="off">
                <div class="form-group text-center">
                    <a href="" class="login-with-fb">
                        <i class="fa fa-facebook"></i>
                        التسجيل من خلال فيسبوك
                    </a>
                    <span class="or">أو </span>
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control" placeholder="الأسم الأول" name="fname" type="text" required>
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control" placeholder="الأسم الأخير" name="lname" type="text" required>
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control" id="email" placeholder="البريد الالكترونى"  name="email"type="email" required>
                    <span style="color: #f70009" hidden="true" id="email_hint"  >هذا الايميل غير متاح</span>
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control"  placeholder="كلمة السر" name="password" type="password" required>
                </div><!--End form-group-->
                <div class="notes">
                    من خلال الضغط على زر تسحيل . فانك توافق على 
                    <a href="">قواعد موقعنا</a> و 
                    <a href="">الشروط والأحكام</a>
                </div>
                <button type="submit" class="custom-btn">تسجيل </button>
            </form><!--End dialog-form-->
            <div class="dont-have">
                لديك حساب بالفعل ..
                <a class="popup-text" id="login-dialog-link" href="#login-dialog" data-effect="mfp-zoom-out">إدخل الأن</a>
            </div>           
        </div><!--End login-dialog-->

    </body>
    <script>    <% if (login_error) {%>
$(document).ready(function () {
    $("#login-dialog-link").click();
});
        <% }%>

$('#email').on('keyup bulr', function () {
       $.post('AvailableEmail', {email: $('#email').val()}, function (responseText) {
        if (responseText == "") {
            $('#email_hint').hide();
        } else if (responseText == "not_email") {
            $('#email_hint').text("بريد الكتروني خاطيء");
            $('#email_hint').show();
        } else if (responseText == "registerd") {
            $('#email_hint').text("بريد الكتروني مستخدم بالفعل");
            $('#email_hint').show();
        } else if (responseText == "valid") {
            $('#email_hint').text("");
            $('#email_hint').hide();
        }
                        });
                

});
    </script>
</html>
