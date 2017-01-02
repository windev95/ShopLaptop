package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class insert_005fproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Thêm mới sản phẩm</title>\r\n");
      out.write("        \r\n");
      out.write("        ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("        <meta content=\"width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no\" name=\"viewport\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/datatables/dataTables.bootstrap.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/dist/css/AdminLTE.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/dist/css/skins/_all-skins.min.css\">\r\n");
      out.write("         <!-- bootstrap wysihtml5 - text editor -->\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css\">\r\n");
      out.write("        \r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/iCheck/all.css\">\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/iCheck/icheck.min.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/iCheck/icheck.js\"></script>\r\n");
      out.write("    <script>\r\n");
      out.write("$(document).ready(function(){\r\n");
      out.write("  $('input').iCheck({\r\n");
      out.write("    checkboxClass: 'icheckbox_minimal',\r\n");
      out.write("    radioClass: 'iradio_minimal',\r\n");
      out.write("    increaseArea: '20%' // optional\r\n");
      out.write("  });\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"hold-transition skin-blue sidebar-mini\">\r\n");
      out.write("        ");

            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
        
      out.write("\r\n");
      out.write("            <div class=\"wrapper\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./layout/header.jsp", out, false);
      out.write("\r\n");
      out.write("            <div class=\"content-wrapper\">\r\n");
      out.write("                <section class=\"content-header\">\r\n");
      out.write("                    <h1>\r\n");
      out.write("                      Dashboard\r\n");
      out.write("                      <small>Version 2.0</small>\r\n");
      out.write("                    </h1>\r\n");
      out.write("                    <ol class=\"breadcrumb\">\r\n");
      out.write("                      <li><a href=\"#\"><i class=\"fa fa-dashboard\"></i> Home</a></li>\r\n");
      out.write("                      <li class=\"active\">Dashboard</li>\r\n");
      out.write("                    </ol>\r\n");
      out.write("                  </section>\r\n");
      out.write("<!--                MAIN------------------------------------------------------------------->\r\n");
      out.write("                    <section class=\"content\">\r\n");
      out.write("                      <div class=\"row\">\r\n");
      out.write("                          <div class=\"col-xs-12\">\r\n");
      out.write("                            <!-- Horizontal Form -->\r\n");
      out.write("                            <div class=\"box box-primary\">\r\n");
      out.write("                              <div class=\"box-header with-border\">\r\n");
      out.write("                                <h3 class=\"box-title\">Thông tin sản phẩm</h3>\r\n");
      out.write("                              </div>\r\n");
      out.write("                              <!-- /.box-header -->\r\n");
      out.write("                              <!-- form start -->\r\n");
      out.write("                              <form action=\"../ManagerProductServlet\" method=\"POST\">\r\n");
      out.write("                                <div class=\"box-body\">\r\n");
      out.write("                                    <input type=\"hidden\" name=\"command\" value=\"insert\">\r\n");
      out.write("                                    <div class=\"row\">\r\n");
      out.write("                                        <div class=\"col-md-6\">                                  \r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Tên sản phẩm</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_name\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>                                                                                                        \r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Hình ảnh</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_image\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>  \r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Màu sắc</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_color\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>CPU</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_cpudetail\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Ram</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_ramdetail\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Ổ cứng</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_storagedetail\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Màn hình</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_screen\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>VGA</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_vga\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Âm thanh</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_sound\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Đĩa quang</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_dvd\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Cổng giao tiếp</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_connect\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Giao tiếp mạng</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_lan\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Wifi</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_wifi\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Không dây khác</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_wireless\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Card reader</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_cardreader\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Webcam</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_webcam\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Bin</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_pin\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Hệ điều hành</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_os\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Kích thước</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_size\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-md-6\">\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Trọng lượng</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_weight\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Chất liệu</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_material\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Giá</label>\r\n");
      out.write("                                              <input type=\"number\"  name=\"product_price\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>                                          \r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Giảm giá</label>\r\n");
      out.write("                                              <input type=\"number\"  name=\"product_sale\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>  \r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Giá thật</label>\r\n");
      out.write("                                              <input type=\"number\"  name=\"product_price_real\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Số lượng</label>\r\n");
      out.write("                                              <input type=\"number\"  name=\"product_buys\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Tồn kho</label>\r\n");
      out.write("                                              <input type=\"number\"  name=\"product_inventory\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                            <label>Chọn CPU</label>\r\n");
      out.write("                                            <select class=\"form-control\">\r\n");
      out.write("                                                <option>1</option>                                        \r\n");
      out.write("                                            </select>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                            <label>Chọn Ram</label>\r\n");
      out.write("                                            <select class=\"form-control\">\r\n");
      out.write("                                                <option>1</option>                                        \r\n");
      out.write("                                            </select>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                            <label>Chọn ổ cứng</label>\r\n");
      out.write("                                            <select class=\"form-control\">\r\n");
      out.write("                                                <option>1</option>                                        \r\n");
      out.write("                                            </select>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                            <label>Chọn mức giá</label>\r\n");
      out.write("                                            <select class=\"form-control\">\r\n");
      out.write("                                                <option>1</option>                                      \r\n");
      out.write("                                            </select>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                            <label>Chọn kích thước màn hình</label>\r\n");
      out.write("                                            <select class=\"form-control\">\r\n");
      out.write("                                                <option>1</option>                                        \r\n");
      out.write("                                            </select>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                            <label>Chọn danh mục</label>\r\n");
      out.write("                                            <select class=\"form-control\">\r\n");
      out.write("                                                <option>1</option>                                      \r\n");
      out.write("                                            </select>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                            <label>Chọn nhà sản xuất</label>\r\n");
      out.write("                                            <select class=\"form-control\">\r\n");
      out.write("                                                <option>1</option>                                       \r\n");
      out.write("                                            </select>\r\n");
      out.write("                                            </div>    \r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>product_metatitle</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_metatitle\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>product_metakeywords</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_metakeywords\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>product_metadescription</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_metadescription\" required class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                              <label>Giới thiệu</label>\r\n");
      out.write("                                              <input type=\"text\"  name=\"product_content\" class=\"form-control\" placeholder=\"\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"form-group\">\r\n");
      out.write("                                            <label>\r\n");
      out.write("                                               <input type=\"checkbox\">\r\n");
      out.write("<input type=\"checkbox\" checked>\r\n");
      out.write("<input type=\"radio\" name=\"iCheck\">\r\n");
      out.write("<input type=\"radio\" name=\"iCheck\" checked>\r\n");
      out.write("                                                <input type=\"checkbox\" class=\"minimal-red\">\r\n");
      out.write("                                            </label>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>                                       \r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <!-- /.box-body -->\r\n");
      out.write("                                    <div class=\"box-footer\">\r\n");
      out.write("                                      <button type=\"submit\" class=\"btn btn-default\">Hủy</button>\r\n");
      out.write("                                      <button type=\"submit\" class=\"btn btn-primary pull-right\">Thêm</button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <!-- /.box-footer -->\r\n");
      out.write("                                  </form>\r\n");
      out.write("                                </div>\r\n");
      out.write("                              </div>                                             \r\n");
      out.write("                            </div>\r\n");
      out.write("                        </section>\r\n");
      out.write("<!--                /MAIN------------------------------------------------------------------->\r\n");
      out.write("            </div>            \r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./layout/footer.jsp", out, false);
      out.write("\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./layout/control-sidebar.jsp", out, false);
      out.write("\r\n");
      out.write("            <div class=\"control-sidebar-bg\"></div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/jQuery/jquery-2.2.3.min.js\"></script>\r\n");
      out.write("            <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("            <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/datatables/jquery.dataTables.min.js\"></script>\r\n");
      out.write("            <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/datatables/dataTables.bootstrap.min.js\"></script>\r\n");
      out.write("            <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/slimScroll/jquery.slimscroll.min.js\"></script>\r\n");
      out.write("            <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/plugins/fastclick/fastclick.js\"></script>\r\n");
      out.write("            <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/dist/js/app.min.js\"></script>\r\n");
      out.write("            <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/dist/js/demo.js\"></script>           \r\n");
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
