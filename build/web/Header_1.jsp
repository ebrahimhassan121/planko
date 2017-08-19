<%-- 
    Document   : Header
    Created on : Jul 18, 2017, 5:05:50 PM
    Author     : AHMED 50070
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <div class="row">
            <div class="col-xs-4">
                <ul class="social">
                          <li>
                        
                         
                              <a href="<%=(session.getAttribute("facebook")!=null)?session.getAttribute("facebook").toString():"#"%>"<%if(session.getAttribute("facebook")!=null){%>target="_blank"<%}%> class="facebook" >
                            <i class="fa fa-facebook"></i>
                        </a>   
                            
                        
                    </li>
                    <li>
                       <a href="<%=(session.getAttribute("twitter")!=null)?session.getAttribute("twitter").toString():"#"%>" <%if(session.getAttribute("twitter")!=null){%>target="_blank"<%}%> class="twitter" >
                            <i class="fa fa-twitter"></i>
                        </a>
                        
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
                    </li-->
                </ul>
            </div><!--End Col-sm-4-->
            <div class="col-xs-8">
                <ul class="top-header-info">
                    <li>
                        <i class="fa fa-envelope"></i>
                      
                        <span><%=(session.getAttribute("email")!=null)?session.getAttribute("email").toString():"user@example.com"%></span>
                    </li>
                    <li>
                        <i class="fa fa-phone"></i>
                        <span><%=(session.getAttribute("phone")!=null)?session.getAttribute("phone").toString():"xx xxx xxx xxx"%></span>
                    </li>
                </ul>
            </div><!--End Col-sm-8-->
        </div><!--End Row-->