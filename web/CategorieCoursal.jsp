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
                <style>
            
/*category follow */
.cat_follow {
    background: #00008B !Important;
}

        </style>
    </head>
    <body>
        <div class="carousel-2">
            <%
                Categories_model categories_model = new Categories_model();
                ArrayList<Categories> array_categories = categories_model.Select_ALL_Categories();
                for (int i = 0; i < array_categories.size(); i++) {
                    String categoryID = array_categories.get(i).getCategoriesID();
                    String categoryName = array_categories.get(i).getCategoryNam();
                    String categoryPhoto = array_categories.get(i).getPhoto();
                    String classColor=(categories_model.CheckISFavCategories(
                            ((session.getAttribute("ID")!=null)?(session.getAttribute("ID").toString()):"-1")
                            ,categoryID))?"cat_follow":"";
                           

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
                        <li>
                            <a onclick="followCat(this,<%=categoryID%>)" class="<%=classColor%>" title="متابعة">
                                <i class="fa fa-feed"></i>
                            </a>
                        </li>

                    </ul>
                </div><!--End Widget-hover-->
            </div><!---End Widget-box-->
            <% }%>
        </div><!--End carousel-->

    </body>
        <script>
        function followCat(e,category) {
          $(e).toggleClass('cat_follow');
            $.post('ADDFavCat',
                    {
                        cat: category
                    }
            , function (responseText) {
                console.log(responseText);
                if (responseText === "login_required") {
                    $(e).removeClass('cat_follow');
                    $("#login-dialog-link").click();
                }
                else if(responseText === "done"){
                    
                }
            });
        }
    </script>
</html>
