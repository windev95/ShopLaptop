package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insert_005fcategory_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_set_var_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_set_var_value_nobody.release();
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
      out.write("        <title>Thêm mới danh mục</title>\r\n");
      out.write("        \r\n");
      out.write("        ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        <!-- Bootstrap -->\r\n");
      out.write("        <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">       \r\n");
      out.write("        <!-- styles -->\r\n");
      out.write("        <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/css/styles.css\" rel=\"stylesheet\">\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/bootstrap/js/jquery.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/bootstrap/js/bootstrap.min.js\"></script>      \r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/js/custom.js\"></script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");

            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
        
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("        <div class=\"page-content\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\r\n");
      out.write("                <div class=\"col-md-10\">\r\n");
      out.write("                    <div class=\"col-md-6\">\r\n");
      out.write("\t  \t\t\t\t\t<div class=\"content-box-large\">\r\n");
      out.write("\t\t\t  \t\t\t\t<div class=\"panel-heading\">\r\n");
      out.write("\t\t\t\t\t            <div class=\"panel-title\">Thông tin danh mục </div>\t\t\t\t\t          \t\t\t\t\t       \r\n");
      out.write("\t\t\t\t\t        </div>\r\n");
      out.write("                                                    <form action=\"../ManagerCategoryServlet\" method=\"POST\">\r\n");
      out.write("\t\t\t  \t\t\t\t<div class=\"panel-body\">\r\n");
      out.write("\t\t\t  \t\t\t\t\t<form action=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<fieldset>\r\n");
      out.write("                                                                                <input type=\"hidden\" name=\"command\" value=\"insert\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label>Tên danh mục</label>\r\n");
      out.write("                                                                                        <input class=\"form-control\" name=\"tenDanhMuc\" placeholder=\"Nhập tên danh mục\" type=\"text\" required>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label>MetaTittle</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" name=\"mt\" placeholder=\"Text field\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("                                                                                <div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label>Metakeywords</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" name=\"mk\" placeholder=\"Text field\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("                                                                                <div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<label>MetaDescription</label>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<input class=\"form-control\" name=\"md\" placeholder=\"Text field\" type=\"text\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</fieldset>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<div>\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("                                                                                <input type=\"submit\" class=\"btn btn-primary\" value=\"Lưu dữ liệu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t  \t\t\t\t</div>\r\n");
      out.write("                                                    </form>\r\n");
      out.write("\t\t\t  \t\t\t</div>\r\n");
      out.write("\t  \t\t\t\t</div>\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
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

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("root");
    _jspx_th_c_set_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${pageContext.request.contextPath}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }
}
