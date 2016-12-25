package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Users;

public final class checkout_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/head.jsp", out, false);
      out.write("\n");
      out.write("        <title>Thông tin thanh toán</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            Users users = (Users) session.getAttribute("users");
            if (users == null) {
                response.sendRedirect("/Laptop/login.jsp");
            }
        
      out.write("\n");
      out.write("        <div id=\"page-wrapper\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/header.jsp", out, false);
      out.write("\n");
      out.write("        <div id=\"site-content\">\n");
      out.write("        <!--MAIN\n");
      out.write("        =========================================================================== -->\n");
      out.write("                 <div id=\"main\">\n");
      out.write("                <section class=\"page_title\">\n");
      out.write("                    <h1 class=\"text-center\">Thông tin thanh toán</h1>\n");
      out.write("                </section>\n");
      out.write("                <div class=\"header-breadcrumb\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row \">\n");
      out.write("                            <div class=\"col-xs-12\">\n");
      out.write("                                <ol class=\"breadcrumb\">\n");
      out.write("                                    <li><a href=\"/\" title=\"Trang chủ\">Trang chủ </a> </li>\n");
      out.write("                                    <li class=\"active breadcrumb-title\">Thông tin thanh toán</li>\n");
      out.write("                                </ol>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- Main Content -->\n");
      out.write("                <div class=\"main-content\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-12\">\n");
      out.write("                                <div id=\"login\" class=\"col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 form-style form-login\">\n");
      out.write("                                    <form accept-charset='UTF-8' action=\"CheckOutServlet\" method=\"POST\">\n");
      out.write("                                        <input name='FormType' type='hidden' value='customer_login' />\n");
      out.write("                                        <input name='utf8' type='hidden' value='true' />\n");
      out.write("                                        <input type=\"hidden\" value=\"login\" name=\"command\" id=\"command\"/>\n");
      out.write("                                        <h3 class=\"form-heading\">Thông tin thanh toán</h3>\n");
      out.write("                                        <div class=\"row info-input\">\n");
      out.write("                                            <div class=\"\">\n");
      out.write("                                                <input type=\"text\" value=\"\" maxlength=\"50\" placeholder=\"Tên\" name=\"name\" required />\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row info-input\">\n");
      out.write("                                            <div class=\"\">\n");
      out.write("                                                <input type=\"text\" value=\"\" maxlength=\"50\" placeholder=\"Điện thoại\" name=\"phone\" required />\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row info-input\">\n");
      out.write("                                            <div class=\"\">\n");
      out.write("                                                <input type=\"text\" value=\"\" maxlength=\"50\" placeholder=\"Địa chỉ\" name=\"address\" required />\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row info-input\">\n");
      out.write("                                            <span>Payment *</span>\n");
      out.write("                                            <div class=\"\">\n");
      out.write("                                                <select name=\"payment\">\n");
      out.write("                                                    <option value=\"Bank transfer\"> Bank transfer</option>\n");
      out.write("                                                    <option value=\"Live\"> Live</option>\n");
      out.write("                                                </select>\n");
      out.write("                                            </div>                                            \n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <button class=\"btn-cart btn btn-primary pull-left\" type=\"submit\">CHECKOUT</button>\n");
      out.write("                                        </div>\n");
      out.write("                                    </form>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <script type=\"text/javascript\">\n");
      out.write("                                function showRecoverPasswordForm() {\n");
      out.write("                                    document.getElementById('recover-password').style.display = 'block';\n");
      out.write("                                    document.getElementById('login').style.display = 'none';\n");
      out.write("                                }\n");
      out.write("                                function hideRecoverPasswordForm() {\n");
      out.write("                                    document.getElementById('recover-password').style.display = 'none';\n");
      out.write("                                    document.getElementById('login').style.display = 'block';\n");
      out.write("                                }\n");
      out.write("                                if (window.location.hash == '#recover') { showRecoverPasswordForm() }\n");
      out.write("                            </script>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <!-- End Main Content -->\n");
      out.write("            </div>             \n");
      out.write("        <!--/MAIN-->\n");
      out.write("        </div>        \n");
      out.write("        <!-- SITE FOOTER\n");
      out.write("        =========================================================================== -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/brand.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/footer.jsp", out, false);
      out.write("\n");
      out.write("        <!-- /SITE FOOTER -->\n");
      out.write("    </div>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/script.jsp", out, false);
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
