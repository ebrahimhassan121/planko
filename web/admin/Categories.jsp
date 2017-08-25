
<%@page import="beans.Categories"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Categories_model"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <%@include file="init.jsp" %>
    </head>
    <body>
        <%            String state = request.getParameter("state");
        %>
        <%@include file="Header.jsp" %>
        <div class="page-container">
            <%@include file="SidePar.jsp" %>
            <div class="page-content-wrapper">
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content">
                    <h1 class="page-title caption-subject font-green-madison bold ">   Categories
                        <small>Dashboard/</small> <small class="font-blue-madison-madison bold">Add Categorie </small>
                    </h1>

                    <%
                        String msgid = request.getParameter("cid");

                        String Cname = "";
                        Categories_model categories_model = new Categories_model();
                        if (msgid != null && !msgid.isEmpty()) {
                            Categories c = categories_model.getCategorie(msgid);
                            Cname = c.getCategoryNam() ;
                            categories_model.deletCategorie(msgid);
                            
                    %>
                    <script>
                        toastr.success("تم مسح  فئة  " + " <%=Cname%> بنجاح");
                    </script>
                    <%  }
                        ArrayList<Categories> categories = categories_model.Select_ALL_Categories();

                    %>
                    <!-- END PAGE HEADER-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet box green">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class=""></i> Categories Section
                                    </div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse"> </a>
                                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                        <a href="javascript:;" class="reload"> </a>
                                    </div><!--End tools-->
                                </div><!-- portlet-title-->
                                <div class="portlet-body">
                                    <form action="../addCategory" enctype="multipart/form-data" accept-charset=""method="post">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <div class="fileinput fileinput-new" data-provides="fileinput">
                                                        <div class="fileinput-new thumbnail" style="width: 150px; height: 150px;">
                                                            <img src="http://localhost/images/product/defult.png" alt="" /> </div>
                                                        <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;"> </div>
                                                        <div>
                                                            <span class="btn default btn-file">
                                                                <span class="fileinput-new"> Select image </span>
                                                                <span class="fileinput-exists"> Change </span>
                                                                <input type="file" name="photo"> </span>
                                                            <a href="javascript:;" class="btn default fileinput-exists" data-dismiss="fileinput"> Remove </a>
                                                        </div>
                                                    </div>
                                                </div><!--End Form-group-->
                                            </div><!--End Col-->
                                            <div class="form-group">
                                                <label class="col-md-2 control-label"><h4>Category Name</h4></label>
                                                <div class="col-md-8">
                                                    <div class="input-group">
                                                        <span class="input-group-addon ">
                                                            <i class="fa fa-bars"></i>
                                                        </span>
                                                        <input  class="form-control" placeholder="Category Name"  name="name" value=""> 
                                                    </div>
                                                </div>
                                            </div>
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

                    <div class="profile-content">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="portlet light ">
                                    <div class="portlet-title ">
                                        <div class="caption caption-md">
                                            <i class="fa fa-bars"></i>
                                            <span class="caption-subject font-blue-madison bold uppercase">All Categories</span>
                                        </div>
                                    </div>
                                </div><!-- portlet-title-->
                            </div><!--End portlet box green-->
                        </div><!--End Col-md--12-->
                    </div><!--End Row-->
                    <div class="portlet-body form">
                        <div class="table-scrollable">
                            <table class="table table-striped table-hover">
                                <thead>
                                    <tr>
                                        <th>Category Name</th>
                                        <th>Category Image</th>
                                        <th>Actions </th>
                                    </tr>
                                </thead>

                                <%for (Categories cat : categories) {

                                %>

                                <tbody>
                                    <tr>
                                        <td >
                                            <h3> <%=cat.getCategoryNam()%></h3>
                                        </td>
                                        <td>
                                            <img src=' <%= cat.getPhoto()%>'height="100" width="100">
                                        </td>
                                        <td>
                                            <a href="Categories.jsp?uid=" class="btn green btn-sm btn-outline sbold uppercase">
                                                Update </a>
                                            <a href="Categories.jsp?cid=<%=cat.getCategoriesID()%>" class="btn green btn-sm btn-outline sbold uppercase">
                                                <i class="fa date"></i> Delete </a>
                                        </td>
                                    </tr>
                                </tbody>
                                <%}%>
                            </table>
                        </div><!--End table-scrollable-->

                    </div>

                </div><!-- END CONTENT BODY -->

            </div><!-- END page-content-wrapper -->

        </div><!-- END Page CONTAINER -->

        <%@include file="Footer.jsp" %>

        <%if (state != null) {%>
        <%if (state.equals("inserted")) {%>
        <script>
            toastr.success("تم أضافة  فئة جديدة بنجاح")
        </script>
        <%}%>
        <%if (state.equals("un")) {%>
        <script>
            toastr.error(" يجب عليك ملئ جميع البيانات")
        </script>
        <%}
            }%>

    </body>

</html>