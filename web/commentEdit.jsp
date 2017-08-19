<%-- 
    Document   : commentEdit
    Created on : Aug 19, 2017, 1:32:40 AM
    Author     : EHS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String Type = request.getParameter("type").toString();
    String commentID, replyID;
    String text=request.getParameter("text").toString();;
    if (Type.equals("comment")) {
        commentID = request.getParameter("id").toString();
        

%>
<input class="form-control "  type="text" value="<%=text%>"/>
<a onclick="$('#sce<%=commentID%>').addClass('hidden');$('#sct<%=commentID%>').removeClass('hidden');" class="replay replay-comment-button"style="color:#00008B;cursor: pointer;float: left;text-decoration: underline;font-size: 12px">الغاء</a>

<%} else if (Type.equals("reply")) {
replyID=request.getParameter("id").toString();
%>   

<input class="form-control "  type="text" value="<%=text%>"/>
<a onclick="$('#sre<%=replyID%>').addClass('hidden');$('#srt<%=replyID%>').removeClass('hidden');" class="replay replay-comment-button"style="color:#00008B;cursor: pointer;float: left;text-decoration: underline;font-size: 12px">الغاء</a>

<%  }
%>