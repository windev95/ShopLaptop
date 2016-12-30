<%-- 
    Document   : insert_product
    Created on : Dec 30, 2016, 10:32:14 AM
    Author     : Khang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta property="og:image" content="./images/shop/logo.png">
        <title>Thêm mới sản phẩm</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <!-- Bootstrap -->
        <link href="${root}/Admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">       
        <!-- styles -->
        <link href="${root}/Admin/css/styles.css" rel="stylesheet">
        <script src="${root}/Admin/bootstrap/js/jquery.js"></script>
        <script src="${root}/Admin/bootstrap/js/bootstrap.min.js"></script>      
        <script src="${root}/Admin/js/custom.js"></script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="page-content">
            <div class="row">
                <jsp:include page="menu.jsp"></jsp:include>
                <div class="col-md-10">
                    <div class="col-md-6">
	  					<div class="content-box-large">
			  				<div class="panel-heading">
					            <div class="panel-title">Vertical Form</div>
					          
					            <div class="panel-options">
					              <a href="#" data-rel="collapse"><i class="glyphicon glyphicon-refresh"></i></a>
					              <a href="#" data-rel="reload"><i class="glyphicon glyphicon-cog"></i></a>
					            </div>
					        </div>
			  				<div class="panel-body">
			  					<form action="">
									<fieldset>
										<div class="form-group">
											<label>Text field</label>
											<input class="form-control" placeholder="Text field" type="text">
										</div>
										<div class="form-group">
											<label>Password field</label>
											<input class="form-control" placeholder="Password" type="password" value="mypassword">
										</div>
										<div class="form-group">
											<label>Textarea</label>
											<textarea class="form-control" placeholder="Textarea" rows="3"></textarea>
										</div>
										<div class="form-group">
											<label>Readonly</label>
											<span class="form-control">Read only text</span>
										</div>
									</fieldset>
									<div>
										<div class="btn btn-primary">
											<i class="fa fa-save"></i>
											Submit
										</div>
									</div>
								</form>
			  				</div>
			  			</div>
	  				</div>
                </div>
                
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>
