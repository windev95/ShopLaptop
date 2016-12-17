<%-- 
    Document   : header
    Created on : Nov 27, 2016, 7:48:32 PM
    Author     : BoyIt
--%>
<%@page import="model.Users"%>
<%@page import="dao.UsersDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            Users users = new Users();
            if (session.getAttribute("users") != null) 
                users = (Users) session.getAttribute("users");
            else
                users.setUserEmail("");
        %>
        <!-- SITE HEADER
        =========================================================================== -->
        <div id="site-header">
            <header id="header" class="header">
                <!-- top header bar -->
                <div class="topbar">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12">
                                <div class="pull-left">
                                    <ul>
                                        <li><a href="http://www.facebook.com/#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="https://twitter.com/#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="https://plus.google.com/+#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="skype#"><i class="fa fa-skype"></i></a></li>
                                    </ul>
                                </div>
                                <div class="pull-right">
                                    <% if(session.getAttribute("users") == null) {%>
                                    <ul>
                                        <li><a href="./register.jsp" class="header-link" title="Đăng ký">Đăng ký</a></li>
                                        <li><a href="./login.jsp" class="header-link" title="Đăng nhập">Đăng nhập</a></li>
                                    </ul>
                                    <%} else {%>
                                    <ul>																	
					<li><a href="./account.jsp" class="header-link" title="Xin chào! "><%=users.getUserEmail() %></a></li>
                                        <script>
                                            function thoat(){
                                                var session.getAttribute("users") = null;
                                            }
                                        </script>
                                        <li onclick="thoat()"><a href="#" class="header-link" title="Thoát">Thoát</a></li>													
                                    </ul>
                                    <%}%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End .topbar -->
                <!-- /top header bar -->
                <!-- main header -->
                <div class="header-main">
                    <div class="container">
                        <div class="row ">
                            <div class="col-sm-6 col-md-3 logo">
                                <div class="logo_content">
                                    <a href="/Laptop" class="logo" title="Ranger theme">
                                        <img src="./images/shop/logo.png" alt="Ranger theme">
                                    </a>
                                </div>
                            </div>
                            <div class="col-sm-6 cart_search_icon hidden-xs hidden-md hidden-lg">
                                <ul>
                                    <li>
                                        <div class="dropdown">
                                            <a class="dropdown-toggle" type="button" id="dropdown_Menu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="fa fa-search"></i>
                                            </a>
                                            <ul class="dropdown-menu dropdown_Menu1" aria-labelledby="dropdown_Menu1">
                                                <li>
                                                    <form action="/search" method="get">
                                                        <div class="input-group search_form_action">
                                                            <input type="text" class="form-control" maxlength="70" name="query" id="search" placeholder="Nhập từ khóa tìm kiếm...">
                                                            <span class="input-group-btn">
                                                                <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                                                            </span>
                                                        </div>
                                                        <!-- /input-group -->
                                                    </form>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="cart dropdown">
                                        <a href="/Laptop/cart.jsp" id="dLabel1" class="a_hv_cart_dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img src="./images/shop/cart.png" alt="CART">
                                            <span class="cart-number">0</span>
                                        </a>
                                        <div id="cart-info-parent" class="dropdown-menu">
                                            <div id="cart-info">
                                                <div class="cart-content" id="cart-content">
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-12 hidden-sm hidden-md hidden-lg header-search">
                                <form action="/search" method="get">
                                    <div class="input-group header_xs_search">
                                        <input type="text" class="form-control header_xs_search_input" maxlength="70" name="query" id="search" placeholder="Tìm kiếm...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default header_xs_search_btn" type="submit"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div><!-- /input-group -->
                                </form>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-7 menu">
                                <div class="navbar navbar-default yamm">
                                    <!-- Brand and toggle get grouped for better mobile display -->
                                    <div class="navbar-header">
                                        <button type="button" class="navbar-toggle collapsed pull-left text-left" data-toggle="collapse" data-target="#navbar-collapse-grid" aria-expanded="false">
                                            <span class="sr-only">Toggle navigation</span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                        <a href="./cart.jsp" class="xs-cart-btn hidden-sm hidden-md hidden-lg">
                                            <img src="./images/shop/cart.png" alt="CART">
                                            <span class="cart-number">0</span>
                                        </a>
                                    </div>
                                    <div id="navbar-collapse-grid" class="navbar-collapse collapse no-padding-lr">
                                        <ul class="nav navbar-nav">
                                            <!-- Grid 12 Menu -->
                                            <li class="fali"><a href="/Laptop" title="Trang chủ">Trang chủ</a></li>
                                            <li class="fali"><a href="./introduce.jsp" title="Giới thiệu">Giới thiệu</a></li>
                                            <li class="dropdown yamm-fw">
                                                <a class="a_medr1" href="./all.jsp">Sản phẩm</a><a href="/collections/all" data-toggle="dropdown" class="dropdown-toggle clickshowarrow a_medr2" title="Sản phẩm"><i class="fa fa-angle-down"></i></a>
                                                <div class="arrow"></div>
                                                <ul class="dropdown-menu dropdown-menu-right col-md-12 homemenudropdown">
                                                    <div class="container">
                                                        <li class="grid-demo col-sm-12">
                                                            <div class="row">
                                                                <div class="row-eq-height big-row-eq-height">
                                                                    <div class="col-xs-12 col-sm-3 r">
                                                                        <ul class="list-group">
                                                                            <li class="list-group-item"><a href="/frontpage" title="Sản phẩm mới">Sản phẩm mới</a>

                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-xs-12 col-sm-3 r">
                                                                        <ul class="list-group">
                                                                            <li class="list-group-item"><a href="/san-pham-khuyen-mai" title="Sản phẩm khuyến mãi">Sản phẩm khuyến mãi</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-xs-12 col-sm-3 r">
                                                                        <ul class="list-group">
                                                                            <li class="list-group-item"><a href="/san-pham-noi-bat" title="Sản phẩm nổi bật">Sản phẩm nổi bật</a></li>
                                                                        </ul>
                                                                    </div>                                                                   
                                                                    
                                                                    <div class="col-xs-12 col-sm-3 r">
                                                                        <ul class="list-group">
                                                                            <li class="list-group-item"><a href="/san-pham-noi-bat" title="Sản phẩm nổi bật">Theo màn hình</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-xs-12 col-sm-3 r">
                                                                        <ul class="list-group">
                                                                            <li class="list-group-item"><a href="/san-pham-noi-bat" title="Sản phẩm nổi bật">Theo CPU</a></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="col-xs-12 col-sm-3 r">
                                                                        <ul class="list-group">
                                                                            <li class="list-group-item"><a href="/san-pham-noi-bat" title="Sản phẩm nổi bật">Theo RAM</a></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </li>
                                                    </div>
                                                </ul>
                                            </li>
                                            <li class="fali"><a href="#" title="Tin tức">Tin tức</a></li>
                                            <li class="fali"><a href="./support.jsp" title="Liên hệ">Liên hệ</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2 cart_search_icon hidden-xs hidden-sm">
                                <ul>
                                    <li>
                                        <div class="dropdown">
                                            <a class="dropdown-toggle" type="button" id="dropdown_Menu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                <i class="fa fa-search"></i>
                                            </a>
                                            <ul class="dropdown-menu dropdown_Menu1" aria-labelledby="dropdown_Menu1">
                                                <li>
                                                    <form action="/search" method="get">
                                                        <div class="input-group search_form_action">
                                                            <input type="text" class="form-control" maxlength="70" name="query" id="search" placeholder="Nhập từ khóa tìm kiếm...">
                                                            <span class="input-group-btn">
                                                                <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                                                            </span>
                                                        </div>
                                                        <!-- /input-group -->
                                                    </form>
                                                </li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="cart dropdown">
                                        <a href="/Laptop/cart.jsp" class="a_hv_cart_dropdown" id="dLabel1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <img src="./images/shop/cart.png" alt="CART">
                                            <span class="cart-number">0</span>
                                        </a>
                                        <div id="cart-info-parent" class="dropdown-menu">
                                            <div id="cart-info">
                                                <div class="cart-content" id="cart-content">
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /main header -->
            </header>
        </div>
        <style>
            section.page_title {
                padding-top: 80px;
                padding-bottom: 80px;
                background: url("./images/shop/bc_cart.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-position: center;
                position: relative;
            }
        </style>
        <!-- /SITE HEADER -->
    </body>
</html>
