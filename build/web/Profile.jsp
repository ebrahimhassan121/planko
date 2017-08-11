<%-- 
    Document   : Profile
    Created on : Jul 21, 2017, 3:04:25 PM
    Author     : AHMED 50070
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Categories"%>
<%@page import="Model.Categories_model"%>
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
            user_bean user_bean = null;
            Model.Users_model users_model = new Users_model();
            boolean toasterMessageFlag = false;
            if (request.getAttribute("toasterMessage") != null) {
                toasterMessageFlag = true;
            }
            if (request.getAttribute("register") != null) {
                user_bean users_register = (user_bean) request.getAttribute("register");
                user_bean = users_model.select_user(users_register.getEmail(), users_register.getPassword());
                session.setAttribute("email", user_bean.getEmail());
                session.setAttribute("password", user_bean.getPassword());
                session.setAttribute("avatar", user_bean.getAvatar());
                session.setAttribute("ID", user_bean.getUserID());
                register_flag = true;
            } else if (session.getAttribute("email") != null || session.getAttribute("password") != null) {
                String email = session.getAttribute("email").toString();
                String password = session.getAttribute("password").toString();
                user_bean = users_model.select_user(email, password);
                System.out.println(user_bean.getEmail() + "/" + user_bean.getName());

            } else {
                response.sendRedirect("Home.jsp");
                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
                response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
                response.setDateHeader("Expires", 0);
                return;
            }
        %>
        <script>
            $(document).ready(function() {
    
                 var url = window.location.href;
                 if (url.indexOf('?mq')!=-1){
                     $('#my_link a').click();
                 }
});
        </script>
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

                                        <li role="presentation"  id="wishlist_link"><a href="#wishlist" aria-controls="wishlist" role="tab" data-toggle="tab">المفضلة</a></li>

                                        <li role="presentation" id="my_link"><a href="#my-questions" aria-controls="my-questions" role="tab" data-toggle="tab">أسئلتى</a></li>

                                        <li role="presentation" id="my_Answers-link"><a href="#my-answers" aria-controls="my-answers" role="tab" data-toggle="tab">إجاباتى</a></li>

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
                                        <div role="tabpanel" class="tab-pane fade" id="wishlist">
                                            <div id="all_QuestionContent">

                                            </div>
                                            <div>
                                                <a href="" onclick="loadNowPlaying(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                                <br>
                                            </div>

                                        </div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="my-questions">
                                            <div id="my_QuestionContent">

                                            </div>
                                            <div>
                                                <a href="" onclick="loadmyPlaying(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                                <br>
                                            </div>
                                        </div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="my-answers">
                                            <div id="my_Answers">

                                            </div>
                                            <div>
                                                <a href="" onclick="loadAnswers(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                                <br>
                                            </div>
                                        </div><!--End tabpanel-->
                                        <div role="tabpanel" class="tab-pane fade" id="my-categories">
                                            <%
                                                Categories_model categories_model = new Categories_model();
                                                ArrayList<Categories> array_categories = categories_model.Select_ALL_Categories();
                                                for (int i = 0; i < array_categories.size(); i++) {
                                                    String categoryID = array_categories.get(i).getCategoriesID();
                                                    String categoryName = array_categories.get(i).getCategoryNam();
                                                    String categoryPhoto = array_categories.get(i).getPhoto();

                                            %>
                                            <div class="col-md-3">
                                                <div class="widget-box">
                                                    <div class="widget-img">
                                                        <img src="<%=categoryPhoto%>" alt="<%=categoryName%>">
                                                    </div><!--End widget-img-->
                                                    <div class="widget-name">
                                                        <h3 class="name"><%=categoryName%></h3>
                                                    </div><!--End widget-name-->
                                                    <div class="widget-hover">
                                                        <ul class="widget-hover-links">
                                                            <li>
                                                                <a href="cat/<%=categoryName%>" title="مشاهدة">
                                                                    <i class="fa fa-link"></i>
                                                                </a>
                                                            </li>
                                                            <!--li>
                                                                <a href="#" title="متابعة">
                                                                    <i class="fa fa-feed"></i>
                                                                </a>
                                                            </li-->
                                                        </ul>
                                                    </div><!--End Widget-hover-->
                                                </div><!---End Widget-box-->
                                            </div><!--END Col-md-3-->

                                            <% }%>


                                        </div><!--End tabpanel-->
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
                                        <div class="side-widget-content" id="profile-avatar">
                                            <%@include file="profile-avatar.jsp" %>


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

        <script>
            $(document).ready(function () {
                $("#all_QuestionContent").append($('<div id="question0_3"></div>').hide());
                $('#question0_3').load('fav.jsp?selection=ALL&&f=0&&t=3');
                $('#question0_3').show();
                $("#my_QuestionContent").append($('<div id="my0_3"></div>').hide());
                $('#my0_3').load('my-question.jsp?selection=my&&f=0&&t=3');
                $('#my0_3').show();
                
                $("#my_Answers").append($('<div id="myAnswers0_3"></div>').hide());
                $('#myAnswers0_3').load('my-replys.jsp?f=0&&t=3');
                $('#myAnswers0_3').show();
                
            });

            var qf = 0;
            var qt = 3;
            function loadNowPlaying(e) {
                qf = qf + 3;
                // qt=qt+3;
                var idQ = qf + '_' + qt;
                var Url = 'fav.jsp?selection=ALL&&f=' + qf + '&&t=' + qt + '';
                console.log(idQ + "," + Url);
                e.preventDefault();
                if ($('#wishlist_link').hasClass('active')) {
                    $("#all_QuestionContent").append($('<div id="question' + idQ + '"></div>').hide());
                    $('#question' + qf + '_' + qt + '').load(Url);
                    $('#question' + qf + '_' + qt + '').show(500);
                }
            }


            var mqf = 0;
            var mqt = 3;
            function loadmyPlaying(e) {
                mqf = mqf + 3;
                // qt=qt+3;
                var idQ = mqf + '_' + mqt;
                var Url = 'my-question.jsp?selection=my&&f=' + mqf + '&&t=' + mqt + '';
                console.log(idQ + "," + Url);
                e.preventDefault();
                if ($('#my_link').hasClass('active')) {
                    $("#my_QuestionContent").append($('<div id="my' + idQ + '"></div>').hide());
                    $('#my' + mqf + '_' + mqt + '').load(Url);
                    $('#my' + mqf + '_' + mqt + '').show(500);
                }
            }
            var myAnsF=0;
            var myAnsT=3;
            function loadAnswers(e){
                   myAnsF = myAnsF + 3;
                // qt=qt+3;
                var idQ = myAnsF + '_' + myAnsT;
                var Url = 'my-replys.jsp?f=' + myAnsF + '&&t=' + myAnsT + '';
                console.log(idQ + "," + Url);
                e.preventDefault();
                if ($('#my_Answers-link').hasClass('active')) {
                    $("#my_Answers").append($('<div id="myAns' + idQ + '"></div>').hide());
                    $('#myAns' + myAnsF + '_' + myAnsT + '').load(Url);
                    $('#myAns' + myAnsF + '_' + myAnsT + '').show(500);
                }
                
            }


            var inputFile;
            function readURL(input) {

                if (input.files && input.files[0]) {
                    var reader = new FileReader();

                    reader.onload = function (e) {
                        $('#profile-image').attr('src', e.target.result);
                    },
                            inputFile = input.files[0];
                    reader.readAsDataURL(input.files[0]);
                }
            }

            $("#image-upload").change(function () {
                readURL(this);
                $('#button-upload').removeClass('hidden');
                $('#reset-upload').removeClass('hidden');
            });
            $('#reset-upload').click(function () {
                $('#profile-image').attr('src', '<%=userAcount.getAvatar()%>');
                $('#button-upload').addClass('hidden');
                $('#reset-upload').addClass('hidden');
            });
            $('#button-upload').click(function (e) {
                e.preventDefault();
                var file_data = inputFile;   // Getting the properties of file from file field
                var form_data = new FormData();                  // Creating object of FormData class
                form_data.append("avatar", file_data);            // Appending parameter named file with properties of file_field to form_data
                $.ajax({
                    url: "UploadAvatar",
                    dataType: 'script',
                    cache: false,
                    contentType: false,
                    processData: false,
                    data: form_data, // Setting the data attribute of ajax with file_data
                    type: 'POST',
                    error: function (jqXHR, textStatus, errorThrown) {
                        var m = (jqXHR.responseText);
                        if (m == "success") {
                            location.reload();
                        } else {
                            window.location = "Home.jsp";
                        }
                    }
                });


            });

        </script>
    </body>

</html>
