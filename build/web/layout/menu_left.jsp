<%-- 
    Document   : menu_left
    Created on : Dec 3, 2016, 9:52:32 PM
    Author     : BoyIt
--%>
<%@page import="model.Category"%> 
<%@page import="dao.CategoryDAO"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%CategoryDAO categoryDAO = new CategoryDAO(); %>
        <div class="megamenu-left col-md-3 col-md-pull-9">
        <div class="cd-dropdown-wrapper">
            <nav class="cd-dropdown dropdown-is-active">
                <div class="dropdown-content-title"><i class="fa fa-bars"></i> DANH MỤC SẢN PHẨM</div>
                <ul class="cd-dropdown-content">
                    <%
                    for (Category c : categoryDAO.getListCategory())
                    {
                    %>
                    <li class="">
                        <a href="product.jsp?category=<%=c.getCategoryID()%>" class="link_title_css link_title_<%=c.getCategoryID()%>">
                            <%=c.getCategoryName()%>
                        </a>
                    </li>
                    <%
                    }
                    %>
                </ul>
                <!-- .cd-dropdown-content -->
            </nav>
            <!-- .cd-dropdown -->
        </div>
    <!-- .cd-dropdown-wrapper -->
        <div class="widget-sidebar-item banner em-effect06" style="margin-top: 30px;">
            <h3 class="widget-sidebar-name">THẺ TAGS</h3>
            <ul class="widget-sidebar-list products_tags">
                <li><a href='/collections/all/ban' title='ban'>Bàn</a></li>
                <li><a href='/collections/all/ban-cafe' title='ban-cafe'>Bàn Cafe</a></li>
                <li><a href='/collections/all/ghe-sofa' title='ghe-sofa'>Ghế Sofa</a></li>
            </ul>
        </div>
        <div class="widget-sidebar-item banner em-effect06">
            <h3 class="widget-sidebar-name">Sản phẩm bán chạy</h3>
            <div class="product_item col-xs-12">
                <form action="/cart/add" class="product_item_form" method="post">
                    <div class="row">
                        <div class="product-img-parent col-sm-4 col-md-4 no-padding-lr">
                            <a class="product-img" href="/ghe-thu-gian-xanh-ngoc"><img src="//bizweb.dktcdn.net/thumb/medium/100/052/640/products/9.jpg?v=1453697167010" alt="Ghế thư gi&#227;n xanh ngọc"></a>
                        </div>
                        <div class="col-sm-8 col-md-8 righcontent">
                            <h5 class="product-name"><a href="/ghe-thu-gian-xanh-ngoc">Ghế thư giãn xanh ngọc</a></h5>
                            <span class="product-price">
                                <b class="productminprice">1.600.000₫</b>
                            </span>
                        </div>
                    </div>
                    <!-- End . -->

                </form>
            </div>
            <div class="product_item col-xs-12">
                <form action="/cart/add" class="product_item_form" method="post">
                    <div class="row">
                        <div class="product-img-parent col-sm-4 col-md-4 no-padding-lr">
                            <a class="product-img" href="/ghe-trang-tri"><img src="//bizweb.dktcdn.net/thumb/medium/100/052/640/products/4.jpg?v=1453695133927" alt="Ghế trang tr&#237;"></a>
                        </div>
                        <div class="col-sm-8 col-md-8 righcontent">
                            <h5 class="product-name"><a href="/ghe-trang-tri">Ghế trang trí</a></h5>
                            <span class="product-price">
                                <b class="productminprice">2.300.000₫</b>
                            </span>
                        </div>
                    </div>
                    <!-- End . -->
                </form>
            </div>
        </div>
        <div class="widget-sidebar-item banner em-effect06">
            <a class="em-eff06-03" href="http://bizweb.vn" title="Sidebar banner"><img alt="Ranger theme" src="//bizweb.dktcdn.net/100/052/640/themes/134620/assets/sidebar_bannerjpg.png?1479951271873"></a>
        </div>
<!--        <div class="widget-sidebar-item">
            <h3 class="widget-sidebar-name">Video</h3>
            <div class="video-container">
                <iframe width="100%" height="auto" src="https://www.youtube.com/embed/sH9XAoOuCSw" frameborder="0" allowfullscreen></iframe>
            </div>
        </div>-->
        <div id="bw-statistics"></div>
        </div>
    </body>
</html>
