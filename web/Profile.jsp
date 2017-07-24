<%-- 
    Document   : Profile
    Created on : Jul 21, 2017, 3:04:25 PM
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
            <%@include file="Header_2.jsp" %>
            <div class="main" role="main">
                <div class="page-head">
                    <div class="page-head-img">
                        <img src="./assets/site/images/categories/34.jpg" alt="...">
                    </div>
                    <div class="overlay">
                        <div class="container">
                            <div class="page-title">
                                <h3 class="title">
                                    محمود اسماعيل
                                </h3>
                            </div><!--End Page-Title-->
                            <div class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="index.html">
                                            <i class="fa fa-home"></i>
                                            الرئيسية
                                        </a>
                                    </li>
                                    <li class="active">
                                        <i class="fa fa-user"></i>
                                        حسابى
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
                                <div class="tabs">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#basic" aria-controls="basic" role="tab" data-toggle="tab">معلومات الحساب</a></li>

                                        <li role="presentation"><a href="#wishlist" aria-controls="wishlist" role="tab" data-toggle="tab">المفضلة</a></li>

                                        <li role="presentation"><a href="#my-questions" aria-controls="my-questions" role="tab" data-toggle="tab">أسئلتى</a></li>

                                        <li role="presentation"><a href="#my-answers" aria-controls="my-answers" role="tab" data-toggle="tab">إجاباتى</a></li>

                                        <li role="presentation"><a href="#my-categories" aria-controls="my-categories" role="tab" data-toggle="tab">الفئات</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="basic">
                                            <form class="form" action="" method="">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text" placeholder="اسم المستخدم">
                                                            <i class="fa fa-user"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text" placeholder="رقم التليفون">
                                                            <i class="fa fa-mobile"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="email" placeholder="البريد الإلكترونى">
                                                            <i class="fa fa-envelope-o"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text" placeholder="العنوان">
                                                            <i class="fa fa-map-marker"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text" placeholder="حساب فيسبوك">
                                                            <i class="fa fa-facebook"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text" placeholder="حساب تويتر">
                                                            <i class="fa fa-twitter"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-12">
                                                        <div class="form-group has-icon">
                                                            <textarea class="form-control" placeholder="عن المستخدم"></textarea>
                                                            <i class="fa fa-pencil-square-o"></i>
                                                        </div><!--End Form-group-->
                                                        <div class="form-group">
                                                            <button class="custom-btn pull-right" type="submit">تحديث المعلومات</button>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col 12-->
                                                </div><!--End row-->
                                            </form><!--End Form-->
                                        </div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="wishlist">...</div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="my-questions">...</div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="my-answers">...</div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="my-categories">...</div><!--End tabpanel-->
                                    </div>
                                </div><!--End Tabs-->
                            </div><!--End Col-md-6-->
                            <div class="col-md-3">
                                <div class="side-colume-right">
                                    <div class="side-widget">
                                        <div class="side-widget-title">
                                            <h2 class="title title-sm has-after">
                                                الحساب
                                            </h2>
                                        </div><!--End Side-widget-title-->
                                        <div class="side-widget-content">
                                            <div class="card">
                                                <form class="card-img" method="" action="">
                                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                                        <div class="fileinput-preview" data-trigger="fileinput">
                                                            <img src="./assets/site/images/avatars/team1.jpg" alt="profile image">
                                                        </div>
                                                        <div class="image-hover">
                                                            <span class="btn-file">
                                                                <span class="fileinput-new"> 
                                                                    <i class="fa fa-camera" title="أختر صورة"></i>
                                                                </span> 
                                                                <input type="file" name="..."> 
                                                            </span>
                                                            <!--
                                                                                                                        <a href="javascript:;" class="fileinput-exists" data-dismiss="fileinput">
                                                                                                                            <i class="fa fa-trash"></i>
                                                                                                                        </a>
                                                            -->
                                                        </div><!--End Image-hover-->
                                                    </div><!--End Card-image-->
                                                </form>
                                                <div class="card-content">
                                                    <h3 class="card-name">
                                                        محمود اسماعيل
                                                    </h3>
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
                                                </div><!--End card-content-->
                                            </div><!--End Card-->
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
