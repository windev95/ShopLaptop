package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import dao.UsersDAO;
import model.Bill;
import java.util.ArrayList;
import dao.BillDAO;

public final class manager_005fbill_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Quản lý đơn hàng</title>\r\n");
      out.write("        <link rel=\"icon\" href=\"./images/favicon.png\" type=\"image/x-icon\" />\r\n");
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
      out.write("        \r\n");
      out.write("    </script>\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"hold-transition skin-blue sidebar-mini\">\r\n");
      out.write("        ");

            BillDAO billDAO = new BillDAO();
            ArrayList<Bill> listBill = billDAO.getListBillnotpaid();
            UsersDAO usersDAO = new UsersDAO();            
        
      out.write("\r\n");
      out.write("       <div class=\"wrapper\">\r\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "./layout/header.jsp", out, false);
      out.write("\r\n");
      out.write("            <div class=\"content-wrapper\">\r\n");
      out.write("                <section class=\"content-header\">\r\n");
      out.write("                    <div class=\"btn-group btn-group-justified\">\r\n");
      out.write("                        <div class=\"btn-group\">\r\n");
      out.write("                            <a class=\"btn btn-warning btn-flat\" href=\"../Admin/manager_bill.jsp\" >Chưa thanh toán</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"btn-group\">\r\n");
      out.write("                            <a class=\"btn btn-info btn-flat\" href=\"../Admin/paid_bill.jsp\" >Đã thanh toán</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"btn-group\">\r\n");
      out.write("                            <a class=\"btn btn-success btn-flat\" href=\"../Admin/finish_bill.jsp\" >Hoàn thành</a>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>                                                               \r\n");
      out.write("                  </section>\r\n");
      out.write("<!--                MAIN------------------------------------------------------------------->\r\n");
      out.write("                        <section class=\"content\">\r\n");
      out.write("                             <div class=\"row\">\r\n");
      out.write("                               <div class=\"col-xs-12\">\r\n");
      out.write("                                 <!-- /.box -->\r\n");
      out.write("                                 <div class=\"box\">\r\n");
      out.write("                                   <div class=\"box-header\">              \r\n");
      out.write("                                     <h3 class=\"box-title\">Hóa đơn chưa thanh toán</h3>                                                                       \r\n");
      out.write("                                   </div>\r\n");
      out.write("                                   <!-- /.box-header -->\r\n");
      out.write("                                   <div class=\"box-body\">\r\n");
      out.write("                                     <table id=\"example1\" class=\"table table-bordered table-striped\">\r\n");
      out.write("                                       <thead>\r\n");
      out.write("                                       <tr>\r\n");
      out.write("                                            <th>Mã hóa đơn</th>\r\n");
      out.write("                                            <th>Khách hàng</th>\t\t\t\t\t\t\t\r\n");
      out.write("                                            <th>Tổng hóa đơn</th>\r\n");
      out.write("                                            <th>Thanh toán</th>\r\n");
      out.write("                                            <th>Địa chỉ giao hàng</th>\r\n");
      out.write("                                            <th>Ngày mua</th>\r\n");
      out.write("                                            <th width=\"100px\">Tùy chọn</th>                                           \r\n");
      out.write("                                       </tr>\r\n");
      out.write("                                       </thead>\r\n");
      out.write("                                       <tbody>\r\n");
      out.write("                                        ");

                                            for(Bill bill : listBill){
                                        
      out.write("\r\n");
      out.write("                                        <tr>                                        \r\n");
      out.write("                                          <td>");
      out.print(bill.getBillID());
      out.write("</td>\r\n");
      out.write("                                          <td>");
      out.print(usersDAO.getUser(bill.getUserID()).getUserEmail());
      out.write("</td>\r\n");
      out.write("                                          <td>");
      out.print(bill.getBillTotal());
      out.write("</td>\r\n");
      out.write("                                          <td>");
      out.print(bill.getBillPayment());
      out.write("</td>\r\n");
      out.write("                                          <td>");
      out.print(bill.getBillAddress());
      out.write("</td>\r\n");
      out.write("                                          <td>");
      out.print(bill.getBillDate());
      out.write("</td>                                         \r\n");
      out.write("                                          <td>\r\n");
      out.write("                                              <center> \r\n");
      out.write("                                             <button class=\"btn btn-primary btn-xs\" onclick=\"location.href='../ManagerBillServlet?command=update&bill_id=");
      out.print(bill.getBillID());
      out.write("'\"><i class=\"glyphicon glyphicon-pencil\"></i> Xác nhận</button>\r\n");
      out.write("                                             <button class=\"btn btn-danger btn-xs\" onclick=\"location.href='../ManagerBillServlet?command=delete&bill_id=");
      out.print(bill.getBillID());
      out.write("'\"><i class=\"glyphicon glyphicon-remove\"></i> Hủy</button>\r\n");
      out.write("                                                </center> \r\n");
      out.write("                                           </td>                                         \r\n");
      out.write("                                        </tr>\r\n");
      out.write("                                       ");
 }
      out.write("\r\n");
      out.write("                                       </tbody>\r\n");
      out.write("                                       <tfoot>\r\n");
      out.write("                                       <tr>\r\n");
      out.write("                                            <th>Mã hóa đơn</th>\r\n");
      out.write("                                            <th>Khách hàng</th>\t\t\t\t\t\t\t\r\n");
      out.write("                                            <th>Tổng hóa đơn</th>\r\n");
      out.write("                                            <th>Thanh toán</th>\r\n");
      out.write("                                            <th>Địa chỉ giao hàng</th>\r\n");
      out.write("                                            <th>Ngày mua</th>\r\n");
      out.write("                                            <th>Tùy chọn</th>\r\n");
      out.write("                                       </tr>\r\n");
      out.write("                                       </tfoot>\r\n");
      out.write("                                     </table>\r\n");
      out.write("                                   </div>\r\n");
      out.write("                                   <!-- /.box-body -->\r\n");
      out.write("                                 </div>\r\n");
      out.write("                                 <!-- /.box -->\r\n");
      out.write("                               </div>\r\n");
      out.write("                               <!-- /.col -->\r\n");
      out.write("                             </div>\r\n");
      out.write("                             <!-- /.row -->\r\n");
      out.write("                           </section>\r\n");
      out.write("\r\n");
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
      out.write("            <script>\r\n");
      out.write("            $(document).ready(function () {\r\n");
      out.write("                $('#example1').DataTable({\r\n");
      out.write("                    responsive: true\r\n");
      out.write("                });\r\n");
      out.write("            });\r\n");
      out.write("            </script>\r\n");
      out.write("            <script type=\"text/javascript\">\r\n");
      out.write("            $(function(){\r\n");
      out.write("                    $('.sidebar-menu a').filter(function(){return this.href===location.href;}).parent().addClass('active').siblings().removeClass('active');\r\n");
      out.write("                    $('.sidebar-menu a').click(function(){\r\n");
      out.write("                            $(this).parent().addClass('active').siblings().removeClass('active');\t\r\n");
      out.write("                    });\r\n");
      out.write("            });\r\n");
      out.write("            </script>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
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
