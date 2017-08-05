<%-- 
    Document   : Profile
    Created on : Jul 21, 2017, 3:04:25 PM
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

        <%
            boolean register_flag = false;
            user_bean user = null;
            Model.Users_model users_model = new Users_model();
            boolean toasterMessageFlag = false;
            if (request.getAttribute("toasterMessage") != null) {
                toasterMessageFlag = true;
            }
            if (request.getAttribute("register") != null) {
               user_bean users_register=(user_bean) request.getAttribute("register");
               user=users_model.select_user(users_register.getEmail(), users_register.getPassword());
                session.setAttribute("email", user.getEmail());
                session.setAttribute("password", user.getPassword());
                session.setAttribute("avatar", user.getAvatar());
                session.setAttribute("ID", user.getUserID());
                register_flag = true;
            } else if (session.getAttribute("email") != null || session.getAttribute("password") != null) {
                String email = session.getAttribute("email").toString();
                String password = session.getAttribute("password").toString();
                user = users_model.select_user(email, password);
                System.out.println(user.getEmail() + "/" + user.getName());

            } else {
                response.sendRedirect("Home.jsp");
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
                response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
                response.setDateHeader("Expires", 0);
                return;
            }
        %>
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
                                    <%=user.getName()%>
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
                                <% if (register_flag) {%>
                                <div class="alert alert-success alert-dismissable">
                                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                    <strong>تم التسجيل بلنكوا بنجاح</strong> 
                                </div>  
                                <% } %>
                                <%
                                    if (user.getAbout().equals("") || user.getAddress().equals("") || user.getPhone().equals("")) {
                                %>
                                <div class="alert alert-danger">
                                    <strong>برجاء استكمال مليء بياناتك</strong> 
                                </div>
                                <%
                                    }
                                %>
                            </div>
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
                                            <form class="form" action="UpdateProfile" method="post">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text"  placeholder="اسم المستخدم" name="name" value="<%=user.getName()%>" required />
                                                            <i class="fa fa-user"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text"  placeholder="رقم التليفون" value="<%=user.getPhone()%>"  name="phone">
                                                            <i class="fa fa-mobile"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="email" placeholder="البريد الإلكترونى" name="email" value="<%=user.getEmail()%>" required />
                                                            <i class="fa fa-envelope-o"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text" placeholder="العنوان" value="<%=user.getAddress()%>" name="address" required>
                                                            <i class="fa fa-map-marker"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text" placeholder="حساب فيسبوك" value="<%=user.getFacebook()%>" name="facebook">
                                                            <i class="fa fa-facebook"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-4">
                                                        <div class="form-group has-icon">
                                                            <input class="form-control" type="text" placeholder="حساب تويتر" value="<%=user.getTwitter()%>" name="twitter">
                                                            <i class="fa fa-twitter"></i>
                                                        </div><!--End Form-group-->
                                                    </div><!--End Col-->
                                                    <div class="col-md-12">
                                                        <div class="form-group has-icon">
                                                            <textarea class="form-control" placeholder="عن المستخدم" name="about" required><%=user.getAbout()%></textarea>
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
                                                <form>
                                                    <div class="card-img" >

                                                        <div class="fileinput fileinput-new" data-provides="fileinput">
                                                            <div class="fileinput-preview" data-trigger="fileinput">
                                                                <img src="./assets/site/images/avatars/team1.jpg" id="profile-image" alt="profile image">
                                                            </div>
                                                            <div class="image-hover">
                                                                <span class="btn-file">
                                                                    <span class="fileinput-new"> 
                                                                        <i class="fa fa-camera" title="أختر صورة"></i>
                                                                    </span> 
                                                                    <input id="image-upload" type="file" name="..."> 
                                                                </span>

                                                            </div><!--End Image-hover-->

                                                        </div><!--End Card-image-->
                                                    </div>
                                                    <div class="row">
                                                        <button class="hidden custom-btn pull-right " id="reset-upload" type="reset" style="float: right !important;"><span class="glyphicon glyphicon-remove"></span></button>
                                                        <button class="hidden custom-btn pull-right left" id="button-upload" type="submit"><span class="glyphicon glyphicon-ok"></span></button>
                                                    </div>
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
 
<script type="text/javascript">
  $(document).ready(function (){
   /*   
      if (<%=toasterMessageFlag%>) {
          toastr.options.closeButton = false;
          toastr.success('تم التحديث بنجاح', '');
        }else{
            toastr.error('خطأ في تحديث البيانات','');
        }
        
     */   
  });
</script>
    <script>
        function readURL(input) {

            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#profile-image').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }

        $("#image-upload").change(function () {
            readURL(this);
            $('#button-upload').removeClass('hidden');
            $('#reset-upload').removeClass('hidden');
        });
        
    </script>
</html>
