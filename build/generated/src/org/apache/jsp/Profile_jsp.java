package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Profile_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String path = "./assets/site/";
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/init.jsp");
    _jspx_dependants.add("/Header_1.jsp");
    _jspx_dependants.add("/Header_2.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        ");
      out.write("\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\r\n");
      out.write("        <!-- Basic page needs\r\n");
      out.write("\t\t===========================-->\r\n");
      out.write("\t\t<title>Planko</title>\r\n");
      out.write("\t\t<meta charset=\"utf-8\">\r\n");
      out.write("\t\t<meta name=\"author\" content=\"M.Ata\">\r\n");
      out.write("\t\t<meta name=\"description\" content=\"\">\r\n");
      out.write("\t\t<meta name=\"keywords\" content=\"\">        \r\n");
      out.write("        \r\n");
      out.write("        <!-- Mobile specific metas\r\n");
      out.write("\t\t===========================-->\r\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no\">        \r\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("        \r\n");
      out.write("        <!-- Favicon\r\n");
      out.write("\t\t===========================-->\r\n");
      out.write("\t\t<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"\">\r\n");
      out.write("        \r\n");
      out.write("        <!-- Google Web Fonts \r\n");
      out.write("\t\t===========================-->        \r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Cairo\">\r\n");
      out.write("        \r\n");
      out.write("\r\n");
      out.write("        <!-- Css Base And Vendor \r\n");
      out.write("\t\t===========================-->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("vendor/bootstrap/css/bootstrap-arabic.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("vendor/font-awesome/css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("vendor/owl-carousel/css/owl.carousel.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("vendor/owl-carousel/css/owl.theme.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(path+"vendor/magnific-popup/css/magnific-popup.css");
      out.write("\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("vendor/magnific-popup/css/custom.css\">\r\n");
      out.write("        <!-- Site Style\r\n");
      out.write("\t\t===========================-->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print(path);
      out.write("css/style.css\">\r\n");
      out.write("         \r\n");
      out.write("        <!--[if lt IE 9]>\r\n");
      out.write("            <script src=\"https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js\"></script>\r\n");
      out.write("            <script src=\"https://oss.maxcdn.com/respond/1.4.2/respond.min.js\"></script>\r\n");
      out.write("        <![endif]-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        \r\n");
      out.write("         <!--Scripts Plugins-->\r\n");
      out.write("        <script src=\"");
      out.print(path);
      out.write("vendor/jquery/jquery.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.print(path);
      out.write("vendor/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.print(path);
      out.write("vendor/nicescroll/jquery.nicescroll.min.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.print(path);
      out.write("vendor/owl-carousel/js/owl.carousel.min.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.print(path);
      out.write("vendor/count-to/jquery.countTo.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.print(path);
      out.write("vendor/magnific-popup/js/magnific-popup.js\"></script>\r\n");
      out.write("        <!-- Custom js -->\r\n");
      out.write("        <script src=\"");
      out.print(path);
      out.write("js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        \r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"wrapper\">\r\n");
      out.write("            <div class=\"top-header\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-xs-4\">\r\n");
      out.write("                <ul class=\"social\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\" target=\"_blank\" class=\"facebook\">\r\n");
      out.write("                            <i class=\"fa fa-facebook\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\" target=\"_blank\" class=\"twitter\">\r\n");
      out.write("                            <i class=\"fa fa-twitter\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\" target=\"_blank\" class=\"linkedin\">\r\n");
      out.write("                            <i class=\"fa fa-linkedin\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\" target=\"_blank\" class=\"google-plus\">\r\n");
      out.write("                            <i class=\"fa fa-google-plus\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"#\" target=\"_blank\" class=\"youtube\">\r\n");
      out.write("                            <i class=\"fa fa-youtube\"></i>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div><!--End Col-sm-4-->\r\n");
      out.write("            <div class=\"col-xs-8\">\r\n");
      out.write("                <ul class=\"top-header-info\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <i class=\"fa fa-envelope\"></i>\r\n");
      out.write("                        <span>Mohamed.ata148@gmail.com</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <i class=\"fa fa-phone\"></i>\r\n");
      out.write("                        <span>+002 01018241944</span>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div><!--End Col-sm-8-->\r\n");
      out.write("        </div><!--End Row-->\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("                </div><!--End Container-->\r\n");
      out.write("            </div><!--End Top-Header-->\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        <header class=\"header\">\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("                <a href=\"Home.jsp\" class=\"logo\">\r\n");
      out.write("                    Planko\r\n");
      out.write("                </a>\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".nav-main-collapse\" aria-expanded=\"false\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle Navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <div class=\"header-icons\">\r\n");
      out.write("                    <div class=\"dropdown\">\r\n");
      out.write("                        <a href=\"Profile.jsp\" class=\"my-account dropdwon\">\r\n");
      out.write("                            <img src=\"./assets/site/images/avatars/team1.jpg\" alt=\"profile\">                                \r\n");
      out.write("                        </a><!--End my-account-->\r\n");
      out.write("                        <ul class=\"dropdown-menu\">\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a class=\"popup-text\" href=\"#register-dialog\" data-effect=\"mfp-move-from-top\"> التسجيل</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#\">تسجيل الخروج</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div><!--End Dropdown-->\r\n");
      out.write("                    <a href=\"Profile.jsp\" class=\"saved-head\">\r\n");
      out.write("                        <div class=\"saved-icon\" title=\"المحفوظات\">\r\n");
      out.write("                            <i class=\"fa fa-suitcase\"></i>\r\n");
      out.write("                            <span>5</span>\r\n");
      out.write("                        </div><!--End cart-icon-->        \r\n");
      out.write("                    </a>\r\n");
      out.write("                </div><!--End Header-Icons-->\r\n");
      out.write("            </div><!--End Container-->\r\n");
      out.write("            <div class=\"collapse navbar-collapse nav-main-collapse\">\r\n");
      out.write("                <div class=\"container\">\r\n");
      out.write("                    <nav class=\"main-nav\">\r\n");
      out.write("                        <ul class=\"nav navbar-nav \">\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"Home.jsp\">\r\n");
      out.write("                                    <i class=\"fa fa-home\"></i>\r\n");
      out.write("                                    الرئيسية\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            \r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"questions.jsp\">\r\n");
      out.write("                                    <i class=\"fa fa-question\"></i>\r\n");
      out.write("                                    أسئلة\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"Categories.jsp\">\r\n");
      out.write("                                    <i class=\"fa fa-list\"></i>\r\n");
      out.write("                                    الفئات\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"contact-us.jsp\">\r\n");
      out.write("                                    <i class=\"fa fa-envelope-o\"></i>\r\n");
      out.write("                                    اتصل بنا\r\n");
      out.write("                                </a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </nav><!--End Main-nav-->\r\n");
      out.write("                </div><!--End container-->\r\n");
      out.write("            </div><!--End Navbar-collapse-->\r\n");
      out.write("        </header><!--End Header-->\r\n");
      out.write("\r\n");
      out.write("        <div id=\"password-recover-dialog\" class=\"mfp-with-anim mfp-hide mfp-dialog dialog-box\">\r\n");
      out.write("            <form class=\"dialog-form\">\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input class=\"form-control\" placeholder=\"البريد الالكترونى\" type=\"email\">\r\n");
      out.write("                </div><!--End form-group-->\r\n");
      out.write("                <button type=\"submit\" class=\"custom-btn\">إسترجاع كلمة المرور</button>\r\n");
      out.write("            </form><!--End dialog-form-->\r\n");
      out.write("        </div><!--End login-dialog-->\r\n");
      out.write("        <div id=\"register-dialog\" class=\"mfp-with-anim mfp-hide mfp-dialog dialog-box\">\r\n");
      out.write("            <form class=\"dialog-form\">\r\n");
      out.write("                <div class=\"form-group text-center\">\r\n");
      out.write("                    <a href=\"\" class=\"login-with-fb\">\r\n");
      out.write("                        <i class=\"fa fa-facebook\"></i>\r\n");
      out.write("                        التسجيل من خلال فيسبوك\r\n");
      out.write("                    </a>\r\n");
      out.write("                    <span class=\"or\">أو </span>\r\n");
      out.write("                </div><!--End form-group-->\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input class=\"form-control\" placeholder=\"الأسم الأول\" type=\"text\">\r\n");
      out.write("                </div><!--End form-group-->\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input class=\"form-control\" placeholder=\"الأسم الأخير\" type=\"text\">\r\n");
      out.write("                </div><!--End form-group-->\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input class=\"form-control\" placeholder=\"البريد الالكترونى\" type=\"email\">\r\n");
      out.write("                </div><!--End form-group-->\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input class=\"form-control\"  placeholder=\"كلمة السر\" type=\"password\">\r\n");
      out.write("                </div><!--End form-group-->\r\n");
      out.write("                <div class=\"notes\">\r\n");
      out.write("                    من خلال الضغط على زر تسحيل . فانك توافق على \r\n");
      out.write("                    <a href=\"\">قواعد موقعنا</a> و \r\n");
      out.write("                    <a href=\"\">الشروط والأحكام</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <button type=\"submit\" class=\"custom-btn\">تسجيل </button>\r\n");
      out.write("            </form><!--End dialog-form-->\r\n");
      out.write("            <div class=\"dont-have\">\r\n");
      out.write("                لديك حساب بالفعل ..\r\n");
      out.write("                <a class=\"popup-text\" href=\"#login-dialog\" data-effect=\"mfp-zoom-out\">إدخل الأن</a>\r\n");
      out.write("            </div>           \r\n");
      out.write("        </div><!--End login-dialog-->\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"main\" role=\"main\">\r\n");
      out.write("                <div class=\"page-head\">\r\n");
      out.write("                    <div class=\"page-head-img\">\r\n");
      out.write("                        <img src=\"./assets/site/images/categories/34.jpg\" alt=\"...\">\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"overlay\">\r\n");
      out.write("                        <div class=\"container\">\r\n");
      out.write("                            <div class=\"page-title\">\r\n");
      out.write("                                <h3 class=\"title\">\r\n");
      out.write("                                    محمود اسماعيل\r\n");
      out.write("                                </h3>\r\n");
      out.write("                            </div><!--End Page-Title-->\r\n");
      out.write("                            <div class=\"page-breadcrumb\">\r\n");
      out.write("                                <ol class=\"breadcrumb\">\r\n");
      out.write("                                    <li>\r\n");
      out.write("                                        <a href=\"index.html\">\r\n");
      out.write("                                            <i class=\"fa fa-home\"></i>\r\n");
      out.write("                                            الرئيسية\r\n");
      out.write("                                        </a>\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                    <li class=\"active\">\r\n");
      out.write("                                        <i class=\"fa fa-user\"></i>\r\n");
      out.write("                                        حسابى\r\n");
      out.write("                                    </li>\r\n");
      out.write("                                </ol>\r\n");
      out.write("                            </div><!--End page-breadcrumb-->\r\n");
      out.write("                        </div><!--End Container-->\r\n");
      out.write("                    </div><!--End Overlay-->\r\n");
      out.write("                </div><!--End Page-Head-->\r\n");
      out.write("                <div class=\"page-content\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"col-md-9\">                                                                    \r\n");
      out.write("                                <div class=\"tabs\">\r\n");
      out.write("                                    <!-- Nav tabs -->\r\n");
      out.write("                                    <ul class=\"nav nav-tabs\" role=\"tablist\">\r\n");
      out.write("                                        <li role=\"presentation\" class=\"active\"><a href=\"#basic\" aria-controls=\"basic\" role=\"tab\" data-toggle=\"tab\">معلومات الحساب</a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li role=\"presentation\"><a href=\"#wishlist\" aria-controls=\"wishlist\" role=\"tab\" data-toggle=\"tab\">المفضلة</a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li role=\"presentation\"><a href=\"#my-questions\" aria-controls=\"my-questions\" role=\"tab\" data-toggle=\"tab\">أسئلتى</a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li role=\"presentation\"><a href=\"#my-answers\" aria-controls=\"my-answers\" role=\"tab\" data-toggle=\"tab\">إجاباتى</a></li>\r\n");
      out.write("\r\n");
      out.write("                                        <li role=\"presentation\"><a href=\"#my-categories\" aria-controls=\"my-categories\" role=\"tab\" data-toggle=\"tab\">الفئات</a></li>\r\n");
      out.write("                                    </ul>\r\n");
      out.write("                                    <!-- Tab panes -->\r\n");
      out.write("                                    <div class=\"tab-content\">\r\n");
      out.write("                                        <div role=\"tabpanel\" class=\"tab-pane fade in active\" id=\"basic\">\r\n");
      out.write("                                            <form class=\"form\" action=\"\" method=\"\">\r\n");
      out.write("                                                <div class=\"row\">\r\n");
      out.write("                                                    <div class=\"col-md-4\">\r\n");
      out.write("                                                        <div class=\"form-group has-icon\">\r\n");
      out.write("                                                            <input class=\"form-control\" type=\"text\" placeholder=\"اسم المستخدم\">\r\n");
      out.write("                                                            <i class=\"fa fa-user\"></i>\r\n");
      out.write("                                                        </div><!--End Form-group-->\r\n");
      out.write("                                                    </div><!--End Col-->\r\n");
      out.write("                                                    <div class=\"col-md-4\">\r\n");
      out.write("                                                        <div class=\"form-group has-icon\">\r\n");
      out.write("                                                            <input class=\"form-control\" type=\"text\" placeholder=\"رقم التليفون\">\r\n");
      out.write("                                                            <i class=\"fa fa-mobile\"></i>\r\n");
      out.write("                                                        </div><!--End Form-group-->\r\n");
      out.write("                                                    </div><!--End Col-->\r\n");
      out.write("                                                    <div class=\"col-md-4\">\r\n");
      out.write("                                                        <div class=\"form-group has-icon\">\r\n");
      out.write("                                                            <input class=\"form-control\" type=\"email\" placeholder=\"البريد الإلكترونى\">\r\n");
      out.write("                                                            <i class=\"fa fa-envelope-o\"></i>\r\n");
      out.write("                                                        </div><!--End Form-group-->\r\n");
      out.write("                                                    </div><!--End Col-->\r\n");
      out.write("                                                    <div class=\"col-md-4\">\r\n");
      out.write("                                                        <div class=\"form-group has-icon\">\r\n");
      out.write("                                                            <input class=\"form-control\" type=\"text\" placeholder=\"العنوان\">\r\n");
      out.write("                                                            <i class=\"fa fa-map-marker\"></i>\r\n");
      out.write("                                                        </div><!--End Form-group-->\r\n");
      out.write("                                                    </div><!--End Col-->\r\n");
      out.write("                                                    <div class=\"col-md-4\">\r\n");
      out.write("                                                        <div class=\"form-group has-icon\">\r\n");
      out.write("                                                            <input class=\"form-control\" type=\"text\" placeholder=\"حساب فيسبوك\">\r\n");
      out.write("                                                            <i class=\"fa fa-facebook\"></i>\r\n");
      out.write("                                                        </div><!--End Form-group-->\r\n");
      out.write("                                                    </div><!--End Col-->\r\n");
      out.write("                                                    <div class=\"col-md-4\">\r\n");
      out.write("                                                        <div class=\"form-group has-icon\">\r\n");
      out.write("                                                            <input class=\"form-control\" type=\"text\" placeholder=\"حساب تويتر\">\r\n");
      out.write("                                                            <i class=\"fa fa-twitter\"></i>\r\n");
      out.write("                                                        </div><!--End Form-group-->\r\n");
      out.write("                                                    </div><!--End Col-->\r\n");
      out.write("                                                    <div class=\"col-md-12\">\r\n");
      out.write("                                                        <div class=\"form-group has-icon\">\r\n");
      out.write("                                                            <textarea class=\"form-control\" placeholder=\"عن المستخدم\"></textarea>\r\n");
      out.write("                                                            <i class=\"fa fa-pencil-square-o\"></i>\r\n");
      out.write("                                                        </div><!--End Form-group-->\r\n");
      out.write("                                                        <div class=\"form-group\">\r\n");
      out.write("                                                            <button class=\"custom-btn pull-right\" type=\"submit\">تحديث المعلومات</button>\r\n");
      out.write("                                                        </div><!--End Form-group-->\r\n");
      out.write("                                                    </div><!--End Col 12-->\r\n");
      out.write("                                                </div><!--End row-->\r\n");
      out.write("                                            </form><!--End Form-->\r\n");
      out.write("                                        </div><!--End tabpanel-->\r\n");
      out.write("                                        <div role=\"tabpanel\" class=\"tab-pane fade\" id=\"wishlist\">...</div><!--End tabpanel-->\r\n");
      out.write("                                        <div role=\"tabpanel\" class=\"tab-pane fade\" id=\"my-questions\">...</div><!--End tabpanel-->\r\n");
      out.write("                                        <div role=\"tabpanel\" class=\"tab-pane fade\" id=\"my-answers\">...</div><!--End tabpanel-->\r\n");
      out.write("                                        <div role=\"tabpanel\" class=\"tab-pane fade\" id=\"my-categories\">...</div><!--End tabpanel-->\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div><!--End Tabs-->\r\n");
      out.write("                            </div><!--End Col-md-6-->\r\n");
      out.write("                            <div class=\"col-md-3\">\r\n");
      out.write("                                <div class=\"side-colume-right\">\r\n");
      out.write("                                    <div class=\"side-widget\">\r\n");
      out.write("                                        <div class=\"side-widget-title\">\r\n");
      out.write("                                            <h2 class=\"title title-sm has-after\">\r\n");
      out.write("                                                الحساب\r\n");
      out.write("                                            </h2>\r\n");
      out.write("                                        </div><!--End Side-widget-title-->\r\n");
      out.write("                                        <div class=\"side-widget-content\">\r\n");
      out.write("                                            <div class=\"card\">\r\n");
      out.write("                                                <form class=\"card-img\" method=\"\" action=\"\">\r\n");
      out.write("                                                    <div class=\"fileinput fileinput-new\" data-provides=\"fileinput\">\r\n");
      out.write("                                                        <div class=\"fileinput-preview\" data-trigger=\"fileinput\">\r\n");
      out.write("                                                            <img src=\"./assets/site/images/avatars/team1.jpg\" alt=\"profile image\">\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"image-hover\">\r\n");
      out.write("                                                            <span class=\"btn-file\">\r\n");
      out.write("                                                                <span class=\"fileinput-new\"> \r\n");
      out.write("                                                                    <i class=\"fa fa-camera\" title=\"أختر صورة\"></i>\r\n");
      out.write("                                                                </span> \r\n");
      out.write("                                                                <input type=\"file\" name=\"...\"> \r\n");
      out.write("                                                            </span>\r\n");
      out.write("                                                            <!--\r\n");
      out.write("                                                                                                                        <a href=\"javascript:;\" class=\"fileinput-exists\" data-dismiss=\"fileinput\">\r\n");
      out.write("                                                                                                                            <i class=\"fa fa-trash\"></i>\r\n");
      out.write("                                                                                                                        </a>\r\n");
      out.write("                                                            -->\r\n");
      out.write("                                                        </div><!--End Image-hover-->\r\n");
      out.write("                                                    </div><!--End Card-image-->\r\n");
      out.write("                                                </form>\r\n");
      out.write("                                                <div class=\"card-content\">\r\n");
      out.write("                                                    <h3 class=\"card-name\">\r\n");
      out.write("                                                        محمود اسماعيل\r\n");
      out.write("                                                    </h3>\r\n");
      out.write("                                                    <ul class=\"social\">\r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <a href=\"#\" target=\"_blank\" class=\"facebook\">\r\n");
      out.write("                                                                <i class=\"fa fa-facebook\"></i>\r\n");
      out.write("                                                            </a>\r\n");
      out.write("                                                        </li>\r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <a href=\"#\" target=\"_blank\" class=\"twitter\">\r\n");
      out.write("                                                                <i class=\"fa fa-twitter\"></i>\r\n");
      out.write("                                                            </a>\r\n");
      out.write("                                                        </li>\r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <a href=\"#\" target=\"_blank\" class=\"linkedin\">\r\n");
      out.write("                                                                <i class=\"fa fa-linkedin\"></i>\r\n");
      out.write("                                                            </a>\r\n");
      out.write("                                                        </li>\r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <a href=\"#\" target=\"_blank\" class=\"google-plus\">\r\n");
      out.write("                                                                <i class=\"fa fa-google-plus\"></i>\r\n");
      out.write("                                                            </a>\r\n");
      out.write("                                                        </li>\r\n");
      out.write("                                                        <li>\r\n");
      out.write("                                                            <a href=\"#\" target=\"_blank\" class=\"youtube\">\r\n");
      out.write("                                                                <i class=\"fa fa-youtube\"></i>\r\n");
      out.write("                                                            </a>\r\n");
      out.write("                                                        </li>\r\n");
      out.write("                                                    </ul>\r\n");
      out.write("                                                </div><!--End card-content-->\r\n");
      out.write("                                            </div><!--End Card-->\r\n");
      out.write("                                        </div><!--End Side-widget-content-->\r\n");
      out.write("                                    </div><!--End Side-widget-->\r\n");
      out.write("                                </div><!--End Side-colume-->\r\n");
      out.write("                            </div><!--End Col-md-3-->\r\n");
      out.write("                        </div><!--End Row-->\r\n");
      out.write("                    </div><!--End Container-->\r\n");
      out.write("                </div><!--End page-content-->\r\n");
      out.write("                <footer class=\"footer\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"copyright\">\r\n");
      out.write("                            <p>\r\n");
      out.write("                                جميع الحقوق محفوظة <span>&copy;</span> كونسيلز 2017\r\n");
      out.write("                            </p>\r\n");
      out.write("                        </div><!--End Copyright-->\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"design-by\">\r\n");
      out.write("                            <p>\r\n");
      out.write("                                تصميم <a href=\"#\" target=\"_blank\">Mohamed Ata</a>\r\n");
      out.write("                            </p>\r\n");
      out.write("                        </div><!--End Copyright-->\r\n");
      out.write("                    </div><!--End Container-->\r\n");
      out.write("                </footer><!--End Footer-->                \r\n");
      out.write("            </div><!--End main-->\r\n");
      out.write("        </div><!--End Wrapper-->\r\n");
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
