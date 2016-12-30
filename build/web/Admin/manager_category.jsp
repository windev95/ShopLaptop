<%-- 
    Document   : manager_category
    Created on : Dec 30, 2016, 10:14:21 AM
    Author     : Khang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý danh mục</title>
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
  			<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">Quản lý danh mục</div>
				</div>
  				<div class="panel-body">
  					<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
						<thead>
							<tr>
								<th>Rendering engine</th>
								<th>Browser</th>
								<th>Platform(s)</th>
								<th>Engine version</th>
								<th>Tùy chọn</th>
							</tr>
						</thead>
						<tbody>
							<tr class="gradeA">
								<td>Gecko</td>
								<td>Seamonkey 1.1</td>
								<td>Win 98+ / OSX.2+</td>
								<td class="center">1.8</td>
                                                                <td> 
                                                                <button class="btn btn-default"><i class="glyphicon glyphicon-eye-open"></i> View</button>                                                                
                                                                <button class="btn btn-primary"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                                                                <button class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i> Delete</button></td>
							</tr>
							<tr class="gradeA">
								<td>Gecko</td>
								<td>Seamonkey 1.1</td>
								<td>Win 98+ / OSX.2+</td>
								<td class="center">1.8</td>
                                                                <td> 
                                                                <button class="btn btn-default"><i class="glyphicon glyphicon-eye-open"></i> View</button>                                                                
                                                                <button class="btn btn-primary"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                                                                <button class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i> Delete</button></td>
							</tr>
                                                        <tr class="gradeA">
								<td>Gecko</td>
								<td>Seamonkey 1.1</td>
								<td>Win 98+ / OSX.2+</td>
								<td class="center">1.8</td>
                                                                <td> 
                                                                <button class="btn btn-default"><i class="glyphicon glyphicon-eye-open"></i> View</button>                                                                
                                                                <button class="btn btn-primary"><i class="glyphicon glyphicon-pencil"></i> Edit</button>
                                                                <button class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i> Delete</button></td>
							</tr>
						</tbody>
					</table>
  				</div>
  			</div>



		  </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
