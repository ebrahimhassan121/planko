<%-- 
    Document   : search
    Created on : Aug 15, 2017, 6:53:52 PM
    Author     : EHS
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="init.jsp" %>
    </head>
    <body>
        <%
            if(request.getParameter("k")==null){response.sendRedirect("Home.jsp");return;}
            String keword=request.getParameter("k").replaceAll("\\s+", "\\+");
            
        %>
        <div class="wrapper">
            <div id="top-header" >  <%@include file="top-header.jsp" %></div>
            <div class="main" role="main">

                <div class="page-head">
                    <div class="page-head-img">
                        <img src="./assets/site/images/categories/34.jpg" alt="...">
                    </div>
                    <div class="overlay">
                        <div class="container">
                            <div class="page-title">
                                <h3 class="title">
                                    بحث
                                </h3>
                            </div><!--End Page-Title-->
                            <div class="page-breadcrumb">
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="Home.jsp">
                                            <i class="fa fa-home"></i>
                                            الرئيسية
                                        </a>
                                    </li>
                                    <li class="active">
                                        <i class="fa fa-question"></i>
                                        بحث
                                    </li>
                                </ol>
                            </div><!--End page-breadcrumb-->
                        </div><!--End Container-->
                    </div><!--End Overlay-->
                </div>
                <!--End Page-Head-->


                <div class="page-content">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-9">                                                                    
                                <div class="tabs">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" id="all-link" class="active"><a href="#questions" aria-controls="questions" role="tab" data-toggle="tab"><%=keword.replaceAll("\\+", " ")%></a></li>
                                        </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane fade in active" id="questions">
                                            <div id="all_QuestionContent">

                                            </div>
                                            <div>
                                                <a href="#" onclick="loadNowPlaying(event)" class="center-block " style="text-align: center; background-color: #f6f6f6;padding: 0.55em;margin: 0.75em;" >عرض المزيد</a>
                                                <br>
                                            </div>
                                        </div><!--End tabpanel-->
                                        <!--End tabpanel-->
                                    </div>
                                </div><!--End Tabs-->
                            </div><!--End Col-md-6-->
                            <%@include file="sidepar.jsp" %>
                        </div><!--End Row-->
                    </div><!--End Container-->
                </div>
                <!--End page-content-->



                <%@include file="Footer.jsp" %>
            </div><!--Role Main-->
        </div><!--End Wrapper-->
    </body>
    <script>
        $(document).ready(function () {
            $("#all_QuestionContent").append($('<div id="question0_3"></div>').hide());
            $('#question0_3').load('all-questions.jsp?k=<%=keword%>&&f=0&&t=3');
            $('#question0_3').show();
            //////////////////////////////////
            
        });
        var qf = 0;
        var qt = 3;
        var qfAnswerd = 0;
        var qtAnswerd = 3;
        function loadNowPlaying(e) {
            qf = qf + 3;
            // qt=qt+3;
            var idQ = qf + '_' + qt;
            var Url = 'all-questions.jsp?k=<%=keword%>&&f=' + qf + '&&t=' + qt + '';
            console.log(idQ + "," + Url);
            e.preventDefault();
            if ($('#all-link').hasClass('active')) {
                $("#all_QuestionContent").append($('<div id="question' + idQ + '"></div>').hide());
                $('#question' + qf + '_' + qt + '').load(Url);
                $('#question' + qf + '_' + qt + '').show(500);
            }
        }

       

    </script>
</html>
