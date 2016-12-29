package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import helpers.MoneyFormat;
import model.Category;
import dao.CategoryDAO;
import model.Product;
import dao.ProductDAO;
import model.Cart;

public final class all_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"vn\">\r\n");
      out.write("    <head>        \r\n");
      out.write("        <title>Tất cả sản phẩm</title>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/head.jsp", out, false);
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("        ");

            CategoryDAO categoryDAO = new CategoryDAO(); 
            ProductDAO productDAO = new ProductDAO();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            MoneyFormat formatter = new MoneyFormat();
            int pages = 0, firstResult = 0, maxResult = 0, total = 0, pagesize=5;
            if (request.getParameter("pages") != null) {
                pages = (int) Integer.parseInt(request.getParameter("pages"));
            }
            total = productDAO.countProduct();
            if (total <= pagesize) {
                firstResult = 1;
                maxResult = total;
            }else{
                firstResult = (pages - 1) * pagesize;
                maxResult = pagesize;
            }
            
        
      out.write("\r\n");
      out.write("        \r\n");
      out.write("        <div id=\"page-wrapper\">\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/header.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- SITE CONTENT\r\n");
      out.write("        =========================================================================== -->\r\n");
      out.write("        <div id=\"site-content\">\r\n");
      out.write("            <div id=\"main\">\r\n");
      out.write("<!--                MAIN-->\r\n");
      out.write("                <section class=\"page_title\">\r\n");
      out.write("                    <h1 class=\"text-center\">Tất cả sản phẩm</h1>\r\n");
      out.write("                </section>\r\n");
      out.write("                <div class=\"header-breadcrumb\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"row \">\r\n");
      out.write("                            <div class=\"col-xs-12\">\r\n");
      out.write("                                <ol class=\"breadcrumb\">\r\n");
      out.write("\r\n");
      out.write("                                    <li><a href=\"/\" title=\"Trang chủ\">Trang chủ </a> </li>\r\n");
      out.write("                                    <li class=\"active \">Tất cả sản phẩm</li>\r\n");
      out.write("                                </ol>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <section class=\"mtb25\">\r\n");
      out.write("                    <div class=\"container\">\r\n");
      out.write("                        <div class=\"row\">\r\n");
      out.write("                            <div class=\"megamenu-right col-md-9 col-md-push-3\">\r\n");
      out.write("                                <div class=\"row\">\r\n");
      out.write("                                    <script type=\"text/javascript\">\r\n");
      out.write("                                        $(document).ready(function () {\r\n");
      out.write("                                            Bizweb.queryParams = {};\r\n");
      out.write("                                            if (location.search.length) {\r\n");
      out.write("                                                for (var aKeyValue, i = 0, aCouples = location.search.substr(1).split('&') ; i < aCouples.length; i++) {\r\n");
      out.write("                                                    aKeyValue = aCouples[i].split('=');\r\n");
      out.write("                                                    if (aKeyValue.length > 1) {\r\n");
      out.write("                                                        Bizweb.queryParams[decodeURIComponent(aKeyValue[0])] = decodeURIComponent(aKeyValue[1]);\r\n");
      out.write("                                                    }\r\n");
      out.write("                                                }\r\n");
      out.write("                                            }\r\n");
      out.write("                                            $('.sort-by')\r\n");
      out.write("                                                .val('default')\r\n");
      out.write("                                                .bind('change', function () {\r\n");
      out.write("                                                    Bizweb.queryParams.sortby = jQuery(this).val();\r\n");
      out.write("                                                    location.search = jQuery.param(Bizweb.queryParams).replace(/\\+/g, '%20');\r\n");
      out.write("                                                });\r\n");
      out.write("                                        });\r\n");
      out.write("                                    </script>\r\n");
      out.write("                                    \r\n");
      out.write("                                    <div class=\"col-xs-12\">\r\n");
      out.write("                                        <div class=\"filter-right\">\r\n");
      out.write("                                            <div class=\"pull-left-content\">\r\n");
      out.write("                                                <div class=\"product-filter filter-item\">\r\n");
      out.write("                                                    <div class=\"options\">\r\n");
      out.write("                                                        <div class=\"button-group display\" data-toggle=\"buttons-radio\">\r\n");
      out.write("                                                            <button id=\"grid\" class=\"active\" rel=\"tooltip\" title=\"Dạng Lưới\" onclick=\"display('grid');\"><i class=\"fa fa-th-large\"></i></button>\r\n");
      out.write("                                                            <button id=\"list\" rel=\"tooltip\" title=\"Dạng Danh Sách\" onclick=\"display('list');\"><i class=\"fa fa-th-list\"></i></button>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("                                                </div>\r\n");
      out.write("<!--                                                <div class=\"filter-item\">\r\n");
      out.write("                                                    <span class=\"label-btn\">Sắp xếp:</span>\r\n");
      out.write("                                                    <select class=\"sort sort-by selectpicker\">\r\n");
      out.write("                                                        <option value=\"default\">Mặc định</option>\r\n");
      out.write("                                                        <option value=\"price-asc\">Giá tăng dần</option>\r\n");
      out.write("                                                        <option value=\"price-desc\">Giá giảm dần</option>\r\n");
      out.write("                                                        <option value=\"alpha-asc\">Từ A-Z</option>\r\n");
      out.write("                                                        <option value=\"alpha-desc\">Từ Z-A</option>\r\n");
      out.write("                                                        <option value=\"created-asc\">Mới đến cũ</option>\r\n");
      out.write("                                                        <option value=\"created-desc\">Cũ đến mới</option>\r\n");
      out.write("                                                    </select>\r\n");
      out.write("                                                </div>-->\r\n");
      out.write("                                                <!-- End .filter-item -->\r\n");
      out.write("<!--                                                <div class=\"filter-item\">\r\n");
      out.write("                                                    <span class=\"label-btn\">Hiển thị:</span>\r\n");
      out.write("                                                    <select onchange=\"location = this.options[this.selectedIndex].value;\" class=\"sort selectpicker\">\r\n");
      out.write("                                                        <option value=\"default\">18</option>\r\n");
      out.write("                                                        <option value=\"/collections/all?view=a\"><a href=\"/collections/all?view=a\">21</a></option>\r\n");
      out.write("                                                        <option value=\"/collections/all?view=b\"><a href=\"/collections/all?view=b\">24</a></option>\r\n");
      out.write("                                                        <option value=\"/collections/all?view=c\"><a href=\"/collections/all?view=c\">27</a></option>\r\n");
      out.write("                                                    </select>\r\n");
      out.write("                                                </div>-->\r\n");
      out.write("                                                <!-- End .filter-item -->\r\n");
      out.write("                                            </div>\r\n");
      out.write("\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <!-- End. Filter 1-->\r\n");
      out.write("\r\n");
      out.write("                                    <section class=\"section-products\">\r\n");
      out.write("                                        <!-- End .section-title -->\r\n");
      out.write("                                        <div class=\"product-list-show\" style=\"display: none\">\r\n");
      out.write("                                            ");

                                                for(Product p : productDAO.getListAllProduct())
                                                {
                                            
      out.write("\r\n");
      out.write("                                           <div class=\"product_item col-xs-12\">\r\n");
      out.write("                                                <form action=\"CartServlet?command=plus&productID=");
      out.print(p.getProductID());
      out.write("\" method=\"post\" class=\"product_item_form\">\r\n");
      out.write("                                                    <div>\r\n");
      out.write("                                                        <div class=\"col-sm-5 col-md-5 no-padding-l\">\r\n");
      out.write("                                                            <div class=\"product-img-parent\">\r\n");
      out.write("                                                                <a class=\"product-img\" href=\"detail.jsp?product=");
      out.print(p.getProductID());
      out.write("\"><img src=\"./images/product/");
      out.print(p.getProductImage());
      out.write("\" alt=\"");
      out.print(p.getProductName());
      out.write("\"></a>\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <div class=\"col-sm-7 col-md-7 righcontent\">\r\n");
      out.write("                                                            <h5 class=\"product-name\"><a href=\"detail.jsp?product=");
      out.print(p.getProductID());
      out.write('"');
      out.write('>');
      out.print(p.getProductName());
      out.write("</a></h5>\r\n");
      out.write("                                                            <div class=\"description\">\r\n");
      out.write("                                                                ");
      out.print(p.getProductContent());
      out.write("\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                            <span class=\"product-price\">\r\n");
      out.write("                                                                <b class=\"productminprice\">");
      out.print( formatter.format(p.getProductPrice()));
      out.write("</b>\r\n");
      out.write("                                                            </span>\r\n");
      out.write("                                                            <div style=\"display:none\">\r\n");
      out.write("                                                                <input type=\"hidden\" name=\"variantId\" value=\"2024175\" />\r\n");
      out.write("                                                            </div>\r\n");
      out.write("<!--                                                            số lượng-->\r\n");
      out.write("                                                            <div style=\"display:none\">\r\n");
      out.write("                                                                <div class=\"input-group quantity\">\r\n");
      out.write("                                                                    <input type=\"text\" class=\"form-control\" name=\"quantity\" id=\"quantity_wanted\" size=\"2\" value=\"1\" />\r\n");
      out.write("                                                                </div>\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                            <div class=\"product-action-btn-list\">\r\n");
      out.write("                                                                <div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">\r\n");
      out.write("                                                                    <a class=\"btn btn-default btn-lg addtocart\" href=\"CartServlet?command=plus&productID=");
      out.print(p.getProductID());
      out.write("\">MUA NGAY</a>\r\n");
      out.write("<!--                                                                    <button class=\"product-action btn-red addtocart add-to-cart btn btn-default btn-lg\" type=\"submit\" id=\"button-cart\">MUA NGAY</button>-->\r\n");
      out.write("                                                                    <button class=\"btn btn-default btn-black btn-lg\"><a href=\"detail.jsp?product=");
      out.print(p.getProductID());
      out.write("\">CHI TIẾT</a></button>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                    </div>\r\n");
      out.write("<!--                                                     End . -->\r\n");
      out.write("                                                </form>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"product-grid-show\">\r\n");
      out.write("                                            ");

                                                for(Product p : productDAO.getListAllProduct())
                                                {
                                            
      out.write("\r\n");
      out.write("                                            <div class=\"col-xs-12 col-sm-6 col-md-4\">\r\n");
      out.write("                                                <div class=\"product_item\">\r\n");
      out.write("                                                    <form action=\"CartServlet?command=plus&productID=");
      out.print(p.getProductID());
      out.write("\" class=\"product_item_form\" method=\"post\">\r\n");
      out.write("                                                        <div class=\"product-gird\">\r\n");
      out.write("                                                            <div class=\"product-img-parent\">\r\n");
      out.write("                                                                <a class=\"product-img\" href=\"detail.jsp?product=");
      out.print(p.getProductID());
      out.write("\" title=\"");
      out.print(p.getProductName());
      out.write("\">\r\n");
      out.write("                                                                    <img class=\"product-img-first\" src=\"./images/product/");
      out.print(p.getProductImage());
      out.write("\" alt=\"");
      out.print(p.getProductName());
      out.write("\">\r\n");
      out.write("                                                                </a>\r\n");
      out.write("                                                                <div class=\"product-action-btn\">\r\n");
      out.write("                                                                    <div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">\r\n");
      out.write("                                                                        <a class=\"btn btn-default btn-lg addtocart\" href=\"CartServlet?command=plus&productID=");
      out.print(p.getProductID());
      out.write("\">MUA NGAY</a>\r\n");
      out.write("<!--                                                                        <button class=\"product-action btn-red addtocart add-to-cart btn btn-default btn-lg\" type=\"submit\" id=\"button-cart\">MUA NGAY</button>-->\r\n");
      out.write("                                                                        <a href=\"detail.jsp?product=");
      out.print(p.getProductID());
      out.write("\" class=\"btn btn-default btn-black btn-lg\">CHI TIẾT</a>\r\n");
      out.write("                                                                    </div>\r\n");
      out.write("                                                                </div>\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                            <span class=\"product-price text-center\">\r\n");
      out.write("                                                                <b class=\"productminprice\">");
      out.print(formatter.format(p.getProductPrice()));
      out.write("</b>\r\n");
      out.write("                                                            </span>\r\n");
      out.write("                                                            <h3 class=\"product-name\"><a href=\"detail.jsp?product=");
      out.print(p.getProductID());
      out.write("\" title=\"");
      out.print(p.getProductName());
      out.write('"');
      out.write('>');
      out.print(p.getProductName());
      out.write("</a></h3>\r\n");
      out.write("                                                            <div style=\"display:none\">\r\n");
      out.write("                                                                <input type=\"hidden\" name=\"variantId\" value=\"2024175\" />\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                            <!--số lượng-->\r\n");
      out.write("                                                            <div style=\"display:none\">\r\n");
      out.write("                                                                <div class=\"input-group quantity\">\r\n");
      out.write("                                                                    <input type=\"text\" class=\"form-control\" name=\"quantity\" id=\"quantity_wanted\" size=\"2\" value=\"1\" />\r\n");
      out.write("                                                                </div>\r\n");
      out.write("                                                            </div>\r\n");
      out.write("                                                        </div>\r\n");
      out.write("                                                        <!-- End .product-gird -->\r\n");
      out.write("                                                    </form>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            \r\n");
      out.write("                                            ");

                                                }
                                            
      out.write("\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </section>\r\n");
      out.write("                                    <div class=\"col-xs-12\">\r\n");
      out.write("                                        <div class=\"collection-pagination-parent\">\r\n");
      out.write("                                            <div class=\"filter-right\">\r\n");
      out.write("                                                <div class=\"collection-pagination pull-right pagination-wrapper\">\r\n");
      out.write("                                                    <ul class=\"pagination\">                                                                                          \r\n");
      out.write("                                                      \r\n");
      out.write("                                                        ");
for(int i=1;i<=(total/pagesize)+1;i++){
      out.write("\r\n");
      out.write("                                                        <li><a href=\"all.jsp&pages=");
      out.print(i);
      out.write('"');
      out.write('>');
      out.print(i);
      out.write("</a></li>\r\n");
      out.write("                                                        ");
}
      out.write("\r\n");
      out.write("                                                      \r\n");
      out.write("                                                    </ul>\r\n");
      out.write("                                                </div>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div> \r\n");
      out.write("                                    <!-- End. Filter 2-->\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/menu_left.jsp", out, false);
      out.write("\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </section>\r\n");
      out.write("                <script type=\"text/javascript\">\r\n");
      out.write("                    function display(view) {\r\n");
      out.write("                        if (view == 'grid') {\r\n");
      out.write("                            $('.product-grid-show').show();\r\n");
      out.write("                            $('.product-list-show').hide();\r\n");
      out.write("                            $('.display').html('<button class=\"active\" id=\"grid\" rel=\"tooltip\" title=\"Dạng Lưới\" onclick=\"display(\\'grid\\');loadisotope();\"><i class=\"fa fa-th-large\"></i></button> <button id=\"list\" rel=\"tooltip\" title=\"Dạng Danh sách\" onclick=\"display(\\'list\\');\"><i class=\"fa fa-th-list\"></i></button>');\r\n");
      out.write("                            localStorage.setItem('display', 'grid');\r\n");
      out.write("                        } else {\r\n");
      out.write("                            $('.product-grid-show').hide();\r\n");
      out.write("                            $('.product-list-show').show();\r\n");
      out.write("                            $('.display').html('<button id=\"grid\" rel=\"tooltip\" title=\"Dạng Lưới\" onclick=\"display(\\'grid\\');loadisotope();\"><i class=\"fa fa-th-large\"></i></button> <button class=\"active\" id=\"list\" rel=\"tooltip\" title=\"Dạng Danh sách\" onclick=\"display(\\'list\\');\"><i class=\"fa fa-th-list\"></i></button>');\r\n");
      out.write("                            localStorage.setItem('display', 'list');\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                    if (localStorage.getItem('display') == 'list') {\r\n");
      out.write("                        display('list');\r\n");
      out.write("                    } else {\r\n");
      out.write("                        display('grid');\r\n");
      out.write("                    }\r\n");
      out.write("                </script>            \r\n");
      out.write("<!--                /MAIN-->\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /SITE CONTENT -->\r\n");
      out.write("        \r\n");
      out.write("        <!-- SITE FOOTER\r\n");
      out.write("        =========================================================================== -->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/brand.jsp", out, false);
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/footer.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- /SITE FOOTER -->\r\n");
      out.write("    </div>\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "layout/script.jsp", out, false);
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
