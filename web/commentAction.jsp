<%-- 
    Document   : commentAction
    Created on : Aug 18, 2017, 9:56:20 PM
    Author     : EHS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="comment-action" data-toggle="tooltip" data-placement="top" title="تعديل أو مسح">
    <div class="dropdown">
        <button class="dropdown-toggle dots-menu" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            <i class="fa fa-ellipsis-h"></i>
        </button>

        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <%
                String Type = request.getParameter("type").toString();
                String commentID, replyID;
                if (Type.equals("comment")) {
                    commentID = request.getParameter("id").toString();

            %>
            <li><a onclick="$('#sct<%=commentID%>').addClass('hidden');$('#sce<%=commentID%>').removeClass('hidden');">
                    <i class="fa fa-edit"></i>
                    تعديل
                </a></li>
            <li><a href="#">
                    <i class="fa fa-trash"></i>
                    مسح
                </a></li>
                <% } else if (Type.equals("reply")) {
                    replyID=request.getParameter("id").toString();
%>
                <li><a onclick="$('#srt<%=replyID%>').addClass('hidden');$('#sre<%=replyID%>').removeClass('hidden');">
                    <i class="fa fa-edit"></i>
                    تعديل
                </a></li>
            <li><a href="#">
                    <i class="fa fa-trash"></i>
                    مسح
                </a></li>

            <%
  }                
            %>
        </ul>
    </div>
</div><!--End Comment-action-->

<div class="modal fade ask" id="delete" tabindex="-1" role="dialog" aria-labelledby="delete">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                ??? ?????
            </div>
            <div class="modal-body">
                ??? ??????  ??? ??? ?? ????? ?????? ???? ??? ????
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">?????</button>
                <a class="btn btn-danger btn-ok">???</a>
            </div>
        </div>
    </div><!-- /.modal -->

</div><!--End Comment-action-->
