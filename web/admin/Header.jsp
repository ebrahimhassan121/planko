<%-- 
    Document   : Header
    Created on : Jun 18, 2017, 7:43:23 PM
    Author     : AHMED 50070
--%>


<%@page import="Model.Setting_Model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css" rel="stylesheet" />

    <%--
    <%

        Admin admin = (Admin) session.getAttribute("adm");
        String param = request.getParameter("state");
        if (admin == null) {

            response.sendRedirect("login.jsp");%>
    <%}%>

    <%
        /*عشان صوره البروفيل تبقى تتحدث */
        if (param != null) {
    %>
    <%if (param.equals("sucess")) {
            response.sendRedirect("DashBoard.jsp");%>
    <script type="text/javascript">
        toastr.success('تم تغير الصوره بنجاح', 'Notifications');
    </script>          
    <%}%>
    <%}%>
    --%>
    
    
    <body class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid">
        <!-- BEGIN HEADER -->
        <div class="page-header navbar navbar-fixed-top">
            <!-- BEGIN HEADER INNER -->
            <div class="page-header-inner ">
                <!-- BEGIN LOGO -->
                <div class="page-logo">
                    <a>  <img src="<%=new Setting_Model().getSetting().getLogo()%>"  width="100"  alt="logo" class="logo-default" /> </a>
                    <div class="menu-toggler sidebar-toggler">
                        <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
                    </div>
                </div>
                <!-- END LOGO -->
                <!-- BEGIN RESPONSIVE MENU TOGGLER -->

                <!-- END PAGE ACTIONS -->
                <!-- BEGIN PAGE TOP -->
                <div class="page-top">
                    <!-- BEGIN HEADER SEARCH BOX -->
                    <!-- DOC: Apply "search-form-expanded" right after the "search-form" class to have half expanded search box -->
                    <form class="search-form search-form-expanded" action="page_general_search_3.html" method="GET">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search..." name="query">
                            <span class="input-group-btn">
                                <a href="javascript:;" class="btn submit">
                                    <i class="icon-magnifier"></i>
                                </a>
                            </span>
                        </div>
                    </form>
                    <!-- END HEADER SEARCH BOX -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">



                            <li class="dropdown dropdown-user">
                                <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                    <img alt="" class="img-circle" src="" />
                                    <span class="username username-hide-on-mobile"> 

                                    </span>
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-default">
                                    <li>
                                        <a href="profile.jsp">
                                            <i class="fa fa-user"></i> My profile </a>
                                    </li>
                                    <li>
                                        <a href="profileSetting.jsp">
                                            <i class="fa fa-gear"></i> settings </a>
                                    </li>
                                    <li>
                                        <a href="../../controller?key=logout">
                                            <i class="fa fa-sign-out"></i> Log Out </a>
                                    </li>
                                </ul>
                            </li>


                        </ul>

                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
                <!-- END PAGE TOP -->
            </div>
            <!-- END HEADER INNER -->
        </div>
        <!-- END HEADER -->
        <!-- BEGIN HEADER & CONTENT DIVIDER -->

</html>
