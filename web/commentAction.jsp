<%-- 
    Document   : commentAction
    Created on : Aug 18, 2017, 9:56:20 PM
    Author     : EHS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<%
    String Type = request.getParameter("type").toString();
    String commentID, replyID;
    if (Type.equals("comment")) {
        commentID = request.getParameter("id").toString();

%>
<div class="modal fade ask" id="delete_c<%=commentID%>" tabindex="-1" role="dialog" aria-labelledby="delete">
    <div class="modal-dialog" style="top: 25%;"role="document">
        <div class="modal-content">
            <div class="modal-header center-block">
                هل انت متاكد من اتمام عملية الحذف ؟
            </div>
            <div class="modal-body">
                <span style="color: #d9534f;">عند الضغط علي زر حذف لن يعد هذا التعليق متاح مرة اخري</span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">الغاء</button>
                <a class="btn btn-danger btn-ok">حذف</a>
            </div>
        </div>
    </div><!-- /.modal -->

</div><!--End Comment-action-->
<div class="comment-action" data-toggle="tooltip" data-placement="top" title="تعديل أو مسح">
    <div class="dropdown">
        <button class="dropdown-toggle dots-menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            <i class="fa fa-ellipsis-h"></i>
        </button>

        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">

            <li><a onclick="$('#sct<%=commentID%>').addClass('hidden');$('#sce<%=commentID%>').removeClass('hidden');">
                    <i class="fa fa-edit"></i>
                    تعديل
                </a></li>
            <li><a onclick="$('#delete_c<%=commentID%>').modal('show');">
                    <i class="fa fa-trash"></i>
                    مسح
                </a></li>
        </ul>
        </div>
</div><!--End Comment-action-->

        <% } else if (Type.equals("reply")) {
            replyID = request.getParameter("id").toString();
        %>
        <div class="comment-action" data-toggle="tooltip" data-placement="top" title="تعديل أو مسح">
            <div class="dropdown">
                <button class="dropdown-toggle dots-menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    <i class="fa fa-ellipsis-h"></i>
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a onclick="$('#srt<%=replyID%>').addClass('hidden');$('#sre<%=replyID%>').removeClass('hidden');">
                            <i class="fa fa-edit"></i>
                            تعديل
                        </a></li>
                    <li><a onclick="$('#delete_r<%=replyID%>').modal('show');">
                            <i class="fa fa-trash"></i>
                            مسح
                        </a></li>
                </ul>
            </div>
        </div><!--End Comment-action-->

        <div class="modal fade ask" id="delete_r<%=replyID%>" tabindex="-1" role="dialog" aria-labelledby="delete">
            <div class="modal-dialog" style="top: 25%;"role="document">
                <div class="modal-content">
                    <div class="modal-header center-block">
                        هل انت متاكد من اتمام عملية الحذف ؟
                    </div>
                    <div class="modal-body">
                        <span style="color: #d9534f;">عند الضغط علي زر حذف لن يعد هذا التعليق متاح مرة اخري</span>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">الغاء</button>
                        <a class="btn btn-danger btn-ok">حذف</a>
                    </div>
                </div>
            </div><!-- /.modal -->

        </div><!--End Comment-action-->

        <%
            }
        %>
        <script>
            
        </script>