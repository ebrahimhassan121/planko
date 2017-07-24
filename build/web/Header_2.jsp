<%-- 
    Document   : Header_2
    Created on : Jul 18, 2017, 5:16:15 PM
    Author     : AHMED 50070
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

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
                        <a href="Profile.jsp" class="my-account dropdwon">
                            <img src="./assets/site/images/avatars/team1.jpg" alt="profile">                                
                        </a><!--End my-account-->
                        <ul class="dropdown-menu">
                            <li>
                                <a class="popup-text" href="#register-dialog" data-effect="mfp-move-from-top"> التسجيل</a>
                            </li>
                            <li>
                                <a href="#">تسجيل الخروج</a>
                            </li>
                        </ul>
                    </div><!--End Dropdown-->
                    <a href="Profile.jsp" class="saved-head">
                        <div class="saved-icon" title="المحفوظات">
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
            <form class="dialog-form">
                <div class="form-group">
                    <input class="form-control" placeholder="البريد الالكترونى" type="email">
                </div><!--End form-group-->
                <button type="submit" class="custom-btn">إسترجاع كلمة المرور</button>
            </form><!--End dialog-form-->
        </div><!--End login-dialog-->
        <div id="register-dialog" class="mfp-with-anim mfp-hide mfp-dialog dialog-box">
            <form class="dialog-form">
                <div class="form-group text-center">
                    <a href="" class="login-with-fb">
                        <i class="fa fa-facebook"></i>
                        التسجيل من خلال فيسبوك
                    </a>
                    <span class="or">أو </span>
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control" placeholder="الأسم الأول" type="text">
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control" placeholder="الأسم الأخير" type="text">
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control" placeholder="البريد الالكترونى" type="email">
                </div><!--End form-group-->
                <div class="form-group">
                    <input class="form-control"  placeholder="كلمة السر" type="password">
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
                <a class="popup-text" href="#login-dialog" data-effect="mfp-zoom-out">إدخل الأن</a>
            </div>           
        </div><!--End login-dialog-->

    </body>
</html>
