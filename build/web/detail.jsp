<%-- 
    Document   : detail
    Created on : Dec 3, 2016, 5:58:45 PM
    Author     : BoyIt
--%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<%@page import="model.Category"%> 
<%@page import="dao.CategoryDAO"%>
        <%
            ProductDAO productDAO = new ProductDAO();
            CategoryDAO categoryDAO = new CategoryDAO();
            Product product = new Product();
            String productID = "";
            if(request.getParameter("product") != null)
            {
                productID = request.getParameter("product");
                product = productDAO.getProduct(Long.parseLong(productID));
            }
        %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vn">
    <head>                
        <title>Chi tiết sản phẩm</title>
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
                    <h1 class="text-center"><%=product.getProductName()%></h1>
                </section>
                <div class="header-breadcrumb">
                    <div class="container">
                        <div class="row ">
                            <div class="col-xs-12">
                                <ol class="breadcrumb">
                                    <li><a href="/Laptop" title="Trang chủ">Trang chủ </a> </li>
                                    <%
                                    for (Category c : categoryDAO.getCategoryNameID(product.getCategoryID()))
                                    {
                                    %>
                                    <li>
                                        <a href="product.jsp?category=<%=product.getCategoryID()%>" title="<%=c.getCategoryName()%>"><%=c.getCategoryName()%></a>
                                    </li>
                                    <%}
                                    %>
                                    <li class="active  breadcrumb-title"><%=product.getProductName()%></li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                    function validate(evt) {
                        var theEvent = evt || window.event;
                        var key = theEvent.keyCode || theEvent.which;
                        key = String.fromCharCode( key );
                        var regex = /[0-9]|\./;
                        if( !regex.test(key) ) {
                            theEvent.returnValue = false;
                            if(theEvent.preventDefault) theEvent.preventDefault();
                        }
                    }
                </script>
                <section class="mtb25">
                    <div class="container">
                        <div class="row">
                            <div class="product-detail" itemscope itemtype="http://schema.org/Product">
