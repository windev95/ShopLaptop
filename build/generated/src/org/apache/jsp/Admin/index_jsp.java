package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import model.Bill;
import dao.UsersDAO;
import java.util.ArrayList;
import dao.BillDAO;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Admin</title>\r\n");
      out.write("        <link rel=\"icon\" href=\"./images/favicon.png\" type=\"image/x-icon\" />\r\n");
      out.write("        \r\n");
      out.write("        ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\r\n");
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
      out.write("/Admin/layout/plugins/jvectormap/jquery-jvectormap-1.2.2.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/dist/css/AdminLTE.min.css\">\r\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("/Admin/layout/dist/css/skins/_all-skins.min.css\">\r\n");
      out.write("        <style type=\"text/css\">\r\n");
      out.write("            .jqstooltip \r\n");
      out.write("            { \r\n");
      out.write("                position: absolute;\r\n");
      out.write("                left: 0px;top: 0px;\r\n");
      out.write("                visibility: hidden;\r\n");
      out.write("                background: rgb(0, 0, 0) transparent;\r\n");
      out.write("                background-color: rgba(0,0,0,0.6);\r\n");
      out.write("                filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);\r\n");
      out.write("                -ms-filter: \"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)\";\r\n");
      out.write("                color: white;font: 10px arial, san serif;\r\n");
      out.write("                text-align: left;white-space: nowrap;\r\n");
      out.write("                padding: 5px;border: 1px solid white;\r\n");
      out.write("                z-index: 10000;}.jqsfield { color: white;font: 10px arial, san serif;text-align: left;}              \r\n");
      out.write("        </style>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"hold-transition skin-blue sidebar-mini\">\r\n");
      out.write("        ");

            BillDAO billDAO = new BillDAO();
            ArrayList<Bill> listBill = billDAO.getListBill();
            UsersDAO usersDAO = new UsersDAO();            
        
      out.write("\r\n");
      out.write("        <div class=\"wrapper\">\r\n");
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
      out.write("                      <div class=\"box box-info\">\r\n");
      out.write("            <div class=\"box-header with-border\">\r\n");
      out.write("              <h3 class=\"box-title\">Latest Orders</h3>\r\n");
      out.write("\r\n");
      out.write("              <div class=\"box-tools pull-right\">\r\n");
      out.write("                <button type=\"button\" class=\"btn btn-box-tool\" data-widget=\"collapse\"><i class=\"fa fa-minus\"></i>\r\n");
      out.write("                </button>\r\n");
      out.write("                <button type=\"button\" class=\"btn btn-box-tool\" data-widget=\"remove\"><i class=\"fa fa-times\"></i></button>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.box-header -->\r\n");
      out.write("            <div class=\"box-body\">\r\n");
      out.write("              <div class=\"table-responsive\">\r\n");
      out.write("                <table class=\"table no-margin\">\r\n");
      out.write("                  <thead>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <th>Mã hóa đơn</th>\r\n");
      out.write("                    <th>Khách hàng</th>\r\n");
      out.write("                    <th>Địa chỉ</th>\r\n");
      out.write("                    <th>Tổng hóa đơn</th>\r\n");
      out.write("                    <th>Tình trạng</th>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  </thead>\r\n");
      out.write("                  <tbody>\r\n");
      out.write("                      ");

                                            for(Bill bill : listBill){
                                        
      out.write("\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td><a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${root}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("../Admin/bill_detail.jsp?bill=");
      out.print(bill.getBillID());
      out.write('"');
      out.write('>');
      out.print(bill.getBillID());
      out.write("</a></td>\r\n");
      out.write("                    <td>");
      out.print(usersDAO.getUser(bill.getUserID()).getUserEmail());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(bill.getBillAddress());
      out.write("</td>\r\n");
      out.write("                    <td>");
      out.print(bill.getBillTotal());
      out.write("</td>\r\n");
      out.write("                    ");
 if (bill.getBillPaid()==0) {                      
                    
      out.write("\r\n");
      out.write("                    <td><span class=\"label label-warning\">Chưa thanh toán</span></td>\r\n");
      out.write("                    ");
 } else if (bill.getBillPaid()==1&&bill.getBillFinish()==0) {                          
                    
      out.write("\r\n");
      out.write("                    <td><span class=\"label label-info\">Đã thanh toán</span></td>\r\n");
      out.write("                    ");
 } else if (bill.getBillFinish()==1) {                          
                    
      out.write("\r\n");
      out.write("                    <td><span class=\"label label-success\">Hoàn thành</span></td>\r\n");
      out.write("                    ");
 }
      out.write("\r\n");
      out.write("                  </tr>\r\n");
      out.write("                  ");
 }
      out.write("\r\n");
      out.write("                  \r\n");
      out.write("                  </tbody>\r\n");
      out.write("                </table>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- /.table-responsive -->\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.box-body -->\r\n");
      out.write("            <div class=\"box-footer clearfix\">\r\n");
      out.write("              \r\n");
      out.write("              <a href=\"../Admin/manager_bill.jsp\" class=\"btn btn-sm btn-default btn-flat pull-right\">Xem tất cả</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.box-footer -->\r\n");
      out.write("          </div>\r\n");
      out.write("                    </section>\r\n");
      out.write("<!--                /MAIN------------------------------------------------------------------->\r\n");
      out.write("            </div>            \r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./layout/footer.jsp", out, false);
      out.write("\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./layout/control-sidebar.jsp", out, false);
      out.write("\r\n");
      out.write("            <div class=\"control-sidebar-bg\"></div>\r\n");
      out.write("        </div>\r\n");
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
      out.write("/Admin/layout/dist/js/demo.js\"></script>\r\n");
      out.write("            <script type=\"text/javascript\">\r\n");
      out.write("\t$(function(){\r\n");
      out.write("\t\t$('.sidebar-menu a').filter(function(){return this.href===location.href;}).parent().addClass('active').siblings().removeClass('active');\r\n");
      out.write("\t\t$('.sidebar-menu a').click(function(){\r\n");
      out.write("\t\t\t$(this).parent().addClass('active').siblings().removeClass('active');\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t});\r\n");
      out.write("\t</script>\r\n");
      out.write("    </body>  \r\n");
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
