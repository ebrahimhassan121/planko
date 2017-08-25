<%-- 
    Document   : Setting
    Created on : Jun 30, 2017, 9:05:54 PM
    Author     : AHMED 50070
--%>
<%@page import="beans.Setting"%>
<%@page import="Model.Setting_Model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="init.jsp" %>
    <body>
        <%            
            Setting_Model setting_model = new Setting_Model();
            Setting setting = setting_model.getSetting();
            String state = request.getParameter("state");
        %>
        <%@include file="Header.jsp" %>
        <div class="page-container">
            <%@include file="SidePar.jsp" %>
            <div class="page-content-wrapper">
                <div class="page-content">

                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet box green">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class=""></i> Setting Section
                                    </div>

                                </div><!-- portlet-title-->
                                <div class="portlet-body">
                                    <form action="../UpdateSetting" enctype="multipart/form-data" accept-charset=""method="post">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                                        <div class="fileinput-new thumbnail" style="width: 150px; height: 150px;">
                                                            <img src="<%=setting.getLogo()%>" alt="" /> </div>
                                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"> </div>
                                                        <div>
                                                            <span class="btn default btn-file">
                                                                <span class="fileinput-new"> Select image </span>
                                                                <span class="fileinput-exists"> Change </span>
                                                                <input type="file" name="logo" value="<%=setting.getLogo()%>"> </span>
                                                            <a href="javascript:;" class="btn default fileinput-exists" data-dismiss="fileinput"> Remove </a>
                                                        </div>
                                                    </div>
                                                </div><!--End Form-group-->
                                            </div><!--End Col-->
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <input  class="form-control " name="name" placeholder="Site Name" value="<%= setting.getSiteName()%>" > 
                                                </div><!--End Form-group-->
                                            </div><!--End Col-->
                                            <div class="form-group">
                                                <div class="col-md-4">
                                                    <input  class="form-control " name="address" placeholder="Site Address"value="<%= setting.getAddress()%>" > 
                                                </div><!--End Form-group-->
                                            </div><!--End Col-->
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control " name="phone" placeholder="Site Phone" value="<%= setting.getPhone()%>" > 
                                                </div><!--End Col-->
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control "name="facebook"  placeholder="FaceBook" value="<%= setting.getFaceBook()%>" > 
                                                </div><!--End Form-group-->
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control " name="twitter" placeholder="Site Twitter"value="<%= setting.getTwitter()%>"  > 
                                                </div><!--End Form-group-->
                                            </div><!--End col-->
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control " name="google" placeholder="Site Google+" value="<%= setting.getGoogle()%>"  >
                                                </div><!--End Form-group-->
                                            </div><!--End col-->
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control " name="email" placeholder="Site Email" value="<%= setting.getEmail()%>"  >
                                                </div><!--End Form-group-->
                                            </div><!--End col-->
                                        </div><!--End Row-->
                                        <div class="form-actions">
                                            <div class="row">
                                                <div class="col-md-offset-10 col-md-12">
                                                    <button type="submit" class="btn green">Save</button>
                                                    <button type="reset" class="btn  grey-salsa btn-outline">Cancel</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div><!--end portlet-body-->
                            </div><!--End Porle-tbox-->
                        </div><!--End Col-md-12-->
                    </div><!--End row-->
                </div><!--End page content-->
            </div><!--End page content wrapper -->
        </div><!--End page container -->
        <%@include file="Footer.jsp" %>
      
        <%if(state!=null){%>
        <%if(state.equals("updated")){%>
        <script>
            toastr.success("تم تحديث البيانات بنجاح")
        </script>
        <%}%>
        <%if(state.equals("un")){%>
        <script>
            toastr.error(" يجب عليك مليئ جميع البيانات")
        </script>
        <%}}%>
    </body>
</html>
