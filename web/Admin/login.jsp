<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <!-- Bootstrap -->
        <link href="${root}/Admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">       
        <!-- styles -->
        <link href="${root}/Admin/css/styles.css" rel="stylesheet">
        <script src="${root}/Admin/bootstrap/js/bootstrap.min.js"></script>
        <script src="${root}/Admin/bootstrap/js/jquery.js"></script>
        <script src="${root}/Admin/js/custom.js"></script>
    </head>
    <body class="login-bg">
  	<div class="header">
	     <div class="container">
	        <div class="row">
	           <div class="col-md-12">
	              <!-- Logo -->
	              <div class="logo">
<!--	                 <h1><a href="#">Trang quản trị ShopLaptop</a></h1>-->
	              </div>
	           </div>
	        </div>
	     </div>
	</div>

	<div class="page-content container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="login-wrapper">
			        <div class="box">
			            <div class="content-wrap">
                                        <form accept-charset='UTF-8' action="AdminServlet" method="POST">
			                <h6>Sign In</h6>
<!--			                <div class="social">
	                            <a class="face_login" href="#">
	                                <span class="face_icon">
	                                    <img src="images/facebook.png" alt="fb">
	                                </span>
	                                <span class="text">Sign in with Facebook</span>
	                            </a>
	                            <div class="division">
	                                <hr class="left">
	                                <span>or</span>
	                                <hr class="right">
	                            </div>
	                        </div>-->
                                        <input type="hidden" value="login" name="command" id="command"/>
                                        
			                <input class="form-control" value="" maxlength="50" type="email" name="email" required placeholder="E-mail address"/>
                                        <br>
			                <input class="form-control" value="" maxlength="50" type="password" name="password" required placeholder="Password"/>
			                
                                        <div class="action">
			                    <a class="btn btn-primary signup" type="submit">Login</a>
			                </div>  
                                        </form>
			            </div>
			        </div>
			    </div>
			</div>
		</div>
	</div>
  </body>
</html>
