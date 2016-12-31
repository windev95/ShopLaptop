<%-- 
    Document   : manager_category
    Created on : Dec 30, 2016, 10:14:21 AM
    Author     : Khang
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Category"%>
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
        <%
            CategoryDAO categorydao = new CategoryDAO();
            ArrayList<Category> listCategory = categorydao.getListCategory();            
        %>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="page-content">
            <div class="row">
                <jsp:include page="menu.jsp"></jsp:include>
                <div class="col-md-10"> 			
  			<div class="content-box-large">
  				<div class="panel-heading">
					<div class="panel-title">Quản lý danh mục</div>
                                        <button class="btn btn-default" onclick="location.href='../Admin/insert_category.jsp'">Thêm mới</button>
				</div>
                                
  				<div class="panel-body">                                  
  					<table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
						<thead>
							<tr>          
								<th>Mã Danh Mục</th>
								<th>Tên Danh Mục</th>							
								<th>Tùy chọn</th>
							</tr>
						</thead>
						<tbody>
                                                <%
                                                    for(Category category : listCategory){
                                                %>
							<tr class="gradeA">
								<td><%=category.getCategoryID()%></td>
								<td><%=category.getCategoryName()%></td>							
                                                                <td width="175px"> 
                                                                <center>                                                                    
                                                                <button class="btn btn-primary btn-xs" onclick="location.href='${root}../Admin/update_category.jsp?command=update&category_id=<%=category.getCategoryID()%>'"><i class="glyphicon glyphicon-pencil"></i> Sửa</button>
                                                                <button class="btn btn-danger btn-xs" onclick="location.href='../ManagerCategoryServlet?command=delete&category_id=<%=category.getCategoryID()%>'"><i class="glyphicon glyphicon-remove"></i> Xóa</button></td>
                                                                </center>
							</tr>
                                                        <%}%>
                                                           
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
