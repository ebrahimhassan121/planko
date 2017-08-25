<%-- 
    Document   : Contact
    Created on : Jun 30, 2017, 9:31:33 PM
    Author     : AHMED 50070
--%>


<%@page import="beans.Contact_Bean"%>
<%@page import="Model.Contact_Model"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="init.jsp" %>

    <body>
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
                                        <i class="fa icon-envelope-open"></i> ALL MESSAGE
                                    </div>
                                </div><!-- portlet-title-->

                                <%                                    
                                    String msgid = request.getParameter("di");
                                    String id = request.getParameter("id");

                                    Contact_Model model = new Contact_Model();
                                    if (msgid != null && !msgid.isEmpty()) {
                                        model.deletMessage(Integer.parseInt(msgid));
                                %>
                                <script>
                                    toastr.success("تم مسح الرساله ");
                                </script>
                                <%  }
                                    ArrayList<Contact_Bean> MSGList = model.getAllMessge();
                                %>
                                <div class="portlet-body form">
                                    <div class="table-scrollable">
                                        <table class="table table-striped table-hover">
                                            <thead>
                                                <tr>
                                                    <th>Name </th>
                                                    <th>Email</th>
                                                    <th>Address</th>
                                                    <th>Phone</th>
                                                    <th>Message</th>

                                                </tr>
                                            </thead>

                                            <% for (Contact_Bean contact : MSGList) {%>
                                            <tbody>
                                                <tr>
                                                    <td >
                                                        <%=contact.getName()%>
                                                    </td>
                                                    <td >
                                                        <%=contact.getEmail()%>
                                                    </td>
                                                    <td >
                                                        <%=contact.getAdress()%>
                                                    </td>
                                                    <td >
                                                        <%=contact.getPhone()%>
                                                    </td>
                                                    <td >
                                                        <%= contact.getMessage()%>
                                                    </td>
                                                    <td> 
                                                        <a href="Contact.jsp?di=<%=contact.getId()%>" class="btn green btn-sm btn-outline sbold uppercase">
                                                            <i class="fa date"></i> Delete </a>

                                                        <a href="Contact.jsp?id=<%=contact.getId()%>" class="btn green btn-sm btn-outline sbold uppercase">
                                                            <i class="fa fa-share"></i> Reply </a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                            <%}%>

                                        </table>
                                    </div>
                                    <%  if (id != null && !id.isEmpty()) {
                                    %>
                                    <div class="row">
                                        <div class="col-xs-12 contact-form">
                                            <form method="post" action="../Rpl?id=<%=id%>">
                                                <div class="row">
                                                </div>
                                                <div class="row">
                                                    <div class="col-xs-12">
                                                        <div class="form-group">
                                                            <textarea class="form-control" placeholder="Message" name="Message"></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <button class="btn btn-submit" type="submit">Reply</button>
                                                </div>
                                            </form>
                                        </div><!--End Contact-form-->    
                                    </div><!--End Row-->
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="Footer.jsp" %>
    </body>
</html>