<!--                                <meta itemprop="url" content="//ranger-theme.bizwebvietnam.net/sopha-giuong-co-dien">-->
                                <meta itemprop="image" content="./images/product/<%=product.getProductImage()%>">
                                <meta itemprop="shop-currency" content="VND">
                                <form action="/cart/add" method="post" class="product_form_class">
                                    <div class="product-detail-left col-md-6">
                                        <div class="popup-gallery">
                                            <div class="row">
                                                <div class="col-xs-2 slick-item">
                                                    <div class="overflow-thumbnails-carousel">
                                                        <ul class="thumbnails-carousel owl-carousel">
                                                            <li>
                                                                <a href="./images/product/<%=product.getProductImage()%>" data-image="./images/product/<%=product.getProductImage()%>" data-zoom-image="./images/product/<%=product.getProductImage()%>">
                                                                    <img src="./images/product/<%=product.getProductImage()%>" title="Sofa cổ điển"
                                                                         alt="Sofa cổ điển" />
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="./images/product/<%=product.getProductImage()%>" data-image="./images/product/<%=product.getProductImage()%>" data-zoom-image="./images/product/<%=product.getProductImage()%>">
                                                                    <img src="./images/product/<%=product.getProductImage()%>" title="Sofa cổ điển"
                                                                         alt="xanh pha xanh lá mạ" />
                                                                </a>
                                                            </li>
                                                            <div class="owl-controls clickable" style="display: none;">
                                                                <div class="owl-pagination">
                                                                    <div class="owl-page active"><span class=""></span></div>
                                                                </div>
                                                                <div class="owl-buttons">
                                                                    <div class="owl-prev"><i class="fa fa-angle-left"></i></div>
                                                                    <div class="owl-next"><i class="fa fa-angle-right"></i></div>
                                                                </div>
                                                            </div>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <div class="col-xs-10">
                                                    <div class="product-image inner-cloud-zoom">
                                                        <a href="./images/product/<%=product.getProductImage()%>" title="" id="ex1">
                                                            <img src="./images/product/<%=product.getProductImage()%>" alt="" id="image" data-zoom-image="./images/product/<%=product.getProductImage()%>"
                                                                 alt="Sofa cổ điển" />
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-detail-right col-md-6">
                                        <div class="">
                                            <h2 itemprop="name" class="product-name"><%=product.getProductName()%></h2>
                                            <div class="description">Một căn nhà đẹp là có 1 phòng khách thu hút.</div>
                                            <span class="product-price">
                                                <b itemprop="price" class="productminprice"><%=product.getProductPrice()%>₫</b>
                                            </span>
                                            <div class="variant_Count">
                                                <select id="product-selectors" name="variantId" style="display:none">
                                                    <option value="2108928">Xanh lam - <%=product.getProductPrice()%>₫</option>
                                                    <option value="2108929">Xanh ngọc - <%=product.getProductPrice()%>₫</option>
                                                </select>
                                            </div>
                                            <!--số lượng-->
                                            <div class="col-sm-12 no-padding-lr quantity_cartbtn ">
                                                <!-- <div class="col-sm-6 no-padding-lr"> -->
                                                <div class="product_quantity">
                                                    <div class="quanitybtn">
                                                        <div class="input-group quantity">
                                                            <div class="input-group qttform">
                                                                <input type="text" class="big_input form-control input-control product-qty" name="quantity" id="qty" value="1" min="1" step="1" onkeypress='validate(event)' />
                                                                <div class="qty_up_down_right">
                                                                    <span class="input-group-btn data-up">
                                                                        <div onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="btn mathbtn" data-dir="up"><i class="fa fa-caret-up"></i></div>
                                                                    </span>
                                                                    <span class="input-group-btn data-dwn">
                                                                        <div onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty > 1 ) result.value--;return false;" class="btn mathbtn" data-dir="dwn"><i class="fa fa-caret-down"></i></div>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- </div> -->
                                                <div class="product_cart_btn">
                                                    <button class="product-action btn-red addtocart add-to-cart btn btn-default btn-lg" type="submit" id="button-cart">MUA NGAY</button>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="addthis">
                                            <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-5620cf1235df3004" async="async"></script>
                                            <div class="addthis_native_toolbox"></div>
                                        </div>
                                    </div>
                                </form>
                                <div class="mtb25 section-product-tabs col-md-12">
                                    <div role="tabpanel" class="product-tab-wrapper">
                                        <!-- Nav tabs -->
                                        <ul class="nav nav-tabs product-tab-info" role="tablist">
                                            <li role="presentation" class="active">
                                                <a href="#product_top_detail" aria-controls="home" role="tab" data-toggle="tab">Thông tin sản phẩm</a>
                                            </li>
                                            <li role="presentation">
                                                <a href="#product_info" aria-controls="tab" role="tab" data-toggle="tab">Thông số kỹ thuật</a>
                                            </li>
                                            <li role="presentation">
                                                <a href="#product_cmt" aria-controls="tab" role="tab" data-toggle="tab">Đánh giá sản phẩm</a>
                                            </li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content product-tab-content">
                                            <div role="tabpanel" class="tab-pane active" id="product_top_detail">
                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;"><%=product.getProductDescription()%></p>
                                                <!--<p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Tab 1</p>
                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;"><img src="./images/product/<%=product.getProductImage()%>" /></p> -->
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="product_info"><p>Tab 2</p></div>
                                            <div role="tabpanel" class="tab-pane" id="product_cmt"><p>Tab 3</p></div>
                                        </div>
                                    </div>
                                </div>
                                <section class="featured-products section_related_products mtb25">
                                    <h3 class="related_products_title activities_title text-center padding-lr-15"><a href="/" title="Sản phẩm liên quan">Sản phẩm liên quan</a></h3>
                                    <p class="related_products_description activities_description text-center padding-lr-15 hidden-xs">Chúng tôi mang đến những sản phẩm với chất lượng cao nhất và dịch vụ hoàn hảo nhất cho mọi khách hàng</p>
                                    <div id="owl-demo-featured-products" class="owl-carousel owl-theme">
                                        <%
                                            for(Product p : productDAO.getListProductByCategory(productDAO.getProduct(Long.parseLong(productID)).getCategoryID()))
                                            {
                                        %>
                                        <div class="item">
                                            <div class="col-md-12">
                                                <div class="product_item">
                                                    <form action="/cart/add" class="product_item_form" method="post">
                                                        <div class="product-gird">
                                                            <div class="product-img-parent">
                                                                <div class="sale_tag">- 5%</div>
                                                                <a class="product-img" href="detail.jsp?product=<%=p.getProductID()%>" title="<%=p.getProductName()%>">
                                                                    <img class="product-img-first" src="./images/product/<%=p.getProductImage()%>" alt="<%=p.getProductName()%>">
                                                                </a>
                                                                <div class="product-action-btn">
                                                                    <div class="btn-group" role="group" aria-label="Basic example">
                                                                        <a class="btn btn-default btn-lg addtocart" href="detail.jsp?product=<%=p.getProductID()%>">CHỌN SẢN PHẨM</a>
                                                                        <a href="detail.jsp?product=<%=p.getProductID()%>" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <span class="product-price text-center">
                                                                <b class="productminprice"><%=p.getProductPrice()%>₫</b>
                                                                <del><%=p.getProductPrice()%>₫</del>
                                                            </span>
                                                            <h3 class="product-name"><a href="detail.jsp?product=<%=p.getProductID()%>" title="<%=p.getProductName()%>"><%=p.getProductName()%></a></h3>
                                                            <div style="display:none">
                                                                <select id="product-selectors" name="variantId" style="display:none">
                                                                    <option lỗi liquid unknown operator roduct value="2111409">Ghi - <%=p.getProductPrice()%>₫</option>
                                                                    <option lỗi liquid unknown operator roduct value="2111410">Xanh - <%=p.getProductPrice()%>₫</option>
                                                                </select>
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
                                        </div>
                                        <%
                                            }                                        
                                        %>
                                    </div>
                                </section>
                            </div>
                        </div>
                    </div>
                </section>
