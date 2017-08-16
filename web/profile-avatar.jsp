<%-- 
    Document   : profile-avatar
    Created on : Aug 6, 2017, 1:07:31 AM
    Author     : EHS
--%>

<%@page import="Model.Users_model"%>
<%@page import="beans.user_bean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <%
        String facebook=(!session.getAttribute("facebook").equals(""))?session.getAttribute("facebook").toString().trim().toString():"";    
        String twitter=(!session.getAttribute("twitter").toString().trim().equals(""))?session.getAttribute("twitter").toString():"";    
      
        %>
        
    <%
        String userID = (session.getAttribute("ID").toString() != null) ? session.getAttribute("ID").toString() : "";
        Users_model u = new Users_model();
        user_bean userAcount = u.Select_userByID(userID);

    %>
    <head>
    </head>
    <body>
        <div class="card">
            <form method="post" action="" enctype="multipart">
                <div class="card-img" >

                    <div class="fileinput fileinput-new" data-provides="fileinput">
                        <div class="fileinput-preview" data-trigger="fileinput">
                            <img src="<%=userAcount.getAvatar()%>" onchange="console.log('changed');" id="profile-image"  alt="profile image">
                        </div>
                        <div class="image-hover">
                            <span class="btn-file">
                                <span class="fileinput-new"> 
                                    <i class="fa fa-camera" title="أختر صورة"></i>
                                </span> 
                                <input id="image-upload" type="file" name="..."> 
                            </span>

                        </div><!--End Image-hover-->

                    </div><!--End Card-image-->
                </div>
                <div class="row">
                    <button class="hidden custom-btn pull-right " id="reset-upload" type="reset" style="float: right !important; " data-toggle="tooltip" data-placement="bottom" title="الغاء"><span class="glyphicon glyphicon-remove"></span></button>
                    <button class="hidden custom-btn pull-right left" id="button-upload" type="submit" data-toggle="tooltip" data-placement="bottom" title="حفظ"><span class="glyphicon glyphicon-ok"></span></button>
                </div>
            </form>
            <div class="card-content">
                <h3 class="card-name">
                    <%=userAcount.getName()%>
                </h3>
                <ul class="social">
                    <li>
                        <% 
                            if(!facebook.equals("")){%>
                         
                        <a href="<%=facebook%>"target="_blank" class="facebook" >
                            <i class="fa fa-facebook"></i>
                        </a>   
                            
                        <%   
                            }
                        %>
                    </li>
                    <li>
                        <% 
                            if(!twitter.equals("")){%>
                            
                        <a href="<%=twitter%>" target="_blank" class="twitter" />
                            <i class="fa fa-twitter"></i>
                        </a>
                        <%   
                            }
                        %>
                    </li>
                    <!--li>
                        <a href="#" target="_blank" class="linkedin">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank" class="google-plus">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#" target="_blank" class="youtube">
                            <i class="fa fa-youtube"></i>
                        </a>
                    </li--!>
                </ul>
            </div><!--End card-content-->
        </div><!--End Card-->
    </body>
    <script>

      
    </script>
</html>

