<%-- 
    Document   : sidepar
    Created on : Jul 18, 2017, 4:53:37 PM
    Author     : AHMED 50070
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <div class="col-md-3">
        <div class="side-colume-right">
            <div class="side-widget">
                <div class="side-widget-title">
                    <h2 class="title title-sm has-after">
                        البحث
                    </h2>
                </div><!--End Side-widget-title-->
                <div class="side-widget-content">
                    <form class="" action="" method="">
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="ابحث هنا">
                            <button class="search-icon-btn" type="submit">
                                <i class="fa fa-search"></i>
                            </button>
                        </div><!--End Form-group-->
                    </form><!--End Form-->
                </div><!--End Side-widget-content-->
            </div><!--End Side-widget-->
            <%@include  file="recentAnswers.jsp" %>
            <div class="side-widget">
                <div class="side-widget-title">
                    <h2 class="title title-sm has-after">
                        الفئات
                    </h2>
                </div><!--End Side-widget-title-->
                <div class="side-widget-content">
                    <ul class="tags">
                        <li>
                            <a href="#">رياضة</a>
                        </li>
                        <li>
                            <a href="#">فن</a>
                        </li>
                        <li>
                            <a href="#">تصميم</a>
                        </li>
                        <li>
                            <a href="#">موضة</a>
                        </li>
                        <li>
                            <a href="#">سياسة</a>
                        </li>
                    </ul><!--End Side-widget-list-->
                </div><!--End Side-widget-content-->
            </div><!--End Side-widget-->
            <div class="side-widget">
                <div class="side-widget-title">
                    <h2 class="title title-sm has-after">
                        الأكثر تفاعل 
                    </h2>
                </div><!--End Side-Widget-Title-->
                <div class="side-widget-content">
                    <ul class="side-widget-list">
                        <%@include  file="recentQuestions.jsp" %>
                        
                    </ul><!--End Side-widget-list-->
                </div><!--End Side-Widget-Content-->
            </div><!--End Side-Widget-->
            
        </div><!--End Side-colume-->
    </div><!--End Col-md-3-->
</html>
