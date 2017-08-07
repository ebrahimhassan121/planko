<%-- 
    Document   : Header_2
    Created on : Jul 18, 2017, 5:16:15 PM
    Author     : AHMED 50070
--%>

<%@page import="Model.Favourite_model"%>
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
                            <img src="<%=session.getAttribute("avatar").toString()%>" alt="profile">                                
                        </a><!--End my-account-->
                        <ul class="dropdown-menu">
                            <li>
                                <a  href="Profile.jsp"> حسابي</a>
                            </li>
                            <li>
                                <a href="Logout">تسجيل الخروج</a>
                            </li>
                        </ul>
                    </div><!--End Dropdown-->
                    <a href="Profile.jsp" class="saved-head">
                        <div class="saved-icon" title="المحفوظات">
                            <i class="fa fa-suitcase"></i>
                            <% 
                                Model.Favourite_model favourite_model=new Favourite_model();
                                String count=favourite_model.select_favouritCounteByQuestionIDANDUSERID((session.getAttribute("ID")!=null )? session.getAttribute("ID").toString():"");
                            %>
                            <span><%=count%></span>
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

    </body>
</html>
