<%-- 
    Document   : contact-us
    Created on : Jul 21, 2017, 2:58:59 PM
    Author     : AHMED 50070
--%>

<%@page import="beans.Setting"%>
<%@page import="Model.Setting_Model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="init.jsp" %>
    </head>
    <body>
        <%
            Setting_Model setting_model = new Setting_Model();
            Setting setting = setting_model.getSetting();
            String state = request.getParameter("state");

        %>

        <%            if (state != null) {

                if (state.equals("up")) {
        %>
        <script>
            toastr.success("تم ارسال الرساله بنجاح الى الادارة ")
        </script>
        <%} %>
        <% if (state.equals("un")) { %>
        <script>
            toastr.error("يرجي كتابة البيانات كاملة")
        </script>
        <%
        }}%>


        <div class="wrapper">
            <div id="top-header" > <%@include file="top-header.jsp" %> </div>
            <div class="main" role="main">
                <div class="page-head">
                    <div class="page-head-img">
                        <img src="./assets/site/images/categories/34.jpg" alt="...">
                    </div>
                    <div class="overlay">
                        <div class="container">
                            <div class="page-title">
                                <h3 class="title">
                                    اتصل بنا
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
                                        <i class="fa fa-envelope-o"></i>
                                        اتصل بنا
                                    </li>
                                </ol>
                            </div><!--End page-breadcrumb-->
                        </div><!--End Container-->
                    </div><!--End Overlay-->
                </div><!--End Page-Head-->
                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10 col-md-offset-1">
                                <div class="contact-widget">
                                    <div class="widget-title">
                                        <h2 class="title title-md has-after"> تواصل معنا</h2>
                                    </div><!--End Widget-title-->
                                    <div class="widget-content">
                                        <form class="contact-form" method="post" action="Contact_Us">
                                            <div class="col-md-5 col-sm-6">
                                                <div class="form-group has-icon">
                                                    <input class="form-control" type="text" placeholder="اسم المستخدم" name="name">
                                                    <i class="fa fa-user"></i>
                                                </div><!--End Form-group-->
                                                <div class="form-group has-icon">
                                                    <input class="form-control" type="text" placeholder="رقم الهاتف" name="phone">
                                                    <i class="fa fa-mobile"></i>
                                                </div><!--End Form-group-->
                                                <div class="form-group has-icon">
                                                    <input class="form-control" type="email" placeholder="البريد الإلكترونى" name="email">
                                                    <i class="fa fa-briefcase"></i>
                                                </div><!--End Form-group-->
                                                <div class="form-group has-icon">
                                                    <input class="form-control" type="text" placeholder="العنوان" name="address">
                                                    <i class="fa fa-map-marker"></i>
                                                </div><!--End Form-group-->
                                            </div><!--End Col-md-5-->
                                            <div class="col-md-7 col-sm-6">
                                                <div class="form-group has-icon">
                                                    <textarea class="form-control" placeholder="الرسالة" name="message"> </textarea>
                                                    <i class="fa fa-envelope-o"></i>
                                                </div><!--End Form-group-->
                                                <div class="form-group">
                                                    <button class="custom-btn pull-right" type="submit">أرسل</button>
                                                </div><!--End Form-group-->
                                            </div><!--End Col-md-6-->

                                        </form>
                                    </div><!--End Widget-content-->
                                </div><!--End Contact-widget-->
                            </div><!--End Col-md-8-->
                            <div class="col-md-10 col-md-offset-1">
                                <div class="contact-widget">
                                    <div class="widget-title">
                                        <h2 class="title title-md has-after">معلومات التواصل</h2>
                                    </div><!--End Widget-title-->
                                    <div class="widget-content">
                                        <ul class="contact-info">
                                            <li class="col-md-4 col-sm-6">
                                                <i class="fa fa-home"></i>
                                                <%= setting.getAddress()%>
                                            </li>                     
                                            <li class="col-md-4 col-sm-6">
                                                <i class="fa fa-mobile"></i>
                                                <%= setting.getPhone()%>
                                            </li>
                                            <li class="col-md-4 col-sm-6">
                                                <i class="fa fa-envelope"></i>
                                                <%= setting.getEmail()%>
                                            </li>
                                            <li class="col-md-4 col-sm-6">
                                                <a href="<%= setting.getFaceBook()%>">
                                                    <i class="fa fa-facebook"></i>
                                                    <%= setting.getFaceBook()%>  
                                                </a>
                                            </li>
                                            <li class="col-md-4 col-sm-6">  
                                                <a href="<%= setting.getGoogle()%>">
                                                    <i class="fa fa-google-plus"></i>
                                                    <%= setting.getGoogle()%>
                                                </a>
                                            </li>

                                            <li class="col-md-4 col-sm-6">
                                                <a href="<%= setting.getTwitter()%>">
                                                    <i class="fa fa-twitter"></i>
                                                    <%= setting.getTwitter()%>
                                                </a>
                                            </li>
                                        </ul>
                                    </div><!--End widget-content-->
                                </div><!--End Contact-Widget-->
                            </div><!--End Col-md-10-->
                        </div><!--End Row-->
                    </div><!--End Container-->
                </div><!--End page-content-->
                <footer class="footer">
                    <div class="container">
                        <div class="copyright">
                            <p>
                                جميع الحقوق محفوظة <span>&copy;</span> كونسيلز 2017
                            </p>
                        </div><!--End Copyright-->

                        <div class="design-by">
                            <p>
                                تصميم <a href="#" target="_blank">Mohamed Ata</a>
                            </p>
                        </div><!--End Copyright-->
                    </div><!--End Container-->
                </footer><!--End Footer-->                
            </div><!--End main-->
        </div><!--End Wrapper-->

    </body>
</html>
