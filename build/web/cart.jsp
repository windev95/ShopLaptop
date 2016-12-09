<%-- 
    Document   : cart
    Created on : Dec 3, 2016, 8:44:42 PM
    Author     : BoyIt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
    <head>        
        <title>Giỏ hàng</title>
        <jsp:include page = "layout/head.jsp"></jsp:include>
    </head>
    <body>
        <div id="page-wrapper">
        <jsp:include page = "layout/header.jsp"></jsp:include>
        <div id="site-content">
        <!--MAIN
        =========================================================================== -->
        <div id="main">
                <section class="page_title">
                    <h1 class="text-center">Giỏ hàng</h1>
                </section>
                <div class="header-breadcrumb">
                    <div class="container">
                        <div class="row ">
                            <div class="col-xs-12">
                                <ol class="breadcrumb">
                                    <li><a href="/" title="Trang chủ">Trang chủ </a> </li>
                                    <li class="active breadcrumb-title">Giỏ hàng</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <!--====================Cart Begin=============================-->
                <div class="cart_div">
                    <div class="container">
                        <div class="row">
                            <div class="cart_div_center col-xs-12 col-sm-12 col-md-12 col-lg-12">

                                <form action="/cart" method="post" id="cart_form" class="clearfix big_screen_form table-responsive">
                                    <table class="table big_screen">
                                        <!--HÀNG TIÊU ĐỀ-->
                                        <tr class="cart_title">
                                            <td class="td_item_price">
                                                STT
                                            </td>
                                            <td class="img_item_cart_title">Sản phầm</td>
                                            <td>
                                                Thông tin
                                            </td>
                                            <td class="td_item_price">
                                                Đơn giá
                                            </td>
                                            <td>
                                                Số lượng
                                            </td>
                                            <td>
                                                Thành tiền
                                            </td>
                                            <td>
                                                Xóa
                                            </td>
                                        </tr>
                                        <!--SẢN PHẨM-->
                                        <tr class="cart_items">
                                            <td class="td_item_price">
                                                1
                                            </td>
                                            <!--hình ảnh-->
                                            <td class="img_item_cart">

                                                <img alt="Sofa cổ điển - Xanh lam" src="//bizweb.dktcdn.net/thumb/small/100/052/640/products/sofa-12.jpg?v=1458893263307" class="img-responsive">

                                            </td>
                                            <!--tên sản phẩm-->
                                            <td class="cart_item_title">
                                                <a href="/sopha-giuong-co-dien?variantid=2108928" title="Sofa cổ điển">Sofa cổ điển</a>
                                                <br><span>Xanh lam</span>
                                            </td>
                                            <!--giá-->
                                            <td class="cart_price_item"> 12.540.000₫</td>
                                            <!--số lượng-->
                                            <td>
                                                <input type="number" class="big_input form-control input-control" min="1" name="Lines" value="5">
                                            </td>
                                            <!--thành tiền-->
                                            <td class="cart_price_total">62.700.000₫</td>
                                            <!--xóa-->
                                            <td class="cart_item_close"><a href="/cart/change?line=1&amp;quantity=0" data-id="1420708"><i class="fa fa-trash"></i></a></td>
                                        </tr>
                                    </table>
                                    <!-- FOTTER-->
                                    <div class="cart_footer col-sm-12 col-md-12 col-lg-12 no-padding-lr">
                                        <div class="cart_checkout pull-right col-xs-12 pull-right text-right no-padding-lr">
                                            <div class="cart_checkout_total pull-right text-right col-xs-12 pull-right text-right no-padding-lr">
                                                <div class="big_cart_total">
                                                    <span>Tổng tiền:</span><span>62.700.000₫</span>
                                                </div>
                                            </div>
                                            <div class="cart_checkout_pay pull-right text-right col-xs-12 pull-right text-right no-padding-lr">
                                                <a class="btn btn-default shop_link" href="/collections/all" role="button">Mua Thêm</a>
                                                <button class="btn btn-default" name="update" type="submit">Cập nhật</button>
                                                <button onclick="window.location.href='/cart/clear'" id="empty_cart_button" class="btn btn-default" value="empty_cart" name="update_cart_action" type="button">
                                                    <span><span>Xóa hết</span></span>
                                                </button>
                                                <a class="btn btn-default" href="/checkout" type="button">Thanh toán</a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                <!--
                                <form action="/cart" method="post" id="cart_form" class="clearfix small_screen_form hidden-sm hidden-md hidden-lg">
                                    <ul class="cart_collection">

                                        <li class="cart_collection-item avatar">

                                            <img alt="Sofa cổ điển - Xanh lam" src="//bizweb.dktcdn.net/thumb/small/100/052/640/products/sofa-12.jpg?v=1458893263307" class="circle img-responsive">

                                            <a href="/sopha-giuong-co-dien?variantid=2108928" title="Sofa cổ điển">Sofa cổ điển</a>

                                            <br><span>Xanh lam</span>


                                            <p>12.540.000₫<br>
                                                <input type="number" class="small_input form-control mod2 input-control" min="1" name="Lines" value="5">
                                                62.700.000₫
                                            </p>
                                            <a href="/cart/change?line=1&amp;quantity=0" data-id="1420708" class="secondary-content cart_item_close">X</a>

                                        </li>

                                    </ul>
                                    <div class="cart_footer col-sm-12 col-md-12 col-lg-12 no-padding-lr">
                                        <div class="cart_checkout pull-right col-xs-12 pull-right text-right no-padding-lr">
                                            <div class="cart_checkout_total pull-right text-right col-xs-12 pull-right text-right no-padding-lr">
                                                <div class="big_cart_total">
                                                    <span>Tổng tiền:</span><span>62.700.000₫</span>
                                                </div>
                                            </div>
                                            <div class="cart_checkout_pay pull-right text-right col-xs-12 pull-right text-right no-padding-lr">
                                                <a class="btn btn-default shop_link" href="/collections/all" role="button">Mua Thêm</a>
                                                <button class="btn btn-default" name="update" type="submit">Cập nhật</button>
                                                <button onclick="window.location.href='/cart/clear'" id="empty_cart_button" class="btn btn-default" value="empty_cart" name="update_cart_action" type="button"><span><span>Xóa hết</span></span>
                                                </button>
                                                <a class="btn btn-default" href="/checkout" type="button">Thanh toán</a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                                -->
                            </div>
                        </div>
                    </div>
                </div>
                <!--====================Cart End=============================-->
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
