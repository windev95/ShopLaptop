<%-- 
    Document   : product
    Created on : Dec 3, 2016, 9:42:35 PM
    Author     : BoyIt
--%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
    <head>        
        <title>Sản phẩm theo loại</title>
        <jsp:include page = "layout/head.jsp"></jsp:include>
    </head>
    <body>
        <%
            ProductDAO productDAO = new ProductDAO();
            String category_id = "";
            if(request.getParameter("category")!=null)
            {
                category_id = request.getParameter("category");
            }
        %>
        <div id="page-wrapper">
        <jsp:include page = "layout/header.jsp"></jsp:include>
        <div id="site-content">
        <!--MAIN
        =========================================================================== -->
        <div id="main">
                <section class="page_title">
                    <h1 class="text-center">Phụ kiện đèn ngủ</h1>
                </section>
                <div class="header-breadcrumb">
                    <div class="container">
                        <div class="row ">
                            <div class="col-xs-12">
                                <ol class="breadcrumb">
                                    <li><a href="/" title="Trang chủ">Trang chủ </a> </li>
                                    <li class="active ">Phụ kiện đèn ngủ</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <section class="mtb25">
                    <div class="container">
                        <div class="row">
                            <div class="megamenu-right col-md-9 col-md-push-3">
                                <div class="row">
                                    <script type="text/javascript">
                                        $(document).ready(function () {
                                            Bizweb.queryParams = {};
                                            if (location.search.length) {
                                                for (var aKeyValue, i = 0, aCouples = location.search.substr(1).split('&') ; i < aCouples.length; i++) {
                                                    aKeyValue = aCouples[i].split('=');
                                                    if (aKeyValue.length > 1) {
                                                        Bizweb.queryParams[decodeURIComponent(aKeyValue[0])] = decodeURIComponent(aKeyValue[1]);
                                                    }
                                                }
                                            }
                                            $('.sort-by')
                                                .val('created-asc')
                                                .bind('change', function () {
                                                    Bizweb.queryParams.sortby = jQuery(this).val();
                                                    location.search = jQuery.param(Bizweb.queryParams).replace(/\+/g, '%20');
                                                });
                                        });
                                    </script>
                                    <div class="col-xs-12">
                                        <div class="filter-right">
                                            <div class="pull-left-content">
                                                <div class="product-filter filter-item">
                                                    <div class="options">
                                                        <div class="button-group display" data-toggle="buttons-radio">
                                                            <button id="grid" class="active" rel="tooltip" title="Dạng Lưới" onclick="display('grid');"><i class="fa fa-th-large"></i></button>
                                                            <button id="list" rel="tooltip" title="Dạng Danh Sách" onclick="display('list');"><i class="fa fa-th-list"></i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="filter-item">
                                                    <span class="label-btn">Sắp xếp:</span>
                                                    <select class="sort sort-by selectpicker">
                                                        <option value="default">Mặc định</option>
                                                        <option value="price-asc">Giá tăng dần</option>
                                                        <option value="price-desc">Giá giảm dần</option>
                                                        <option value="alpha-asc">Từ A-Z</option>
                                                        <option value="alpha-desc">Từ Z-A</option>
                                                        <option value="created-asc">Mới đến cũ</option>
                                                        <option value="created-desc">Cũ đến mới</option>
                                                    </select>
                                                </div>
                                                <!-- End .filter-item -->
                                                <div class="filter-item">
                                                    <span class="label-btn">Hiển thị:</span>
                                                    <select onchange="location = this.options[this.selectedIndex].value;" class="sort selectpicker">
                                                        <option value="default">18</option>
                                                        <option value="/collections/phu-kien-den-ngu?view=a"><a href="/collections/phu-kien-den-ngu?view=a">21</a></option>
                                                        <option value="/collections/phu-kien-den-ngu?view=b"><a href="/collections/phu-kien-den-ngu?view=b">24</a></option>
                                                        <option value="/collections/phu-kien-den-ngu?view=c"><a href="/collections/phu-kien-den-ngu?view=c">27</a></option>
                                                    </select>
                                                </div>
                                                <!-- End .filter-item -->
                                            </div>

                                        </div>
                                    </div>
                                    <!-- End. Filter 1-->
                                    <section class="section-products">
                                        <!-- End .section-title -->
                                        <div class="product-list-show" style="display: none">
                                            <%
                                                for(Product p : productDAO.getListProductByCategory(Long.parseLong(category_id)))
                                                {
                                            %>
                                           <div class="product_item col-xs-12">
                                                <form action="/cart/add" class="product_item_form" method="post">
                                                    <div>
                                                        <div class="col-sm-5 col-md-5 no-padding-l">
                                                            <div class="product-img-parent">
                                                                <a class="product-img" href="detail.jsp?product=<%=p.getProductID()%>"><img src="./images/product/<%=p.getProductImage()%>" alt="<%=p.getProductName()%>"></a>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-7 col-md-7 righcontent">
                                                            <h5 class="product-name"><a href="detail.jsp?product=<%=p.getProductID()%>"><%=p.getProductName()%></a></h5>
                                                            <div class="description">
                                                                <%=p.getProductDescription()%>
                                                            </div>
                                                            <span class="product-price">
                                                                <b class="productminprice"><%=p.getProductPrice()%>₫</b>
                                                            </span>
                                                            <div style="display:none">
                                                                <input type="hidden" name="variantId" value="2024175" />
                                                            </div>
<!--                                                            số lượng-->
                                                            <div style="display:none">
                                                                <div class="input-group quantity">
                                                                    <input type="text" class="form-control" name="quantity" id="quantity_wanted" size="2" value="1" />
                                                                </div>
                                                            </div>
                                                            <div class="product-action-btn-list">
                                                                <div class="btn-group" role="group" aria-label="Basic example">
                                                                    <button class="product-action btn-red addtocart add-to-cart btn btn-default btn-lg" type="submit" id="button-cart">MUA NGAY</button>
                                                                    <button class="btn btn-default btn-black btn-lg"><a href="detail.jsp?product=<%=p.getProductID()%>">CHI TIẾT</a></button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
<!--                                                     End . -->
                                                </form>
                                            </div>
                                            <%
                                                }
                                            %>                                            
                                        </div>
                                        <div class="product-grid-show">
                                            <%
                                                for(Product p : productDAO.getListProductByCategory(Long.parseLong(category_id)))
                                                {
                                            %>
                                            <div class="col-xs-12 col-sm-6 col-md-4">
                                                <div class="product_item">
                                                    <form action="/cart/add" class="product_item_form" method="post">
                                                        <div class="product-gird">
                                                            <div class="product-img-parent">
                                                                <a class="product-img" href="detail.jsp?product=<%=p.getProductID()%>" title="<%=p.getProductName()%>">
                                                                    <img class="product-img-first" src="./images/product/<%=p.getProductImage()%>" alt="<%=p.getProductName()%>">
                                                                </a>
                                                                <div class="product-action-btn">
                                                                    <div class="btn-group" role="group" aria-label="Basic example">
                                                                        <button class="product-action btn-red addtocart add-to-cart btn btn-default btn-lg" type="submit" id="button-cart">MUA NGAY</button>
                                                                        <a href="detail.jsp?product=<%=p.getProductID()%>" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <span class="product-price text-center">
                                                                <b class="productminprice"><%=p.getProductPrice()%>₫</b>
                                                            </span>
                                                            <h3 class="product-name"><a href="detail.jsp?product=<%=p.getProductID()%>" title="<%=p.getProductName()%>"><%=p.getProductName()%></a></h3>
                                                            <div style="display:none">
                                                                <input type="hidden" name="variantId" value="2024175" />
                                                            </div>
                                                            <!--số lượng-->
                                                            <div style="display:none">
                                                                <div class="input-group quantity">
                                                                    <input type="text" class="form-control" name="quantity" id="quantity_wanted" size="2" value="1" />
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <!-- End .product-gird -->
                                                    </form>
                                                </div>
                                            </div>
                                            
                                            <%
                                                }
                                            %>
                                        </div>
                                    </section>
                                    <div class="col-xs-12">
                                        <div class="collection-pagination-parent">
                                            <div class="filter-right">
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End. Filter 2-->
                                </div>
                            </div>
                            <jsp:include page = "layout/menu_left.jsp"></jsp:include>
                        </div>
                    </div>
                </section>
                <script type="text/javascript">
                    function display(view) {
                        if (view == 'grid') {
                            $('.product-grid-show').show();
                            $('.product-list-show').hide();
                            $('.display').html('<button class="active" id="grid" rel="tooltip" title="Dạng Lưới" onclick="display(\'grid\');loadisotope();"><i class="fa fa-th-large"></i></button> <button id="list" rel="tooltip" title="Dạng Danh sách" onclick="display(\'list\');"><i class="fa fa-th-list"></i></button>');
                            localStorage.setItem('display', 'grid');
                        } else {
                            $('.product-grid-show').hide();
                            $('.product-list-show').show();
                            $('.display').html('<button id="grid" rel="tooltip" title="Dạng Lưới" onclick="display(\'grid\');loadisotope();"><i class="fa fa-th-large"></i></button> <button class="active" id="list" rel="tooltip" title="Dạng Danh sách" onclick="display(\'list\');"><i class="fa fa-th-list"></i></button>');
                            localStorage.setItem('display', 'list');
                        }
                    }
                    if (localStorage.getItem('display') == 'list') {
                        display('list');
                    } else {
                        display('grid');
                    }
                </script>
            </div>
        <!--/MAIN-->
        </div>        
        <!-- SITE FOOTER
        =========================================================================== -->
        <jsp:include page = "layout/brand.jsp"></jsp:include>
        <jsp:include page = "layout/footer.jsp"></jsp:include>
        <!-- /SITE FOOTER -->
    </div>
    <jsp:include page = "layout/script.jsp"></jsp:include>
    </body>
</html>