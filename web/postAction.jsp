<%-- 
    Document   : postAction
    Created on : Aug 18, 2017, 9:49:53 PM
    Author     : EHS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="admin-action" data-toggle="tooltip" data-placement="right" title=" تعديل أو مسح السؤال">
    <div class="dropdown">
        <button class="dropdown-toggle dots-menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            <i class="fa fa-ellipsis-h"></i>
        </button>
        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li>
                <a onclick="$('#ask_edit').modal('show');">
                    <i class="fa fa-edit"></i>
                    تعديل
                </a>
                
            </li>
            <li><a onclick="$('#delete').modal('show');">
                    <i class="fa fa-trash"></i>
                    مسح
                </a>
            </li>
        </ul>
    </div>
</div><!--End Admin-Action-->
<div class="modal fade ask" id="delete" tabindex="-1" role="dialog" aria-labelledby="delete">
                                                    <div class="modal-dialog" style="top: 25%;"role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header center-block">
                                                                هل انت متاكد من اتمام عملية الحذف ؟
                                                            </div>
                                                            <div class="modal-body">
                                                                <span style="color: #d9534f;">عند الضغط علي زر حذف لن يعد هذا المحتوي متاح مرة اخري</span>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-default" data-dismiss="modal">الغاء</button>
                                                                <a class="btn btn-danger btn-ok">حذف</a>
                                                            </div>
                                                        </div>
                                                    </div><!-- /.modal -->

                                                </div><!--End Comment-action-->
