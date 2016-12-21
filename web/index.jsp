<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html lang="vn">
<!--<![endif]-->
<head>
    <title>Trang chủ  </title>
    <jsp:include page = "layout/head.jsp"></jsp:include>
</head>
<body id="top">
    <%
    ProductDAO productDAO = new ProductDAO();
    %>
    <div id="page-wrapper">
        <jsp:include page = "layout/header.jsp"></jsp:include>
        <!-- SITE CONTENT
        =========================================================================== -->
        <div id="site-content">
            <div id="main">
                <jsp:include page = "layout/slider.jsp"></jsp:include> 
                <jsp:include page = "layout/contact.jsp"></jsp:include>
                <section class="news_jobs">
                    <div class="container">
                        <div class="row ">
                            <div class="col-sm-6 col-md-12 div-new-news-content">
                                <div class="row ">
                                    <div class="col-xs-12 section-slide-header">
                                        <h2>Tin tức mới nhất</h2>
                                        <div class="page-owl-buttons">
                                            <div class="page-owl-prev"><a id="new-news-pre" href="#owl-demo-new-news"><i class="fa fa-caret-left"></i></a></div>
                                            <div class="page-owl-next"><a id="new-news-next" href="#owl-demo-new-news"><i class="fa fa-caret-right"></i></a></div>
                                        </div>
                                    </div>
                                    <div id="owl-demo-new-news" class="owl-carousel owl-theme">
                                        <div class="item">
                                            <div class="new-item">
                                                <div class="col-md-12">
                                                    <div class="new-img">
                                                        <a href="#" title="Những mẫu ghế nghỉ đa năng đáng mơ ước"><img src="./images/product/lenovo-ideapad-100.png" alt="Những mẫu ghế nghỉ đa năng đáng mơ ước"></a>
                                                    </div>
                                                    <h3 class="new-name"><a href="" title="Những mẫu ghế nghỉ đa năng đáng mơ ước">Những mẫu ghế nghỉ đa năng đáng mơ ước</a></h3>
                                                    <p class="new-info">1/25/2016 4:36:00 PM</p>
                                                    <p class="new-description">
                                                        Những thiết kế ghế nghỉ đa năng này sẽ giúp dân văn phòng có nơi thư giãn, nạp năng lượng mà không ảnh hưởng đến mỹ quan công sở".... <a href="/nhung-mau-ghe-nghi-da-nang-dang-mo-uoc-cho-dan-van-phong">[Đọc tiếp]</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="new-item">
                                                <div class="col-md-12">
                                                    <div class="new-img">
                                                        <a href="/4-thiet-ke-phong-ngu-hien-dai-dang-de-mo-uoc" title="4 thiết kế phòng ngủ hiện đại đáng để mơ ước"><img src="./images/product/lenovo-ideapad-100.png" alt="4 thiết kế phòng ngủ hiện đại đáng để mơ ước"></a>
                                                    </div>
                                                    <h3 class="new-name"><a href="" title="4 thiết kế phòng ngủ hiện đại đáng để mơ ước">4 thiết kế phòng ngủ hiện đại đáng để mơ ước</a></h3>
                                                    <p class="new-info">1/25/2016 4:28:00 PM</p>
                                                    <p class="new-description">
                                                        Những thiết kế phòng ngủ năng động, hiện đại nhưng cũng không kém phần ấn tượng dưới đây có thể sẽ khiến bạn mê mẩn và ao ước có... <a href="/4-thiet-ke-phong-ngu-hien-dai-dang-de-mo-uoc">[Đọc tiếp]</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="new-item">
                                                <div class="col-md-12">
                                                    <div class="new-img">
                                                        <a href="/" title="Những món đồ nội thất đẹp đến không tưởng"><img src="./images/product/lenovo-ideapad-100.png" alt="Những món đồ nội thất đẹp đến không tưởng"></a>
                                                    </div>
                                                    <h3 class="new-name"><a href="" title="Những món đồ nội thất đẹp đến không tưởng">Những món đồ nội thất đẹp đến không tưởng</a></h3>
                                                    <p class="new-info">1/25/2016 4:22:00 PM</p>
                                                    <p class="new-description">
                                                        Chất liệu tre, trúc vốn được mặc định với sự giản dị, đơn sơ, truyền thống. Song, những thiết kế đồ nội thất từ tre trúc dưới đây sẽ... <a href="/nhung-mon-do-noi-that-dep-den-khong-tuong">[Đọc tiếp]</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="new-item">
                                                <div class="col-md-12">
                                                    <div class="new-img">
                                                        <a href="#" title="Những mẫu ghế nghỉ đa năng đáng mơ ước"><img src="./images/product/lenovo-ideapad-100.png" alt="Những mẫu ghế nghỉ đa năng đáng mơ ước"></a>
                                                    </div>
                                                    <h3 class="new-name"><a href="" title="Những mẫu ghế nghỉ đa năng đáng mơ ước">Những mẫu ghế nghỉ đa năng đáng mơ ước</a></h3>
                                                    <p class="new-info">1/25/2016 4:36:00 PM</p>
                                                    <p class="new-description">
                                                        Những thiết kế ghế nghỉ đa năng này sẽ giúp dân văn phòng có nơi thư giãn, nạp năng lượng mà không ảnh hưởng đến mỹ quan công sở".... <a href="/nhung-mau-ghe-nghi-da-nang-dang-mo-uoc-cho-dan-van-phong">[Đọc tiếp]</a>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="featured_projects">
                    <div class="container">
                        <div class="row ">
                            <div class="col-md-12">
                                <h2 class="activities_title text-center">Sản phẩm bán chạy</h2>
                                <p class="activities_description text-center">Bạn có thể thấy dưới đây là hơn 100 sản phẩm bán chạy nhất tại Shop của chúng tôi.</p>
                            </div>
                            <div>
                                <div class="tablist_parent col-md-12">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Sản phẩm mới</a></li>
                                        <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">GAMING</a></li>
                                        <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">NoteBook</a></li>
                                        <li role="presentation"><a href="#settings" aria-controls="settings" role="tab" data-toggle="tab">UltraBook</a></li>
                                        <li role="presentation"><a href="#settings2" aria-controls="settings2" role="tab" data-toggle="tab">2 in 1</a></li>
                                        <li role="presentation"><a href="#settings3" aria-controls="settings3" role="tab" data-toggle="tab">Đèn trang trí</a></li>
                                        <li role="presentation" class="dropdown">
                                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                                Dự án <i class="fa fa-angle-down pull-right"></i>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Sản phẩm mới</a></li>
                                                <li role="presentation"><a href="#profile" id="profile_tab" aria-controls="profile" role="tab" data-toggle="tab">Bàn Cafe</a></li>
                                                <li role="presentation"><a href="#messages" id="messages_tab" aria-controls="messages" role="tab" data-toggle="tab">Ghế Cafe</a></li>
                                                <li role="presentation"><a href="#settings" id="settings_tab" aria-controls="settings" role="tab" data-toggle="tab">Sofa Hàn quốc</a></li>
                                                <li role="presentation"><a href="#settings2" id="settings2_tab" aria-controls="settings2" role="tab" data-toggle="tab">Sofa cao cấp</a></li>
                                                <li role="presentation"><a href="#settings3" id="settings3_tab" aria-controls="settings3" role="tab" data-toggle="tab">Đèn trang trí</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active" id="home">
                                        <div class="featured_projects_hidden_xs">
                                            <%
                                                for(Product pnew : productDAO.getListProductNew())
                                                {
                                            %>
                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="detail.jsp?product=<%=pnew.getProductID()%>"><img src="./images/product/<%=pnew.getProductImage()%>" alt="<%=pnew.getProductName()%>"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="detail.jsp?product=<%=pnew.getProductID()%>"><%=pnew.getProductName()%></a></h3>
                                                        <p class="projects-item-description"><a href="detail.jsp?product=<%=pnew.getProductID()%>"><%=pnew.getProductPriceReal()%>₫</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <% }%>
                                        </div><!-- End. Item hidden-xs-->
                                        <div class="featured_projects_show_xs">
                                            <div id="owl-demo-featured_projects" class="owl-carousel owl-theme">
                                                <%
                                                for(Product pnew : productDAO.getListProductNew())
                                                {
                                                %>
                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="detail.jsp?product=<%=pnew.getProductID()%>"><img src="./images/product/<%=pnew.getProductImage()%>" alt="<%=pnew.getProductName()%>"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="detail.jsp?product=<%=pnew.getProductID()%>"><%=pnew.getProductName()%></a></h3>
                                                                <p class="projects-item-description"><a href="detail.jsp?product=<%=pnew.getProductID()%>"><%=pnew.getProductPriceReal()%>₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <% }%>

                                            </div>
                                        </div>
                                        <div class="col-md-12 text-center projects-item-content">
                                            <a href="/Laptop/all.jsp" class="projects-item-content-more btn btn-default">Xem thêm</a>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="profile">
                                        <div class="featured_projects_hidden_xs">

                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ban-tra-trong-suot"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/7.jpg?v=1453697651440" alt="B&#224;n tr&#224; trong suốt"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ban-tra-trong-suot">Bàn trà trong suốt</a></h3>
                                                        <p class="projects-item-description"><a href="/ban-tra-trong-suot">3.500.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ban-trang-tri"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/2943-ban-cafe-r524-min.jpg?v=1469541836387" alt="B&#224;n trang tr&#237;"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ban-trang-tri">Bàn trang trí</a></h3>
                                                        <p class="projects-item-description"><a href="/ban-trang-tri">760.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ban-cafe-nang-cao-60"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/untitled-21.jpg?v=1453707350340" alt="B&#224;n cafe n&#226;ng cao 60"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ban-cafe-nang-cao-60">Bàn cafe nâng cao 60</a></h3>
                                                        <p class="projects-item-description"><a href="/ban-cafe-nang-cao-60">528.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ban-tra-chan-banh-mi-60"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/untitled-22-098d0842-a734-4549-a4e8-0ec79be3bb4f.jpg?v=1453707444037" alt="B&#224;n tr&#224; ch&#226;n b&#225;nh m&#236; 60"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ban-tra-chan-banh-mi-60">Bàn trà chân bánh mì 60</a></h3>
                                                        <p class="projects-item-description"><a href="/ban-tra-chan-banh-mi-60">520.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ban-tra-2-tang-70"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/untitled-23.jpg?v=1453707779813" alt="B&#224;n tr&#224; 2 tầng 70"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ban-tra-2-tang-70">Bàn trà 2 tầng 70</a></h3>
                                                        <p class="projects-item-description"><a href="/ban-tra-2-tang-70">469.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ban-tra-chan-banh-mi-90-bestgoods"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/7-fca35c0c-5c30-4357-9054-7c5c22b57048.jpg?v=1453697721530" alt="B&#224;n trang tr&#237;"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ban-tra-chan-banh-mi-90-bestgoods">Bàn trang trí</a></h3>
                                                        <p class="projects-item-description"><a href="/ban-tra-chan-banh-mi-90-bestgoods">519.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                        </div><!-- End. Item hidden-xs-->
                                        <div class="featured_projects_show_xs">
                                            <div id="owl-demo-featured_projects_profile" class="owl-carousel owl-theme">

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ban-tra-trong-suot"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/7.jpg?v=1453697651440" alt="B&#224;n tr&#224; trong suốt"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ban-tra-trong-suot">Bàn trà trong suốt</a></h3>
                                                                <p class="projects-item-description"><a href="/ban-tra-trong-suot">3.500.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ban-trang-tri"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/2943-ban-cafe-r524-min.jpg?v=1469541836387" alt="B&#224;n trang tr&#237;"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ban-trang-tri">Bàn trang trí</a></h3>
                                                                <p class="projects-item-description"><a href="/ban-trang-tri">760.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ban-cafe-nang-cao-60"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/untitled-21.jpg?v=1453707350340" alt="B&#224;n cafe n&#226;ng cao 60"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ban-cafe-nang-cao-60">Bàn cafe nâng cao 60</a></h3>
                                                                <p class="projects-item-description"><a href="/ban-cafe-nang-cao-60">528.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ban-tra-chan-banh-mi-60"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/untitled-22-098d0842-a734-4549-a4e8-0ec79be3bb4f.jpg?v=1453707444037" alt="B&#224;n tr&#224; ch&#226;n b&#225;nh m&#236; 60"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ban-tra-chan-banh-mi-60">Bàn trà chân bánh mì 60</a></h3>
                                                                <p class="projects-item-description"><a href="/ban-tra-chan-banh-mi-60">520.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ban-tra-2-tang-70"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/untitled-23.jpg?v=1453707779813" alt="B&#224;n tr&#224; 2 tầng 70"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ban-tra-2-tang-70">Bàn trà 2 tầng 70</a></h3>
                                                                <p class="projects-item-description"><a href="/ban-tra-2-tang-70">469.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ban-tra-chan-banh-mi-90-bestgoods"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/7-fca35c0c-5c30-4357-9054-7c5c22b57048.jpg?v=1453697721530" alt="B&#224;n trang tr&#237;"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ban-tra-chan-banh-mi-90-bestgoods">Bàn trang trí</a></h3>
                                                                <p class="projects-item-description"><a href="/ban-tra-chan-banh-mi-90-bestgoods">519.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="col-md-12 text-center projects-item-content">
                                            <a href="/collections/ban-da-nang" class="projects-item-content-more btn btn-default">Xem thêm</a>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane" id="messages">
                                        <div class="featured_projects_hidden_xs">

                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ghe-sofa-cafe-dep"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/11.jpg?v=1453697573373" alt="Ghế sofa cafe đẹp"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ghe-sofa-cafe-dep">Ghế sofa cafe đẹp</a></h3>
                                                        <p class="projects-item-description"><a href="/ghe-sofa-cafe-dep">1.800.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ghe-cafe-sua"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/8.jpg?v=1453697229017" alt="Ghế cafe sữa"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ghe-cafe-sua">Ghế cafe sữa</a></h3>
                                                        <p class="projects-item-description"><a href="/ghe-cafe-sua">1.200.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ghe-thu-gian-xanh-ngoc"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/9.jpg?v=1453697167010" alt="Ghế thư gi&#227;n xanh ngọc"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ghe-thu-gian-xanh-ngoc">Ghế thư giãn xanh ngọc</a></h3>
                                                        <p class="projects-item-description"><a href="/ghe-thu-gian-xanh-ngoc">1.600.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ghe-thu-gian"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/6-min.jpg?v=1469595270843" alt="Ghế thư gi&#227;n"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ghe-thu-gian">Ghế thư giãn</a></h3>
                                                        <p class="projects-item-description"><a href="/ghe-thu-gian">2.100.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/ghe-trang-tri-1"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/untitled-1.jpg?v=1453696925393" alt="Ghế trang tr&#237;"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/ghe-trang-tri-1">Ghế trang trí</a></h3>
                                                        <p class="projects-item-description"><a href="/ghe-trang-tri-1">3.200.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="col-sm-6 col-md-4 projects-item-content">
                                                <div class="projects-item">
                                                    <a href="/copy-of-ghe-doc-dao"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/2-f0312520-214b-48d2-8f38-e5e49c214d96.jpg?v=1453695636750" alt="Ghế nghệ thuật"></a>
                                                    <div class="projects-item-info">
                                                        <h3 class="projects-item-title"><a href="/copy-of-ghe-doc-dao">Ghế nghệ thuật</a></h3>
                                                        <p class="projects-item-description"><a href="/copy-of-ghe-doc-dao">2.600.000₫</a></p>
                                                    </div>
                                                </div>
                                            </div>


                                        </div><!-- End. Item hidden-xs-->
                                        <div class="featured_projects_show_xs">
                                            <div id="owl-demo-featured_projects_messages" class="owl-carousel owl-theme">

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ghe-sofa-cafe-dep"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/11.jpg?v=1453697573373" alt="Ghế sofa cafe đẹp"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ghe-sofa-cafe-dep">Ghế sofa cafe đẹp</a></h3>
                                                                <p class="projects-item-description"><a href="/ghe-sofa-cafe-dep">1.800.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ghe-cafe-sua"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/8.jpg?v=1453697229017" alt="Ghế cafe sữa"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ghe-cafe-sua">Ghế cafe sữa</a></h3>
                                                                <p class="projects-item-description"><a href="/ghe-cafe-sua">1.200.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ghe-thu-gian-xanh-ngoc"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/9.jpg?v=1453697167010" alt="Ghế thư gi&#227;n xanh ngọc"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ghe-thu-gian-xanh-ngoc">Ghế thư giãn xanh ngọc</a></h3>
                                                                <p class="projects-item-description"><a href="/ghe-thu-gian-xanh-ngoc">1.600.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ghe-thu-gian"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/6-min.jpg?v=1469595270843" alt="Ghế thư gi&#227;n"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ghe-thu-gian">Ghế thư giãn</a></h3>
                                                                <p class="projects-item-description"><a href="/ghe-thu-gian">2.100.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/ghe-trang-tri-1"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/untitled-1.jpg?v=1453696925393" alt="Ghế trang tr&#237;"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/ghe-trang-tri-1">Ghế trang trí</a></h3>
                                                                <p class="projects-item-description"><a href="/ghe-trang-tri-1">3.200.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="item">
                                                    <div class="col-xs-12 projects-item-content">
                                                        <div class="projects-item">
                                                            <a href="/copy-of-ghe-doc-dao"><img src="//bizweb.dktcdn.net/thumb/large/100/052/640/products/2-f0312520-214b-48d2-8f38-e5e49c214d96.jpg?v=1453695636750" alt="Ghế nghệ thuật"></a>
                                                            <div class="projects-item-info">
                                                                <h3 class="projects-item-title"><a href="/copy-of-ghe-doc-dao">Ghế nghệ thuật</a></h3>
                                                                <p class="projects-item-description"><a href="/copy-of-ghe-doc-dao">2.600.000₫</a></p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>


                                            </div>
                                        </div>
                                        <div class="col-md-12 text-center projects-item-content">
                                            <a href="/collections/ghe-da-nang" class="projects-item-content-more btn btn-default">Xem thêm</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </section>
                <section class="activities">
                    <div class="container">
                        <div class="row ">
                            <style>
                                .featured-products {
                                    background: url("");
                                    background-repeat: no-repeat;
                                    background-position: top center;
                                    background-size: cover;
                                    position: relative;
                                }
                            </style>
                            <h2 class="activities_title text-center padding-lr-15">Sản phẩm nổi bật</h2>
                            <p class="activities_description text-center padding-lr-15 hidden-xs">Chúng tôi mang đến những sản phẩm với chất lượng cao nhất và dịch vụ hoàn hảo nhất cho mọi khách hàng</p>
                            <div id="owl-demo-featured-products" class="owl-carousel owl-theme">
