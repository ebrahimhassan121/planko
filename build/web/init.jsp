<%-- 
    Document   : init
    Created on : Jul 18, 2017, 4:16:22 PM
    Author     : AHMED 50070
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <% String path = "./assets/site/";
            
        %>
        <%  session.setAttribute("url", request.getRequestURL());%>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <!-- Basic page needs
		===========================-->
        <meta charset="utf-8">
		        
        <!-- Mobile specific metas
		===========================-->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        
        <!-- Favicon
		===========================-->
		<link rel="shortcut icon" type="image/x-icon" href="">
        
        <!-- Google Web Fonts 
		===========================-->        
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cairo">
        

        <!-- Css Base And Vendor 
		===========================-->
        <link rel="stylesheet" href="<%=path%>vendor/bootstrap/css/bootstrap-arabic.css">
        <link rel="stylesheet" href="<%=path%>vendor/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="<%=path%>vendor/owl-carousel/css/owl.carousel.css">
        <link rel="stylesheet" href="<%=path%>vendor/owl-carousel/css/owl.theme.css">
        <link rel="stylesheet" href="<%=path%>vendor/magnific-popup/css/magnific-popup.css">
        <link rel="stylesheet" href="<%=path%>vendor/magnific-popup/css/custom.css">
         <link href="<%=path%>/vendor/toastr-master/build/toastr.css" rel="stylesheet" type="text/css" />
        <!-- Site Style
		===========================-->
        <link rel="stylesheet" href="<%=path%>css/style.css">
         
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>
    <body>
        
         <!--Scripts Plugins-->
        <script src="<%=path%>vendor/jquery/jquery.js"></script>
        <script src="<%=path%>vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="<%=path%>vendor/nicescroll/jquery.nicescroll.min.js"></script>
        <script src="<%=path%>vendor/owl-carousel/js/owl.carousel.min.js"></script>
        <script src="<%=path%>vendor/count-to/jquery.countTo.js"></script>
        <script src="<%=path%>vendor/magnific-popup/js/magnific-popup.js"></script>
        <!-- Custom js -->
        <script src="<%=path%>js/main.js"></script>
        <script src="<%=path%>/vendor/toastr-master/toastr.js"></script>

        
        
    </body>
   
</html>
