<%-- 
    Document   : detail
    Created on : Dec 3, 2016, 5:58:45 PM
    Author     : BoyIt
--%>

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
                    <h1 class="text-center">Sofa cổ điển</h1>
                </section>
                <div class="header-breadcrumb">
                    <div class="container">
                        <div class="row ">
                            <div class="col-xs-12">
                                <ol class="breadcrumb">
                                    <li><a href="/" title="Trang chủ">Trang chủ </a> </li>
                                    <li>
                                        <a href="ghe-sofa-hoa-phat" title="Ghế Sofa Hòa Phát">Ghế Sofa Hòa Phát</a>
                                    </li>
                                    <li class="active  breadcrumb-title">Sofa cổ điển</li>
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
                                <meta itemprop="url" content="//ranger-theme.bizwebvietnam.net/sopha-giuong-co-dien">
                                <meta itemprop="image" content="./images/product/lenovo-ideapad-100.png">
                                <meta itemprop="shop-currency" content="VND">
                                <form action="/cart/add" method="post" class="product_form_class">
                                    <div class="product-detail-left col-md-6">
                                        <div class="popup-gallery">
                                            <div class="row">
                                                <div class="col-xs-2 slick-item">
                                                    <div class="overflow-thumbnails-carousel">
                                                        <ul class="thumbnails-carousel owl-carousel">
                                                            <li>
                                                                <a href="//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1458893355590" data-image="//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1458893355590" data-zoom-image="//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1458893355590">
                                                                    <img src="//bizweb.dktcdn.net/thumb/medium/100/052/640/products/sofa-10.jpg?v=1458893355590" title="Sofa cổ điển"
                                                                         alt="Sofa cổ điển" />
                                                                </a>
                                                            </li>

                                                            <li>
                                                                <a href="//bizweb.dktcdn.net/100/052/640/products/sofa-12.jpg?v=1458893263307" data-image="//bizweb.dktcdn.net/100/052/640/products/sofa-12.jpg?v=1458893263307" data-zoom-image="//bizweb.dktcdn.net/100/052/640/products/sofa-12.jpg?v=1458893263307">
                                                                    <img src="//bizweb.dktcdn.net/thumb/medium/100/052/640/products/sofa-12.jpg?v=1458893263307" title="Sofa cổ điển"
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

                                                        <a href="//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1458893355590" title="" id="ex1">
                                                            <img src="./images/product/lenovo-ideapad-100.png" alt="" id="image" data-zoom-image="./images/product/lenovo-ideapad-100.png"
                                                                 alt="Sofa cổ điển" />
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-detail-right col-md-6">
                                        <div class="">
                                            <h2 itemprop="name" class="product-name">Sofa cổ điển</h2>
                                            <div class="description">Một căn nhà đẹp là có 1 phòng khách thu hút.</div>
                                            <span class="product-price">
                                                <b itemprop="price" class="productminprice">12.540.000₫</b>
                                            </span>
                                            <div class="variant_Count">
                                                <select id="product-selectors" name="variantId" style="display:none">
                                                    <option value="2108928">Xanh lam - 12.540.000₫</option>
                                                    <option value="2108929">Xanh ngọc - 12.540.000₫</option>
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
                                                <a href="#product_info" aria-controls="tab" role="tab" data-toggle="tab">Thông tin vận chuyển</a>
                                            </li>
                                            <li role="presentation">
                                                <a href="#product_cmt" aria-controls="tab" role="tab" data-toggle="tab">Đổi hàng trả hàng</a>
                                            </li>
                                        </ul>
                                        <!-- Tab panes -->
                                        <div class="tab-content product-tab-content">
                                            <div role="tabpanel" class="tab-pane active" id="product_top_detail">
                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Một căn nhà đẹp là có 1 phòng khách thu hút.</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Bộ sofa luôn là tâm điểm thu hút sự chú ý khi bước chân vào không gian này.</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Việc bài trí sofa đúng cách không chỉ mang lại vẻ đẹp thanh thoát cho căn phòng mà còn mang tài vận và may mắn đến cho gia chủ.</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Liên hệ ngay đến công ty sản xuất ghế&nbsp;sofa giường đẹp giá rẻ&nbsp;để được tư vấn tốt nhất</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Mẫu mã sản phẩm sofa giường cao cấp</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">&nbsp;</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;"><img src="//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1454124166207" /></p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Không quá đỗi trắng muốt đến ngất ngây, nhưng thật sự cũng đi vào lòng người với bộ ghế sofa giường đẹp giá rẻ được bọc bằng chất liệu vải hoa tạo cảm giác nhẹ nhàng và bồng bềnh cho không gian thêm nồng ấm.</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Đệm mút:&nbsp;Cứng hoặc mềm - bông mút ( tùy chọn )</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Phụ kiện: Nhập khẩu Malaysia</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Kích thước: 1800 * 1200. ( Kích thước - màu sắc có thể thay đổi theo yêu cầu )</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Cam kết đảm bảo chất lượng và giá trị của sản phẩm, nguồn gốc xuất sứ vật liệu rõ ràng.</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;">Đặc biệt: Quý khách có thể kiểm tra giám sát chất lượng sản phẩm sofa theo từng giai đoạn</p>

                                                <p style="color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;"><img src="//bizweb.dktcdn.net/100/052/640/products/sofa-12.jpg?v=1454124166207" /></p>
                                            </div>
                                            <div role="tabpanel" class="tab-pane" id="product_info"><p>Với mong muốn mang lại sự hài lòng cho quý khách khi mua hàng, chúng tôi có những quy định trong vận chuyển, nhằm đảm bảo rằng những sản phẩm quý khách mua là sản phẩm mà vừa ý nhất.</p>  <p>1. Chúng tôi sẽ được thực hiện và chuyển phát dựa trên mẫu khách hàng đã chọn. Trường hợp không có đúng sản phẩm Quý khách yêu cầu chúng tôi sẽ gọi điện xác nhận gửi sản phẩm tương tự thay thế.</p>  <p>2. Thời gian chuyển phát tiêu chuẩn cho một đơn hàng là 12 giờ kể từ lúc đặt hàng. Chuyển phát sản phẩm đến các khu vực nội thành thành phố trên toàn quốc từ 4 giờ kể từ khi nhận hàng, chuyển phát ngay trong ngày đến các vùng lân cận (bán kính từ 10km – 50km).</p>  <p>3. Các đơn hàng gửi đi quốc tế: không đảm bảo thời gian được chính xác như yêu cầu, không đảm bảo thời gian nếu thời điểm chuyển phát trùng với các ngày lễ, tết và chủ nhật tại khu vực nơi đến.</p>  <p>4. Trường hợp không liên lạc được với người nhận, người nhận đi vắng:</p>  <p>- Nếu chưa rõ địa chỉ chúng tôi sẽ lưu lại trong vòng 6 tiếng và liên lạc lại với người nhận, trong trường hợp ko liên lạc được đơn hàng sẽ bị hủy và không được hoàn lại thanh toán.</p>  <p>- Nếu địa chỉ là công ty, văn phòng, nhà ở… Chúng tôi sẽ gửi đồng nghiệp, người thân nhận hộ và ký xác nhận</p>  <p>- Để tại một nơi an toàn người nhận dễ nhận thấy tại nhà, văn phòng, công ty… Trường hợp này không có ký nhận.</p>  <p>5. Trường hợp người nhận không nhận đơn hàng:</p>  <p>- Chúng tôi sẽ hủy bỏ đơn hàng. Trường hợp này sẽ không được hoàn trả thanh toán.</p>  <p>6. Trường hợp không đúng địa chỉ, thay đổi địa chỉ:</p>  <p>- Không đúng địa chỉ: trường hợp sai địa chỉ chúng tôi sẽ lưu lại 6 tiếng và liên lạc với người gửi và người nhận để thỏa thuận về địa điểm, thời gian, nếu địa chỉ mới không quá 3km sẽ phát miễn phí. Trường hợp địa chỉ mới xa hơn 3km sẽ tính thêm phí theo quy định chuyển phát.</p>  <p>7. Trường hợp không tồn tại người nhận tại địa chỉ yêu cầu: đơn hàng sẽ được hủy và không được hoàn lại thanh toán.</p>  <p>8. Chúng tôi không vận chuyển sản phẩm đến các địa chỉ trên tàu hỏa, máy bay, tàu thủy, khu vực nguy hiểm, các khu vực cấm…</p></div>
                                            <div role="tabpanel" class="tab-pane" id="product_cmt"><p>1. Đổi trả theo nhu cầu khách hàng (đổi trả hàng vì không ưng ý)</p>  <p>Tất cả mặt hàng đã mua đều có thể hoàn trả trong vòng 30 ngày kể từ ngày nhận hàng (trừ khi có quy định gì khác). Chúng tôi chỉ chấp nhận đổi trả cho các sản phẩm còn nguyên điều kiện ban đầu, còn hóa đơn mua hàng &amp; sản phẩm chưa qua sử dụng, bao gồm:</p>  <p>- Còn nguyên đóng gói và bao bì không bị móp rách</p>  <p>- Đầy đủ các chi tiết, phụ kiện</p>  <p>- Tem / phiếu bảo hành, tem thương hiệu, hướng dẫn kỹ thuật và các quà tặng kèm theo (nếu có) v.v… phải còn đầy đủ và nguyên vẹn</p>  <p>- Không bị dơ bẩn, trầy xước, hư hỏng, có mùi lạ hoặc có dấu hiệu đã qua qua sử dụng</p>  <p>2. Đổi trả không vì lý do chủ quan từ khách hàng</p>  <p>2.1. Hàng giao không mới, không nguyên vẹn, sai nội dung hoặc bị thiếu</p>  <p>Chúng tôi khuyến khích quý khách hàng phải kiểm tra tình trạng bên ngoài của thùng hàng và sản phẩm trước khi thanh toán để đảm bảo rằng hàng hóa được giao đúng chủng loại, số lượng, màu sắc theo đơn đặt hàng và tình trạng bên ngoài không bị tác động.</p>  <p>Nếu gặp trường hợp này, Quý khách vui lòng từ chối nhận hàng và/hoặc báo ngay cho bộ phận hỗ trợ khách hàng để chúng tôi có phương án xử lí kịp thời. (Xin lưu ý những bước kiểm tra sâu hơn như dùng thử sản phẩm chỉ có thể được chấp nhận sau khi đơn hàng được thanh toán đầy đủ).</p>  <p>Trong trường hợp khách hàng đã thanh toán, nhận hàng và sau đó phát hiện hàng hóa không còn mới nguyên vẹn, sai nội dung hoặc thiếu hàng, xin vui lòng chụp ảnh sản phẩm gửi về hộp thư của chúng tôi để được chúng tôi hỗ trợ các bước tiếp theo như đổi/trả hàng hoặc gửi sản phẩm còn thiếu đến quý khách…</p>  <p>Sau 48h kể từ ngày quý khách nhận hàng, chúng tôi có quyền từ chối hỗ trợ cho những khiếu nại theo nội dung như trên.</p>  <p>2.2. Hàng giao bị lỗi</p>  <p>Khi quý khách gặp trục trặc với sản phẩm đặt mua của chúng tôi, vui lòng thực hiện các bước sau đây:</p>  <p>- Bước 1: Kiểm tra lại sự nguyên vẹn của sản phẩm, chụp lại ảnh sản phẩm xuất hiện lỗi</p>  <p>- Bước 2: Quý khách liên hệ với trung tâm chăm sóc khách hàng của chúng tôi để được xác nhận</p>  <p>- Bước 3: Trong vòng 30 ngày kể từ ngày nhận hàng, nếu quý khách được xác nhận từ trung tâm chăm sóc khách hàng rằng sản phẩm bị lỗi kỹ thuật, quý khách vui lòng truy cập ngay Hướng dẫn đổi trả hàng để bắt đầu quy trình đổi trả hàng</p>  <p>3. Phương thức hoàn tiền</p>  <p>Tùy theo lí do hoàn trả sản phẩm kết quả đánh giá chất lượng tại kho, chúng tôi sẽ có những phương thức hoàn tiền với chi tiết như sau:</p>  <p>- Hoàn tiền bằng mã tiền điện tử dùng để mua sản phẩm mới</p>  <p>- Đổi sản phẩm mới cùng loại</p>  <p>- Chuyển khoản qua ngân hàng theo thông tin của quý khách cung cấp</p>  <p>- Riêng đối với các đơn hàng thanh toán qua thẻ tín dụng quốc tế, chúng tôi sẽ áp dụng hình thức hoàn tiền vào tài khoản thanh toán của chủ thẻ</p>  <p>- Hoàn tiền mặt trực tiếp tại văn phòng</p>  <p>Mọi chi tiết hoặc thắc mắc quý khách vui lòng liên hệ với chúng tôi qua số điện thoại hỗ trợ hoặc để lại lời nhắn tại website. Xin chân thành cảm ơn.</p></div>
                                        </div>
                                    </div>
                                </div>
                                <section class="featured-products section_related_products mtb25">
                                    <h3 class="related_products_title activities_title text-center padding-lr-15"><a href="/" title="Sản phẩm liên quan">Sản phẩm liên quan</a></h3>
                                    <p class="related_products_description activities_description text-center padding-lr-15 hidden-xs">Chúng tôi mang đến những sản phẩm với chất lượng cao nhất và dịch vụ hoàn hảo nhất cho mọi khách hàng</p>
                                    <div id="owl-demo-featured-products" class="owl-carousel owl-theme">
                                        <div class="item">
                                            <div class="col-md-12">
                                                <div class="product_item">
                                                    <form action="/cart/add" class="product_item_form" method="post">
                                                        <div class="product-gird">
                                                            <div class="product-img-parent">
                                                                <div class="sale_tag">- 5%</div>
                                                                <a class="product-img" href="/sopha-co-dien" title="Sopha gỗ">
                                                                    <img class="product-img-first" src="//bizweb.dktcdn.net/thumb/medium/100/052/640/products/sofa-5-c57e8319-726b-4d5e-9699-0f1931de15a7.jpg?v=1454126002390" alt="Sopha gỗ">
                                                                </a>
                                                                <div class="product-action-btn">
                                                                    <div class="btn-group" role="group" aria-label="Basic example">
                                                                        <a class="btn btn-default btn-lg addtocart" href="/sopha-co-dien">CHỌN SẢN PHẨM</a>
                                                                        <a href="/sopha-co-dien" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <span class="product-price text-center">
                                                                <b class="productminprice">18.980.000₫</b>
                                                                <del>19.980.000₫</del>
                                                            </span>
                                                            <h3 class="product-name"><a href="/sopha-co-dien" title="Sopha gỗ">Sopha gỗ</a></h3>
                                                            <div style="display:none">
                                                                <select id="product-selectors" name="variantId" style="display:none">
                                                                    <option lỗi liquid unknown operator roduct value="2111409">Ghi - 18.980.000₫</option>

                                                                    <option lỗi liquid unknown operator roduct value="2111410">Xanh - 18.980.000₫</option>

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
                                        <div class="item">
                                            <div class="col-md-12">
                                                <div class="product_item">
                                                    <form action="/cart/add" class="product_item_form" method="post">

                                                        <div class="product-gird">
                                                            <div class="product-img-parent">
                                                                <div class="sale_tag">- 1%</div>
                                                                <a class="product-img" href="/sopha-doi-da" title="Sofa nỉ vải">
                                                                    <img class="product-img-first" src="//bizweb.dktcdn.net/thumb/medium/100/052/640/products/sofa-1.jpg?v=1454125830613" alt="Sofa nỉ vải">
                                                                </a>
                                                                <div class="product-action-btn">
                                                                    <div class="btn-group" role="group" aria-label="Basic example">
                                                                        <a class="btn btn-default btn-lg addtocart" href="/sopha-doi-da">CHỌN SẢN PHẨM</a>


                                                                        <a href="/sopha-doi-da" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <span class="product-price text-center">
                                                                <b class="productminprice">8.400.000₫</b>
                                                                <del>8.500.000₫</del>
                                                            </span>
                                                            <h3 class="product-name"><a href="/sopha-doi-da" title="Sofa nỉ vải">Sofa nỉ vải</a></h3>
                                                            <div style="display:none">
                                                                <select id="product-selectors" name="variantId" style="display:none">

                                                                    <option lỗi liquid unknown operator roduct value="2023564">Cốm - 8.400.000₫</option>

                                                                    <option lỗi liquid unknown operator roduct value="2023565">Xanh nhạt - 8.400.000₫</option>

                                                                    <option lỗi liquid unknown operator roduct value="2111379">Xanh đậm - 8.600.000₫</option>

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
                                        <div class="item">
                                            <div class="col-md-12">
                                                <div class="product_item">
                                                    <form action="/cart/add" class="product_item_form" method="post">

                                                        <div class="product-gird">
                                                            <div class="product-img-parent">



                                                                <a class="product-img" href="/sopha-don-dep-gia-re" title="Sofa đơn đẹp giá rẻ">
                                                                    <img class="product-img-first" src="//bizweb.dktcdn.net/thumb/medium/100/052/640/products/sofa-12-43b5da91-0bcb-48fe-81c6-bdb2284e99f8.jpg?v=1454125988927" alt="Sofa đơn đẹp gi&#225; rẻ">
                                                                </a>
                                                                <div class="product-action-btn">
                                                                    <div class="btn-group" role="group" aria-label="Basic example">



                                                                        <a class="btn btn-default btn-lg addtocart" href="/sopha-don-dep-gia-re">CHỌN SẢN PHẨM</a>


                                                                        <a href="/sopha-don-dep-gia-re" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <span class="product-price text-center">
                                                                <b class="productminprice">9.980.000₫</b>

                                                            </span>
                                                            <h3 class="product-name"><a href="/sopha-don-dep-gia-re" title="Sofa đơn đẹp giá rẻ">Sofa đơn đẹp giá rẻ</a></h3>
                                                            <div style="display:none">


                                                                <select id="product-selectors" name="variantId" style="display:none">

                                                                    <option lỗi liquid unknown operator roduct value="2111371">Cốm - 9.980.000₫</option>

                                                                    <option lỗi liquid unknown operator roduct value="2111372">Ghi - 9.980.000₫</option>

                                                                    <option lỗi liquid unknown operator roduct value="2111373">Kẻ - 9.980.000₫</option>

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
                                        <div class="item">
                                            <div class="col-md-12">
                                                <div class="product_item">
                                                    <form action="/cart/add" class="product_item_form" method="post">
                                                        <div class="product-gird">
                                                            <div class="product-img-parent">
                                                                <div class="sale_tag">- 2%</div>
                                                                <a class="product-img" href="/ghe-sopha-don-em-ai" title="Ghế Sofa đơn êm ái">
                                                                    <img class="product-img-first" src="//bizweb.dktcdn.net/thumb/medium/100/052/640/products/sofa-9.jpg?v=1454124600197" alt="Ghế Sofa đơn &#234;m &#225;i">
                                                                </a>
                                                                <div class="product-action-btn">
                                                                    <div class="btn-group" role="group" aria-label="Basic example">
                                                                        <a class="btn btn-default btn-lg addtocart" href="/ghe-sopha-don-em-ai">CHỌN SẢN PHẨM</a>
                                                                        <a href="/ghe-sopha-don-em-ai" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                            <span class="product-price text-center">
                                                                <b class="productminprice">2.600.000₫</b>

                                                                <del>2.650.000₫</del>

                                                            </span>
                                                            <h3 class="product-name"><a href="/ghe-sopha-don-em-ai" title="Ghế Sofa đơn êm ái">Ghế Sofa đơn êm ái</a></h3>
                                                            <div style="display:none">
                                                                <select id="product-selectors" name="variantId" style="display:none">
                                                                    <option lỗi liquid unknown operator roduct value="1991858">Tím - 2.600.000₫</option>
                                                                    <option lỗi liquid unknown operator roduct value="2108950">Xanh - 2.600.000₫</option>
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
                            product: {"id":1295278,"name":"Sofa cổ điển","alias":"sopha-giuong-co-dien","type":"Sofa","price":12540000.0000,"price_max":12540000.0000,"price_min":12540000.0000,"price_varies":false,"compare_at_price_max":0.0,"compare_at_price_min":0.0,"compare_at_price_varies":false,"tags":["Ghế Sofa"],"meta_title":"Sopha giường cổ điển","meta_description":"Một căn nhà đẹp là có 1 phòng khách thu hút. Bộ sofa luôn là tâm điểm thu hút sự chú ý khi bước chân vào không gian này. Việc bài trí sofa đúng cách không chỉ","featured_image":{"alt":"","id":3496470,"product_id":1295278,"position":"0","src":"//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1458893355590","attached_to_variant":false,"variant_ids":[2108929]},"images":[{"alt":"","id":3496470,"product_id":1295278,"position":"0","src":"//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1458893355590","attached_to_variant":true,"variant_ids":[2108929]},{"alt":"xanh pha xanh lá mạ","id":3496471,"product_id":1295278,"position":"0","src":"//bizweb.dktcdn.net/100/052/640/products/sofa-12.jpg?v=1458893263307","attached_to_variant":true,"variant_ids":[2108928]}],"options":["Màu sắc"],"variants":[{"id":2108928,"price":12540000.0000,"options":["Xanh lam"],"option1":"Xanh lam","title":"Xanh lam","taxable":true,"inventory_management":"","inventory_policy":"deny","inventory_quantity":1,"weight":0.0,"weight_unit":"kg","image":{"alt":"xanh pha xanh lá mạ","id":3496471,"product_id":1295278,"position":"0","src":"//bizweb.dktcdn.net/100/052/640/products/sofa-12.jpg?v=1458893263307","attached_to_variant":true,"variant_ids":[2108928]},"requires_shipping":true,"selected":false,"url":"/sopha-giuong-co-dien?variantid=2108928","available":true},{"id":2108929,"price":12540000.0000,"options":["Xanh ngọc"],"option1":"Xanh ngọc","title":"Xanh ngọc","taxable":true,"inventory_management":"","inventory_policy":"deny","inventory_quantity":1,"weight":0.0,"weight_unit":"kg","image":{"alt":"","id":3496470,"product_id":1295278,"position":"0","src":"//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1458893355590","attached_to_variant":true,"variant_ids":[2108929]},"requires_shipping":true,"selected":false,"url":"/sopha-giuong-co-dien?variantid=2108929","available":true}],"available":true,"content":"\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eMột căn nhà đẹp là có 1 phòng khách thu hút.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eBộ sofa luôn là tâm điểm thu hút sự chú ý khi bước chân vào không gian này.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eViệc bài trí sofa đúng cách không chỉ mang lại vẻ đẹp thanh thoát cho căn phòng mà còn mang tài vận và may mắn đến cho gia chủ.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eLiên hệ ngay đến công ty sản xuất ghế\u0026nbsp;sofa giường đẹp giá rẻ\u0026nbsp;để được tư vấn tốt nhất\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eMẫu mã sản phẩm sofa giường cao cấp\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003e\u0026nbsp;\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;\u0022\u003e\u003cimg src=\u0022//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1454124166207\u0022 /\u003e\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eKhông quá đỗi trắng muốt đến ngất ngây, nhưng thật sự cũng đi vào lòng người với bộ ghế sofa giường đẹp giá rẻ được bọc bằng chất liệu vải hoa tạo cảm giác nhẹ nhàng và bồng bềnh cho không gian thêm nồng ấm.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eĐệm mút:\u0026nbsp;Cứng hoặc mềm - bông mút ( tùy chọn )\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003ePhụ kiện: Nhập khẩu Malaysia\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eKích thước: 1800 * 1200. ( Kích thước - màu sắc có thể thay đổi theo yêu cầu )\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eCam kết đảm bảo chất lượng và giá trị của sản phẩm, nguồn gốc xuất sứ vật liệu rõ ràng.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eĐặc biệt: Quý khách có thể kiểm tra giám sát chất lượng sản phẩm sofa theo từng giai đoạn\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;\u0022\u003e\u003cimg src=\u0022//bizweb.dktcdn.net/100/052/640/products/sofa-12.jpg?v=1454124166207\u0022 /\u003e\u003c/p\u003e","summary_or_content":"\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eMột căn nhà đẹp là có 1 phòng khách thu hút.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eBộ sofa luôn là tâm điểm thu hút sự chú ý khi bước chân vào không gian này.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eViệc bài trí sofa đúng cách không chỉ mang lại vẻ đẹp thanh thoát cho căn phòng mà còn mang tài vận và may mắn đến cho gia chủ.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eLiên hệ ngay đến công ty sản xuất ghế\u0026nbsp;sofa giường đẹp giá rẻ\u0026nbsp;để được tư vấn tốt nhất\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eMẫu mã sản phẩm sofa giường cao cấp\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003e\u0026nbsp;\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;\u0022\u003e\u003cimg src=\u0022//bizweb.dktcdn.net/100/052/640/products/sofa-10.jpg?v=1454124166207\u0022 /\u003e\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eKhông quá đỗi trắng muốt đến ngất ngây, nhưng thật sự cũng đi vào lòng người với bộ ghế sofa giường đẹp giá rẻ được bọc bằng chất liệu vải hoa tạo cảm giác nhẹ nhàng và bồng bềnh cho không gian thêm nồng ấm.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eĐệm mút:\u0026nbsp;Cứng hoặc mềm - bông mút ( tùy chọn )\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003ePhụ kiện: Nhập khẩu Malaysia\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eKích thước: 1800 * 1200. ( Kích thước - màu sắc có thể thay đổi theo yêu cầu )\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eCam kết đảm bảo chất lượng và giá trị của sản phẩm, nguồn gốc xuất sứ vật liệu rõ ràng.\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal;\u0022\u003eĐặc biệt: Quý khách có thể kiểm tra giám sát chất lượng sản phẩm sofa theo từng giai đoạn\u003c/p\u003e\r\n\r\n\u003cp style=\u0022color: rgb(0, 0, 0); font-family: Arial, Verdana, sans-serif; font-size: 14px; line-height: normal; text-align: center;\u0022\u003e\u003cimg src=\u0022//bizweb.dktcdn.net/100/052/640/products/sofa-12.jpg?v=1454124166207\u0022 /\u003e\u003c/p\u003e"},
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
