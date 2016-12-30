<%-- 
    Document   : index
    Created on : Dec 30, 2016, 8:37:53 AM
    Author     : Khang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
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
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="page-content">
            <div class="row">
                <jsp:include page="menu.jsp"></jsp:include>
                <jsp:include page="content.jsp"></jsp:include>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>  
</html>
