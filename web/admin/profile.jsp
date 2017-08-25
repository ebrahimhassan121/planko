
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
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
                                            <li class="active">
                                                <a href="#tab_1_1" data-toggle="tab">Personal Info</a>
                                            </li>

                                        </ul>


                                    </div>

                                    <div class="portlet-body">
                                        <div class="tab-content">
                                            <!-- PERSONAL INFO TAB -->
                                            <div class="tab-pane active" id="tab_1_1">




                                                <form action="../../controller?key=AdminReg" method="post" class="form-horizontal">
                                                    <div class="form-body">

                                                        <div class="form-group">
                                                            <label class="col-md-1 control-label"> Name</label>
                                                            <label class="col-md-1 control-label"></label>

                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon ">
                                                                        <i class="fa fa-user"></i>
                                                                    </span>
                                                                    <input type="text" class="form-control " readonly="" 

                                                                           value=""
                                                                           > 
                                                                </div>
                                                            </div>
                                                        </div>
                    <div class="form-group">
                        <label class="col-md-1 control-label">Email</label>
                        <label class="col-md-1 control-label"></label>

                        <div class="col-md-8">
                            <div class="input-group">
                                <span class="input-group-addon ">
                                    <i class="fa fa-envelope"></i>
                                </span>
                                <input type="text" class="form-control " readonly="" value="" >                                                                 
                            </div>
                        </div>
                    </div>

                                                        <div class="form-group">
                                                            <label class="col-md-1 control-label">Password</label>
                                                            <label class="col-md-1 control-label"></label>

                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon ">
                                                                        <i class="fa fa-key"></i>
                                                                    </span>
                                                                    <input  class="form-control " readonly=""
                                                                            value=""
                                                                            > 
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="col-md-1 control-label">Phone</label>
                                                            <label class="col-md-1 control-label"></label>

                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon ">
                                                                        <i class="fa fa-phone"></i>
                                                                    </span>
                                                                    <input class="form-control " readonly=""


                                                                           value=""
                                                                           >  
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-1 control-label">Address</label>
                                                            <label class="col-md-1 control-label"></label>

                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon ">
                                                                        <i class="fa fa-link"></i>
                                                                    </span>
                                                                    <input class="form-control " readonly=""
                                                                           value=""
                                                                           > 
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="col-md-1 control-label">Type</label>
                                                            <label class="col-md-1 control-label"></label>

                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon ">
                                                                        <i class="fa fa-puzzle-piece"></i>
                                                                    </span>
                                                                    <input  class="form-control " readonly=""
                                                                            value=""
                                                                            > 



                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label class="col-md-1 control-label">Country</label>
                                                            <label class="col-md-1 control-label"></label>

                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon ">
                                                                        <i class="fa fa-globe"></i>
                                                                    </span>
                                                                    <input  class="form-control " readonly=""
                                                                            value=""
                                                                            >
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="col-md-1 control-label">City</label>
                                                            <label class="col-md-1 control-label"></label>

                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon ">
                                                                        <i class="fa fa-flag"></i>
                                                                    </span>
                                                                    <input  class="form-control " readonly=""
                                                                            value=""
                                                                            > 
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div class="form-group">
                                                            <label class="col-md-1 control-label">Branche</label>
                                                            <label class="col-md-1 control-label"></label>

                                                            <div class="col-md-8">
                                                                <div class="input-group">
                                                                    <span class="input-group-addon ">
                                                                        <i class="fa fa-shield"></i>
                                                                    </span>
                                                                    <input  class="form-control " readonly=""
                                                                            value=""
                                                                            > 
                                                                </div>
                                                            </div>
                                                        </div>


                                                        <!--EnD form-group-->

                                                    </div>
                                                </form>

                                            </div>
                                            <!-- END PERSONAL INFO TAB -->

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