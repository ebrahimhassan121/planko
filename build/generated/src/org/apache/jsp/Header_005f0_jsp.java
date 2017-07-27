package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Header_005f0_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"header\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <a href=\"Home.jsp\" class=\"logo\">\n");
      out.write("                    Planko\n");
      out.write("                </a>\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\".nav-main-collapse\" aria-expanded=\"false\">\n");
      out.write("                    <span class=\"sr-only\">Toggle Navigation</span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                    <span class=\"icon-bar\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"header-icons\">\n");
      out.write("                    <div class=\"dropdown\">\n");
      out.write("                        <a href=\"Profile.jsp\" class=\"my-account dropdwon\">\n");
      out.write("                            <img src=\"./assets/site/images/avatars/team1.jpg\" alt=\"profile\">                                \n");
      out.write("                        </a><!--End my-account-->\n");
      out.write("                        <ul class=\"dropdown-menu\">\n");
      out.write("                            <li>\n");
      out.write("                                <a class=\"popup-text\" href=\"#register-dialog\" data-effect=\"mfp-move-from-top\"> التسجيل</a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"#\">تسجيل الخروج</a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div><!--End Dropdown-->\n");
      out.write("                    <a href=\"Profile.jsp\" class=\"saved-head\">\n");
      out.write("                        <div class=\"saved-icon\" title=\"المحفوظات\">\n");
      out.write("                            <i class=\"fa fa-suitcase\"></i>\n");
      out.write("                            <span>5</span>\n");
      out.write("                        </div><!--End cart-icon-->        \n");
      out.write("                    </a>\n");
      out.write("                </div><!--End Header-Icons-->\n");
      out.write("            </div><!--End Container-->\n");
      out.write("            <div class=\"collapse navbar-collapse nav-main-collapse\">\n");
      out.write("                <div class=\"container\">\n");
      out.write("                    <nav class=\"main-nav\">\n");
      out.write("                        <ul class=\"nav navbar-nav \">\n");
      out.write("                    \n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"Home.jsp\">\n");
      out.write("                                    <i class=\"fa fa-home\"></i>\n");
      out.write("                                    الرئيسية\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"questions.jsp\">\n");
      out.write("                                    <i class=\"fa fa-question\"></i>\n");
      out.write("                                    أسئلة\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"Categories.jsp\">\n");
      out.write("                                    <i class=\"fa fa-list\"></i>\n");
      out.write("                                    الفئات\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                            <li>\n");
      out.write("                                <a href=\"contact-us.jsp\">\n");
      out.write("                                    <i class=\"fa fa-envelope-o\"></i>\n");
      out.write("                                    اتصل بنا\n");
      out.write("                                </a>\n");
      out.write("                            </li>\n");
      out.write("                        </ul>\n");
      out.write("                    </nav><!--End Main-nav-->\n");
      out.write("                </div><!--End container-->\n");
      out.write("            </div><!--End Navbar-collapse-->\n");
      out.write("        </header><!--End Header-->\n");
      out.write("\n");
      out.write("        <div id=\"password-recover-dialog\" class=\"mfp-with-anim mfp-hide mfp-dialog dialog-box\">\n");
      out.write("            <form class=\"dialog-form\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input class=\"form-control\" placeholder=\"البريد الالكترونى\" type=\"email\">\n");
      out.write("                </div><!--End form-group-->\n");
      out.write("                <button type=\"submit\" class=\"custom-btn\">إسترجاع كلمة المرور</button>\n");
      out.write("            </form><!--End dialog-form-->\n");
      out.write("        </div><!--End login-dialog-->\n");
      out.write("        \n");
      out.write("        <div id=\"login-dialog\" class=\"mfp-with-anim mfp-dialog dialog-box\">\n");
      out.write("                <form class=\"dialog-form\">\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input class=\"form-control\" placeholder=\"البريد الالكترونى\" type=\"email\">\n");
      out.write("                    </div><!--End form-group-->\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <input class=\"form-control\" placeholder=\"كلمة السر\" type=\"password\">\n");
      out.write("                    </div><!--End form-group-->\n");
      out.write("                    <a class=\"popup-text forget\" href=\"#password-recover-dialog\" data-effect=\"mfp-zoom-out\">\n");
      out.write("                        نسيت كلمة السر؟\n");
      out.write("                    </a>\n");
      out.write("                    <button type=\"submit\" class=\"custom-btn\">تسجيل دخول</button>\n");
      out.write("                </form><!--End dialog-form-->\n");
      out.write("                <div class=\"dont-have\">\n");
      out.write("                    ليس لديك حساب..\n");
      out.write("                    <a class=\"popup-text\" href=\"#register-dialog\" data-effect=\"mfp-zoom-out\">سجل الأن</a>\n");
      out.write("                </div>           \n");
      out.write("            <button title=\"Close (Esc)\" type=\"button\" class=\"mfp-close\">×</button>\n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("        <div id=\"register-dialog\" class=\"mfp-with-anim mfp-hide mfp-dialog dialog-box\">\n");
      out.write("            <form class=\"dialog-form\">\n");
      out.write("                <div class=\"form-group text-center\">\n");
      out.write("                    <a href=\"\" class=\"login-with-fb\">\n");
      out.write("                        <i class=\"fa fa-facebook\"></i>\n");
      out.write("                        التسجيل من خلال فيسبوك\n");
      out.write("                    </a>\n");
      out.write("                    <span class=\"or\">أو </span>\n");
      out.write("                </div><!--End form-group-->\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input class=\"form-control\" placeholder=\"الأسم الأول\" type=\"text\">\n");
      out.write("                </div><!--End form-group-->\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input class=\"form-control\" placeholder=\"الأسم الأخير\" type=\"text\">\n");
      out.write("                </div><!--End form-group-->\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input class=\"form-control\" placeholder=\"البريد الالكترونى\" type=\"email\">\n");
      out.write("                </div><!--End form-group-->\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <input class=\"form-control\"  placeholder=\"كلمة السر\" type=\"password\">\n");
      out.write("                </div><!--End form-group-->\n");
      out.write("                <div class=\"notes\">\n");
      out.write("                    من خلال الضغط على زر تسحيل . فانك توافق على \n");
      out.write("                    <a href=\"\">قواعد موقعنا</a> و \n");
      out.write("                    <a href=\"\">الشروط والأحكام</a>\n");
      out.write("                </div>\n");
      out.write("                <button type=\"submit\" class=\"custom-btn\">تسجيل </button>\n");
      out.write("            </form><!--End dialog-form-->\n");
      out.write("            <div class=\"dont-have\">\n");
      out.write("                لديك حساب بالفعل ..\n");
      out.write("                <a class=\"popup-text\" href=\"#login-dialog\" data-effect=\"mfp-zoom-out\">إدخل الأن</a>\n");
      out.write("            </div>           \n");
      out.write("        </div><!--End login-dialog-->\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
