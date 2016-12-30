<%-- 
    Document   : insert_category
    Created on : Dec 30, 2016, 5:42:36 PM
    Author     : Khang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm mới danh mục</title>
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
        <%
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="page-content">
            <div class="row">
                <jsp:include page="menu.jsp"></jsp:include>
                <div class="col-md-10">
                    <div class="col-md-6">
	  					<div class="content-box-large">
			  				<div class="panel-heading">
					            <div class="panel-title">Thông tin danh mục</div>					          					       
					        </div>
                                                    <form action="/Laptop/ManagerCategoryServlet" method="post">
			  				<div class="panel-body">
			  					<form action="">
									<fieldset>
										<div class="form-group">
											<label>Tên danh mục</label>
											<input class="form-control" placeholder="Text field" type="text">
										</div>
										<div class="form-group">
											<label>MetaTittle</label>
											<input class="form-control" placeholder="Text field" type="text">
										</div>
                                                                                <div class="form-group">
											<label>Metakeywords</label>
											<input class="form-control" placeholder="Text field" type="text">
										</div>
                                                                                <div class="form-group">
											<label>MetaDescription</label>
											<input class="form-control" placeholder="Text field" type="text">
										</div>
									</fieldset>
									<div>
										<input type="hidden" name="command" value="insert">
                                                                                <input type="submit" class="button" value="Lưu dữ liệu">
									</div>
								</form>
			  				</div>
                                                    </form>
			  			</div>
	  				</div>
                </div>
                
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
