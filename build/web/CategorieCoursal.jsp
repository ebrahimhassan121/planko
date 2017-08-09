<%-- 
    Document   : CategorieCoursal
    Created on : Jul 22, 2017, 11:00:47 PM
    Author     : AHMED 50070
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Categories"%>
<%@page import="Model.Categories_model"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="carousel-2">
            <% 
                                Categories_model categories_model=new Categories_model();
                                ArrayList<Categories> array_categories=categories_model.Select_ALL_Categories();
                                for(int i=0;i<array_categories.size();i++){
                                  String categoryID=array_categories.get(i).getCategoriesID();
                                  String categoryName=array_categories.get(i).getCategoryNam();
                                  String categoryPhoto=array_categories.get(i).getPhoto();;
;
                                
                             %>
            <div class="widget-box">
                <div class="widget-img">
                    <img src="<%=categoryPhoto%>" alt="...">
                </div><!--End widget-img-->
                <div class="widget-name">
                    <h3 class="name">
                        <%=categoryName%>
                    </h3>
                </div><!--End widget-name-->
                <div class="widget-hover">
                    <ul class="widget-hover-links">
                        <li>
                            <a href="cat/<%=categoryName%>" title="مشاهدة">
                                <i class="fa fa-link"></i>
                            </a>
                        </li>
                    </ul>
                </div><!--End Widget-hover-->
            </div><!---End Widget-box-->
            <% } %>
        </div><!--End carousel-->

    </body>
</html>