<!--                                <div class="item">
                                    <div class="col-md-12">
                                        <div class="product_item">
                                            <form action="/cart/add" class="product_item_form" method="post">
                                                <div class="product-gird">
                                                    <div class="product-img-parent">
                                                        <a class="product-img" href="./detail.jsp" title="Ghế thư giãn xanh ngọc">
                                                            <img class="product-img-first" src="./images/product/lenovo-ideapad-100.png" alt="Ghế thư gi&#227;n xanh ngọc">
                                                        </a>
                                                        <div class="product-action-btn">
                                                            <div class="btn-group" role="group" aria-label="Basic example">
                                                                <button class="product-action btn-red addtocart add-to-cart btn btn-default btn-lg" type="submit" id="button-cart">MUA NGAY</button>
                                                                <a href="./detail.jsp" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <span class="product-price text-center">
                                                        <b class="productminprice">1.600.000₫</b>
                                                    </span>
                                                    <h3 class="product-name"><a href="./detail.jsp" title="Ghế thư giãn xanh ngọc">Ghế thư giãn xanh ngọc</a></h3>
                                                    <div style="display:none">
                                                        <input type="hidden" name="variantId" value="2022657" />
                                                    </div>
                                                    số lượng
                                                    <div style="display:none">
                                                        <div class="input-group quantity">
                                                            <input type="text" class="form-control" name="quantity" id="quantity_wanted" size="2" value="1" />
                                                        </div>
                                                    </div>
                                                </div>
                                                 End .product-gird 
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
                                                        <a class="product-img" href="./detail.jsp" title="Ghế trang trí">
                                                            <img class="product-img-first" src="./images/product/lenovo-ideapad-100.png" alt="Ghế trang tr&#237;">
                                                        </a>
                                                        <div class="product-action-btn">
                                                            <div class="btn-group" role="group" aria-label="Basic example">
                                                                <a class="btn btn-default btn-lg addtocart" href="/ghe-trang-tri">CHỌN SẢN PHẨM</a>
                                                                <a href="./detail.jsp" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <span class="product-price text-center">
                                                        <b class="productminprice">2.300.000₫</b>
                                                    </span>
                                                    <h3 class="product-name"><a href="./detail.jsp" title="Ghế trang trí">Ghế trang trí</a></h3>
                                                    <div style="display:none">
                                                        <select id="product-selectors" name="variantId" style="display:none">
                                                            <option lỗi liquid unknown operator roduct value="2021419">Vàng - 2.300.000₫</option>
                                                            <option lỗi liquid unknown operator roduct value="2021420">Đen - 2.300.000₫</option>
                                                        </select>
                                                    </div>
                                                    số lượng
                                                    <div style="display:none">
                                                        <div class="input-group quantity">
                                                            <input type="text" class="form-control" name="quantity" id="quantity_wanted" size="2" value="1" />
                                                        </div>
                                                    </div>
                                                </div>
                                                 End .product-gird 
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
                                                        <div class="sale_tag">- 8%</div>
                                                        <a class="product-img" href="/ghe-cafe-sua" title="Ghế cafe sữa">
                                                            <img class="product-img-first" src="./images/product/lenovo-ideapad-100.png" alt="Ghế cafe sữa">
                                                        </a>
                                                        <div class="product-action-btn">
                                                            <div class="btn-group" role="group" aria-label="Basic example">
                                                                <button class="product-action btn-red addtocart add-to-cart btn btn-default btn-lg" type="submit" id="button-cart">MUA NGAY</button>
                                                                <a href="/ghe-cafe-sua" class="btn btn-default btn-black btn-lg">CHI TIẾT</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <span class="product-price text-center">
                                                        <b class="productminprice">1.200.000₫</b>
                                                        <del>1.300.000₫</del>
                                                    </span>
                                                    <h3 class="product-name"><a href="/ghe-cafe-sua" title="Ghế cafe sữa">Ghế cafe sữa</a></h3>
                                                    <div style="display:none">
                                                        <input type="hidden" name="variantId" value="2022660" />
                                                    </div>
                                                    số lượng
                                                    <div style="display:none">
                                                        <div class="input-group quantity">
                                                            <input type="text" class="form-control" name="quantity" id="quantity_wanted" size="2" value="1" />
                                                        </div>
                                                    </div>

                                                </div>
                                                 End .product-gird 
                                            </form>
                                        </div>
                                    </div>
                                </div>-->
                            <%
                                for(Product p : productDAO.getListProductNoibat())
                                {
                            %>
                                <div class="item">
                                    <div class="col-md-12">
                                        <div class="product_item">
                                            <form action="/cart/add" class="product_item_form" method="post">

                                                <div class="product-gird">
                                                    <div class="product-img-parent">
                                                        <% if(p.getProductSale() > 0 ){ %>
                                                        <div class="sale_tag">- <%=p.getProductSale()%>%</div>
                                                        <% }%>
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
                                                        <b class="productminprice"><%=p.getProductPriceReal()%>₫</b>
                                                        <% if(p.getProductSale() > 0 ){ %>
                                                        <del><%=p.getProductPrice()%>₫</del>
                                                        <% }%>
                                                    </span>
                                                    <h3 class="product-name"><a href="detail.jsp?product=<%=p.getProductID()%>" title="<%=p.getProductName()%>"><%=p.getProductName()%></a></h3>
<!--                                                    <div style="display:none">
                                                        <select id="product-selectors" name="variantId" style="display:none">
                                                            <option lỗi liquid unknown operator roduct value="2023875">Đỏ - <%=p.getProductPriceReal()%>₫</option>
                                                            <option lỗi liquid unknown operator roduct value="2023876">Trắng - <%=p.getProductPriceReal()%>₫</option>
                                                        </select>
                                                    </div>-->
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
                                <% } %>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- /SITE CONTENT -->
        
        <!-- SITE FOOTER
        =========================================================================== -->
        <jsp:include page = "layout/brand.jsp"></jsp:include>
        <jsp:include page = "layout/footer.jsp"></jsp:include>
        <!-- /SITE FOOTER -->
    </div>
    <jsp:include page = "layout/script.jsp"></jsp:include>
</body>
</html>
