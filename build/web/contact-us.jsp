<%-- 
    Document   : contact-us
    Created on : Jul 21, 2017, 2:58:59 PM
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
                                        <form class="contact-form" method="" action="">
                                            <div class="col-md-5 col-sm-6">
                                                <div class="form-group has-icon">
                                                    <input class="form-control" type="text" placeholder="اسم المستخدم">
                                                    <i class="fa fa-user"></i>
                                                </div><!--End Form-group-->
                                                <div class="form-group has-icon">
                                                    <input class="form-control" type="text" placeholder="رقم الهاتف">
                                                    <i class="fa fa-mobile"></i>
                                                </div><!--End Form-group-->
                                                <div class="form-group has-icon">
                                                    <input class="form-control" type="email" placeholder="البريد الإلكترونى">
                                                    <i class="fa fa-briefcase"></i>
                                                </div><!--End Form-group-->
                                                <div class="form-group has-icon">
                                                    <input class="form-control" type="text" placeholder="العنوان">
                                                    <i class="fa fa-map-marker"></i>
                                                </div><!--End Form-group-->
                                            </div><!--End Col-md-5-->
                                            <div class="col-md-7 col-sm-6">
                                                <div class="form-group has-icon">
                                                    <textarea class="form-control" placeholder="الرسالة"></textarea>
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
                                                هنا يتم كتابة العنوان كاملا
                                            </li>                     
                                            <li class="col-md-4 col-sm-6">
                                                <i class="fa fa-print"></i>
                                                01092508803
                                            </li>
                                            <li class="col-md-4 col-sm-6">
                                                <a href="">
                                                    <i class="fa fa-facebook"></i>
                                                    www.facebook.com
                                                </a>
                                            </li>
                                            <li class="col-md-4 col-sm-6">  
                                                <i class="fa fa-mobile"></i>
                                                01092508803
                                            </li>
                                            <li class="col-md-4 col-sm-6">
                                                <i class="fa fa-envelope"></i>
                                                example@example.example
                                            </li>
                                            <li class="col-md-4 col-sm-6">
                                                <a href="">
                                                    <i class="fa fa-twitter"></i>
                                                    www.twitter.com
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
