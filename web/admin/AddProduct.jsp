
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

        <%@include file="Header.jsp" %>





        <div class="page-container">
            <%@include file="SidePar.jsp" %>

            <div class="page-content-wrapper">
                <!-- BEGIN CONTENT BODY -->
                <div class="page-content">

                    <h1 class="page-title caption-subject font-green-madison bold ">   Products
                        <small>Dashboard/</small> <small class="font-blue-madison-madison bold">Add Product </small>

                    </h1>
                    <!-- END PAGE HEADER-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet box green">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class=""></i> Products Section
                                    </div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse"> </a>
                                        <a href="#portlet-config" data-toggle="modal" class="config"> </a>
                                        <a href="javascript:;" class="reload"> </a>
                                    </div><!--End tools-->
                                </div><!-- portlet-title-->
                                <div class="portlet-body">
                                    <form action="../../controller?key=addproduct&&id=" enctype="multipart/form-data" accept-charset=""method="post">
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
                                                                <input type="file" name="file"> </span>
                                                            <a href="javascript:;" class="btn default fileinput-exists" data-dismiss="fileinput"> Remove </a>
                                                        </div>
                                                    </div>
                                                </div><!--End Form-group-->
                                            </div><!--End Col-->
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control " name="proid" placeholder="Product ID" value= > 
                                                </div><!--End Form-group-->
                                            </div><!--End Col-->
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control " name="proname" placeholder="Product Name" > 
                                                </div><!--End Col-->
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control "name="price"  placeholder="Price" value= > 
                                                </div><!--End Form-group-->
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control " name="quan" placeholder="Quantity" value= > 
                                                </div><!--End Form-group-->
                                            </div><!--End col-->
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input  class="form-control " name="red" placeholder="Offer" value= >
                                                </div><!--End Form-group-->
                                            </div><!--End col-->
                                            <div class="col-md-4">
                                                <div class="form-group">

                                                    <select name="cat" class="form-control">
                                                        <option disabled selected>Categories</option>
                                                      

                                                        <option value=""><</option>
                                                       
                                                    </select>

                                                </div>
                                            </div><!--End Col-->
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <textarea class="form-control "name="desc"  placeholder="Description" rows="4"> </textarea>
                                                </div>
                                            </div><!--End Col-->
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
                                            <span class="caption-subject font-blue-madison bold uppercase">Product in</span>
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
                                        <th>Prouduct Name</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Offer</th>
                                        <th>Image</th>
                                        <th>Actions </th>
                                    </tr>
                                </thead>

                               
                                <tbody>
                                    <tr>
                                        <td >
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                        </td>
                                        <td>
                                            <img src=''height="100" width="100">

                                        </td>
                                        <td>
                                            <a href="EditProduct.jsp?uid=" class="btn green btn-sm btn-outline sbold uppercase">
                                                Update </a>
                                            <a href="AddProduct.jsp?pid=" class="btn green btn-sm btn-outline sbold uppercase">
                                                <i class="fa date"></i> Delete </a>
                                        </td>
                                    </tr>
                                </tbody>
                                
                            </table>
                        </div><!--End table-scrollable-->

                    </div>

                </div><!-- END CONTENT BODY -->

            </div><!-- END page-content-wrapper -->

        </div><!-- END Page CONTAINER -->

        <%@include file="Footer.jsp" %>



    </body>

</html>