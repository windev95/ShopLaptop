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
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link href='./css/main.css' rel='stylesheet' type='text/css' />        
<!--        <link rel="stylesheet" href="./css/bootstrap.min.css">
        <script src="./js/jquery.min.js"></script>
        <script src="./js/bootstrap.min.js"></script>-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <%
            CategoryDAO categoryDAO = new CategoryDAO(); 
        %>
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
                        <a href="product.jsp?category=<%=c.getCategoryID()%>" class="link_title_css link_title_<%=c.getCategoryID()%>"> <%=c.getCategoryName()%>
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

<!--               DEMO DEMO DEMO ==========================================-->

        <div class="cd-dropdown-wrapper">
            <nav class="cd-dropdown dropdown-is-active">
                <div class="dropdown-content-title">Tìm kiếm sản phẩm</div>

                <ul class="cd-dropdown-content">
                    <div class="panel-group" id="accordion">
                        
<!--                    NHÀ SẢN XUẤT  -->
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h5 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">NHÀ SẢN XUẤT</a>
                        </h5>
                      </div>
                      <div id="collapse1" class="panel-collapse collapse">

                        <div class="btn-group" data-toggle="buttons">
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options1" id="option1" autocomplete="on" value="Tất cả" checked> Tất cả
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options1" id="option2" autocomplete="off" > 2 GB
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options1" id="option3" autocomplete="off" > 4 GB
                                </label>
                            </div>
                          </div>
                      </div>
                    </div>
<!--                    KHOẢNG GIÁ-->
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">KHOẢNG GIÁ</a>
                        </h4>
                      </div>
                      <div id="collapse2" class="panel-collapse collapse">
                        <div class="btn-group" data-toggle="buttons">
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options2" id="option1" autocomplete="off" checked> Tất cả
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options2" id="option2" autocomplete="off" > 2 GB
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options2" id="option3" autocomplete="off" > 4 GB
                                </label>
                            </div>
                            </div>
                      </div>
                    </div>
<!--                    MÀN HÌNH-->
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">MÀN HÌNH</a>
                        </h4>
                      </div>
                      <div id="collapse3" class="panel-collapse collapse">
                        <div class="btn-group" data-toggle="buttons">
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options3" id="option1" autocomplete="off" checked> Tất cả
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options3" id="option2" autocomplete="off" > 2 GB
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options3" id="option3" autocomplete="off" > 4 GB
                                </label>
                            </div>
                          </div>
                      </div>
                    </div>
<!--                    BỘ VI XỬ LÝ-->
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">VI XỬ LÝ</a>
                        </h4>
                      </div>
                      <div id="collapse4" class="panel-collapse collapse">
                        <div class="btn-group" data-toggle="buttons">
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options4" id="option1" autocomplete="off" checked> Tất cả
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options4" id="option2" autocomplete="off" > 2 GB
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options4" id="option3" autocomplete="off" > 4 GB
                                </label>
                            </div>
                            </div>
                      </div>
                    </div>
<!--                    BỘ NHỚ-->
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">BỘ NHỚ</a>
                        </h4>
                      </div>
                      <div id="collapse5" class="panel-collapse collapse">
                        <div class="btn-group" data-toggle="buttons">
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options5" id="option1" autocomplete="off" checked> Tất cả
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options5" id="option2" autocomplete="off" > 2 GB
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options5" id="option3" autocomplete="off" > 4 GB
                                </label>
                            </div>
                          </div>
                      </div>
                    </div>
<!--                    Ổ CỨNG-->
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        <h4 class="panel-title">
                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">Ổ CỨNG</a>
                        </h4>
                      </div>
                      <div id="collapse6" class="panel-collapse collapse">
                        <div class="btn-group" data-toggle="buttons">
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options6" id="option1" autocomplete="off" checked> Tất cả
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options6" id="option2" autocomplete="off" > 2 GB
                                </label>
                            </div>
                            <div class="panel-body">
                                <label class="btn btn-primary active">
                                    <input type="radio" name="options6" id="option3" autocomplete="off" > 4 GB
                                </label>
                            </div>
                        </div>
                      </div>
                    </div>
                        
                  </div> 
                </ul>
            </nav>
        </div> 
                
<!--               ==============================================  DEMO DEMO DEMO-->
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
                            <a class="product-img" href="/ghe-thu-gian-xanh-ngoc"><img src="./images/product/lenovo-ideapad-100.png" alt="Ghế thư gi&#227;n xanh ngọc"></a>
                        </div>
                        <div class="col-sm-8 col-md-8 righcontent">
                            <h5 class="product-name"><a href="/ghe-thu-gian-xanh-ngoc">PRODUCT 1</a></h5>
                            <span class="product-price">
                                <b class="productminprice">1.600.000₫</b>
                            </span>
                        </div>
                    </div>
<!--                     End . -->
                </form>
            </div>
            <div class="product_item col-xs-12">
                <form action="/cart/add" class="product_item_form" method="post">
                    <div class="row">
                        <div class="product-img-parent col-sm-4 col-md-4 no-padding-lr">
                            <a class="product-img" href="/ghe-trang-tri"><img src="./images/product/lenovo-ideapad-100.png" alt="Ghế trang tr&#237;"></a>
                        </div>
                        <div class="col-sm-8 col-md-8 righcontent">
                            <h5 class="product-name"><a href="/ghe-trang-tri">PRODUCT 2</a></h5>
                            <span class="product-price">
                                <b class="productminprice">2.300.000₫</b>
                            </span>
                        </div>
                    </div>
<!--                     End . -->
                </form>
            </div>
        </div>
        <div id="bw-statistics"></div>
        </div>
    </body>
</html>
