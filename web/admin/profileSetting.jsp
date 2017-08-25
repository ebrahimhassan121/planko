<%-- 
    Document/* global Command */

   : profileSetting
    Created on : Jul 5, 2017, 5:45:15 PM
    Author     : AHMED 50070
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>

        <%@include file="init.jsp" %>

    </head>

    <!-- END HEAD -->
    <body >

        <%@include file="Header.jsp" %>
        <!-- BEGIN CONTAINER -->
        <div class="page-container">


            <!-- BEGIN CONTENT -->
            <div class="page-content-wrapper">
                <%@include file="SidePar.jsp" %>
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content">
                    <!-- BEGIN PAGE HEADER-->
                    <h1 class="page-title">  Profile | Account
                        <small>user account page</small>
                    </h1>

                    <!-- END PAGE HEADER-->
                    <div class="row">
                        <div class="col-md-12">

                            <!-- BEGIN PROFILE CONTENT -->
                            <div class="profile-content">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="portlet light ">
                                            <div class="portlet-title tabbable-line">
                                                <div class="caption caption-md">
                                                    <i class="icon-globe theme-font hide"></i>
                                                    <span class="caption-subject font-blue-madison bold uppercase">Profile Account</span>
                                                </div>
                                                <ul class="nav nav-tabs">

                                                    <li>
                                                        <a href="#tab_1_2" data-toggle="tab">Change profile picture </a>
                                                    </li>
                                                    <li>
                                                        <a href="#tab_1_3" data-toggle="tab">Change Password</a>
                                                    </li>

                                                </ul>
                                            </div>
                                            <div class="portlet-body">
                                                <div class="tab-content">
                                                    <!-- PERSONAL INFO TAB -->


                                                    <!-- END PERSONAL INFO TAB -->
                                                    <!-- CHANGE AVATAR TAB -->
                                                    <div class="tab-pane active" id="tab_1_2">
                                                        <form action="../../controller?key=changeimg&&type=profile&&id=" 
                                                              enctype="multipart/form-data" method="post" >
                                                            <div class="form-group">
                                                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                                                    <div class="fileinput-new thumbnail" style="width: 150px; height: 150px;">
                                                                        <img src="http://localhost/images/product/defult.png" alt="" /> </div>
                                                                    <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"> </div>
                                                                    <div>
                                                                        <span class="btn default btn-file">
                                                                            <span class="fileinput-new"> Select image </span>
                                                                            <span class="fileinput-exists"> Change </span>
                                                                            <input type="file" name="file"> </span>
                                                                        <a href="javascript:;" class="btn default fileinput-exists" data-dismiss="fileinput"> Remove </a>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <div class="margin-top-10">
                                                               
                                                                    <button type="submit" class="btn green">Change</button>
                                                                    <button type="reset" class="btn  grey-salsa btn-outline">Cancel</button>


                                                            </div>
                                                        </form>
                                                    </div>
                                                    <!-- END CHANGE AVATAR TAB -->
                                                    <!-- CHANGE PASSWORD TAB -->
                                                    <div class="tab-pane" id="tab_1_3">
                                                        <div class="portlet-body form">
                                                            <!-- BEGIN FORM-->

                                                            <form action="../../controller?key=change&&id=" method="post" class="form-horizontal">
                                                                <div class="form-body">

                                                                    <div class="form-group">
                                                                        <label class="col-md-2 control-label"></label>
                                                                        <div class="col-md-8">
                                                                            <div class="input-group">
                                                                                <span class="input-group-addon ">
                                                                                    <i class="fa fa-key"></i>
                                                                                </span>
                                                                                <input type="password" class="form-control " 

                                                                                       placeholder="Current Password"   name="cpass"> </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-group">
                                                                        <label class="col-md-2 control-label"></label>
                                                                        <div class="col-md-8">
                                                                            <div class="input-group">
                                                                                <span class="input-group-addon ">
                                                                                    <i class="fa fa-key"></i>
                                                                                </span>
                                                                                <input type="password" class="form-control "  placeholder="New Password" name="npass"> 
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <div class="form-group">
                                                                        <label class="col-md-2 control-label"></label>
                                                                        <div class="col-md-8">
                                                                            <div class="input-group">
                                                                                <span class="input-group-addon ">
                                                                                    <i class="fa fa-key"></i>
                                                                                </span>
                                                                                <input type="password" class="form-control "  placeholder="Retype New Password" name="npass"> 
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="form-actions">
                                                                        <div class="row">
                                                                            <div class="col-md-offset-5 col-md-9">
                                                                                <button type="submit" class="btn green">update</button>
                                                                                <button type="reset" class="btn  grey-salsa btn-outline">Cancel</button>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </form>
                                                        </div><!-- END CONTENT BODY -->
                                                    </div>
                                                    <!-- END CHANGE PASSWORD TAB -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END PROFILE CONTENT -->
                        </div>
                    </div>
                </div>
                <!-- END CONTENT BODY -->
            </div>
            <!-- END CONTENT -->
            <!-- BEGIN QUICK SIDEBAR -->
            <a href="javascript:;" class="page-quick-sidebar-toggler">
                <i class="icon-login"></i>
            </a>

            <!-- END QUICK SIDEBAR -->
        </div>
        <!-- END CONTAINER -->
        <!-- BEGIN FOOTER -->
        <%@include file="Footer.jsp" %>
        <!-- END FOOTER -->



        <!--BEGIN PAGE LEVEL PLUGINS
        ========================== -->
        <script src="../../assets/admin/vendor/plugins/bootstrap-fileinput/bootstrap-fileinput.js" type="text/javascript"></script>
        <script src="../../assets/admin/vendor/plugins/jquery.sparkline.min.js" type="text/javascript"></script>

        <!-- BEGIN THEME GLOBAL SCRIPTS 
        =============================== -->
        <script src="../../assets/admin/js/scripts/app.min.js"></script>
        <script src="../../assets/admin/js/pages/profile.min.js" type="text/javascript"></script>


    </body>

</html>