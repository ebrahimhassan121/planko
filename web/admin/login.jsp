<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">
    <!--<![endif]-->
    <!-- BEGIN HEAD -->

    <head>
        <%@include file="init.jsp" %>
    </head>

    <body class=" login">
        <!-- BEGIN LOGO -->
        <div class="logo">
            <a> <img src="../../assets/admin/images/img/logo_1.png" alt="" /> </a>
        </div>
        <!-- END LOGO -->
        <!-- BEGIN LOGIN -->
        <div class="content">
            <!-- BEGIN LOGIN FORM -->
            <form class="login-form" action="../../controller?key=loginadmin" method="post">

                <h3 class="form-title font-green">Sign In</h3>


                <div class="alert alert-danger display-hide">
                    <button class="close" data-close="alert"></button>
                    <span> Enter any username and password. </span>
                </div>


                <div class="form-group">
                    <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                    <label class="control-label visible-ie8 visible-ie9">Username</label>
                    <input class="form-control form-control-solid placeholder-no-fix" 

                           type="email" autocomplete="off" value=""
                           placeholder="Email" name="email" />
                </div>


                <div class="form-group">
                    <label class="control-label visible-ie8 visible-ie9">Password</label>
                    <input class="form-control form-control-solid placeholder-no-fix"

                           type="password" autocomplete="off" value=""
                           placeholder="Password" name="password" /> </div>
                <div class="form-actions">




                    <button type="submit" class="btn green uppercase">Login</button>
                    <label class="rememberme check mt-checkbox mt-checkbox-outline">
                        <input type="checkbox" name="remember" value="1" />Remember
                        <span></span>
                    </label>
                    <a href="javascript:;" id="forget-password" class="forget-password">Forgot Password?</a>
                </div>

            </form>
            <!-- END LOGIN FORM -->
            <!-- BEGIN FORGOT PASSWORD FORM -->
            <form class="forget-form" action="index.html" method="post">
                <h3 class="font-green">Forget Password ?</h3>
                <p> Enter your e-mail address below to reset your password. </p>
                <div class="form-group">
                    <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="Email" name="email" /> </div>
                <div class="form-actions">
                    <button type="button" id="back-btn" class="btn green btn-outline">Back</button>
                    <button type="submit" class="btn btn-success uppercase pull-right">Submit</button>
                </div>
            </form>
            <!-- END FORGOT PASSWORD FORM -->

        </div>
        <div class="copyright"> 
            2017 &copy; GSM Group Admin Panel By Ahmed Khaled
            <h5 target="_blank" >Mufic.com </h5>

        </div>






        <!--BEGIN PAGE LEVEL PLUGINS
        ========================== -->
        <script src="../../assets/admin/vendor/plugins/jquery-validation/js/jquery.validate.min.js"></script>
        <script src="../../assets/admin/vendor/plugins/jquery-validation/js/additional-methods.min.js"></script>
        <script src="../../assets/admin/vendor/plugins/select2/js/select2.full.min.js"></script>


        <!-- BEGIN PAGE LEVEL SCRIPTS
        ============================= -->
        <script src="../../assets/admin/js/pages/login.min.js"></script>

    </body>

</html>