<!--                <script src='//bizweb.dktcdn.net/assets/themes_support/option_selection.js?4' type='text/javascript'></script>-->
                <script src='./js/option_selection.js' type='text/javascript'></script>
                <script>
                    var selectCallback = function(variant, selector) {
                        var addToCart    = jQuery('.product-detail-right .add-to-cart'),
                            productPrice = jQuery('.product-detail-right .product-price .productminprice'),
                            comparePrice = jQuery('.product-detail-right .product-price .old_price'),
                            Productpuk   = jQuery('.product-detail-right .puk');
                        if (variant) {
                            if (variant.available) {
                                addToCart.removeClass('disabled').removeAttr('disabled').text('MUA NGAY');
                            } else {
                                addToCart.text('HẾT HÀNG').addClass('disabled').attr('disabled', 'disabled');
                                productPrice.html('HẾT HÀNG');
                            }
                            // Regardless of stock, update the product price
                            productPrice.html(Bizweb.formatMoney(variant.price, "{{amount_no_decimals_with_comma_separator}}₫"));
                            Productpuk.html(variant.sku);
                            // Also update and show the product's compare price if necessary
                            if ( variant.compare_at_price > variant.price ) {
                                comparePrice.html(Bizweb.formatMoney(variant.compare_at_price, "{{amount_no_decimals_with_comma_separator}}₫")).show();
                            } else {
                                comparePrice.hide();
                            }
                        }
                        else {
                            addToCart.text('HẾT HÀNG').addClass('disabled').attr('disabled', 'disabled');
                            productPrice.html('HẾT HÀNG');
                        }
                        if (variant && variant.image) {
                            var originalImage = $(".product-image img");
                            var newImage = variant.image;
                            var element = originalImage[0];
                            Bizweb.Image.switchImage(newImage, element, function (newImageSizedSrc, newImage, element) {
                                //if image different size > fit new zoomContainer size = image size
                                //switchImage
                                $(element).parents('a').attr('href', newImageSizedSrc);
                                $(element).attr('src', newImageSizedSrc);

                                if ($(window).width() > 767) {
                                    $('.zoomContainer').remove();
                                    $("#image").removeData('elevateZoom');
                                    $("#image").attr('src', newImageSizedSrc);
                                    $("#image").data('zoom-image', newImageSizedSrc);
                                    $("#image").elevateZoom({
                                        zoomType : "inner",
                                        cursor: "crosshair"
                                    });//-- end. elevateZoom
                                }
                            });//-- End Bizweb.Image.switchImage
                        }//-- End if (variant && variant.image)
                    };
                    jQuery(function($) {
                        new Bizweb.OptionSelectors('product-selectors', {
                            product: {"id":1295278,"name":"<%=product.getProductName()%>","alias":"sopha-giuong-co-dien","type":"Sofa","price":12540000.0000,"price_max":12540000.0000,"price_min":12540000.0000,"price_varies":false,"compare_at_price_max":0.0,"compare_at_price_min":0.0,"compare_at_price_varies":false,"tags":["Ghế Sofa"],"meta_title":"Sopha giường cổ điển","meta_description":"","featured_image":{"alt":"./images/product/<%=product.getProductImage()%>","id":3496470,"product_id":1295278,"position":"0","src":"","attached_to_variant":false,"variant_ids":[2108929]},"images":[{"alt":"","id":3496470,"product_id":1295278,"position":"0","src":"./images/product/<%=product.getProductImage()%>","attached_to_variant":true,"variant_ids":[2108929]},{"alt":"xanh pha xanh lá mạ","id":3496471,"product_id":1295278,"position":"0","src":"./images/product/<%=product.getProductImage()%>","attached_to_variant":true,"variant_ids":[2108928]}],"options":["Màu sắc"],"variants":[{"id":2108928,"price":12540000.0000,"options":["Xanh lam"],"option1":"Xanh lam","title":"Xanh lam","taxable":true,"inventory_management":"","inventory_policy":"deny","inventory_quantity":1,"weight":0.0,"weight_unit":"kg","image":{"alt":"xanh pha xanh lá mạ","id":3496471,"product_id":1295278,"position":"0","src":"./images/product/<%=product.getProductImage()%>","attached_to_variant":true,"variant_ids":[2108928]},"requires_shipping":true,"selected":false,"url":"/sopha-giuong-co-dien?variantid=2108928","available":true},{"id":2108929,"price":12540000.0000,"options":["Xanh ngọc"],"option1":"Xanh ngọc","title":"Xanh ngọc","taxable":true,"inventory_management":"","inventory_policy":"deny","inventory_quantity":1,"weight":0.0,"weight_unit":"kg","image":{"alt":"","id":3496470,"product_id":1295278,"position":"0","src":"./images/product/<%=product.getProductImage()%>","attached_to_variant":true,"variant_ids":[2108929]},"requires_shipping":true,"selected":false,"url":"/sopha-giuong-co-dien?variantid=2108929","available":true}],"available":true,"content":"\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eMột căn nhà đẹp là có 1 phòng khách thu hút.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eBộ sofa luôn là tâm điểm thu hút sự chú ý khi bước chân vào không gian này.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eViệc bài trí sofa đúng cách không chỉ mang lại vẻ đẹp thanh thoát cho căn phòng mà còn mang tài vận và may mắn đến cho gia chủ.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eLiên hệ ngay đến công ty sản xuất ghế\u0026nbsp;sofa giường đẹp giá rẻ\u0026nbsp;để được tư vấn tốt nhất\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eMẫu mã sản phẩm sofa giường cao cấp\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003e\u0026nbsp;\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;\u0022\u003e\u003cimg src=\u0022./images/product/<%=product.getProductImage()%>\u0022 /\u003e\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eKhông quá đỗi trắng muốt đến ngất ngây, nhưng thật sự cũng đi vào lòng người với bộ ghế sofa giường đẹp giá rẻ được bọc bằng chất liệu vải hoa tạo cảm giác nhẹ nhàng và bồng bềnh cho không gian thêm nồng ấm.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eĐệm mút:\u0026nbsp;Cứng hoặc mềm - bông mút ( tùy chọn )\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003ePhụ kiện: Nhập khẩu Malaysia\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eKích thước: 1800 * 1200. ( Kích thước - màu sắc có thể thay đổi theo yêu cầu )\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eCam kết đảm bảo chất lượng và giá trị của sản phẩm, nguồn gốc xuất sứ vật liệu rõ ràng.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eĐặc biệt: Quý khách có thể kiểm tra giám sát chất lượng sản phẩm sofa theo từng giai đoạn\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;\u0022\u003e\u003cimg src=\u0022./images/product/<%=product.getProductImage()%>\u0022 /\u003e\u003c/p\u003e","summary_or_content":"\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eMột căn nhà đẹp là có 1 phòng khách thu hút.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eBộ sofa luôn là tâm điểm thu hút sự chú ý khi bước chân vào không gian này.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eViệc bài trí sofa đúng cách không chỉ mang lại vẻ đẹp thanh thoát cho căn phòng mà còn mang tài vận và may mắn đến cho gia chủ.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eLiên hệ ngay đến công ty sản xuất ghế\u0026nbsp;sofa giường đẹp giá rẻ\u0026nbsp;để được tư vấn tốt nhất\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eMẫu mã sản phẩm sofa giường cao cấp\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003e\u0026nbsp;\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;\u0022\u003e\u003cimg src=\u0022./images/product/<%=product.getProductImage()%>\u0022 /\u003e\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eKhông quá đỗi trắng muốt đến ngất ngây, nhưng thật sự cũng đi vào lòng người với bộ ghế sofa giường đẹp giá rẻ được bọc bằng chất liệu vải hoa tạo cảm giác nhẹ nhàng và bồng bềnh cho không gian thêm nồng ấm.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eĐệm mút:\u0026nbsp;Cứng hoặc mềm - bông mút ( tùy chọn )\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003ePhụ kiện: Nhập khẩu Malaysia\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eKích thước: 1800 * 1200. ( Kích thước - màu sắc có thể thay đổi theo yêu cầu )\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eCam kết đảm bảo chất lượng và giá trị của sản phẩm, nguồn gốc xuất sứ vật liệu rõ ràng.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eĐặc biệt: Quý khách có thể kiểm tra giám sát chất lượng sản phẩm sofa theo từng giai đoạn\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;\u0022\u003e\u003cimg src=\u0022./images/product/<%=product.getProductImage()%>\u0022 /\u003e\u003c/p\u003e"},
                            onVariantSelected: selectCallback,
                            enableHistoryState: true
                        });
                        // Add label if only one product option and it isn't 'Title'. Could be 'Size'.
                        $('.selector-wrapper:eq(0)').prepend('<label for="productSelect-option-0">M&#224;u sắc</label>');
                        $('.single-option-selector').addClass('selectpicker selectproduct');
                        // Hide selectors if we only have 1 variant and its title contains 'Default'.
                    });
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
