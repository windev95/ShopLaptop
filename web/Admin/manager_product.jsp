<%-- 
    Document   : manager_product
    Created on : Dec 30, 2016, 10:18:52 AM
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
        <title>Quản lý sản phẩm</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="${root}/Admin/layout/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- DataTables -->
        <link rel="stylesheet" href="${root}/Admin/layout/plugins/datatables/dataTables.bootstrap.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="${root}/Admin/layout/dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="${root}/Admin/layout/dist/css/skins/_all-skins.min.css">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </script>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <%
            CategoryDAO categorydao = new CategoryDAO();
            ArrayList<Category> listCategory = categorydao.getListCategory();            
        %>
       <div class="wrapper">
            <jsp:include page="./layout/header.jsp"></jsp:include>
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>
                      Dashboard
                      <small>Version 2.0</small>
                    </h1>
                    <ol class="breadcrumb">
                      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
                      <li class="active">Dashboard</li>
                    </ol>
                  </section>
<!--                MAIN------------------------------------------------------------------->
                        <section class="content">
                             <div class="row">
                               <div class="col-xs-12">
                                 <!-- /.box -->

                                 <div class="box">
                                   <div class="box-header">
                                     <h3 class="box-title">Bảng danh mục sản phẩm</h3>                                     
                                     <a class="btn btn-primary mini_btn center-block" href="../Admin/insert_category.jsp">THÊM MỚI</a>
                                   </div>
                                   <!-- /.box-header -->
                                   <div class="box-body">
                                     <table id="example1" class="table table-bordered table-striped">
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
                                        <tr>                                        
                                          <td><%=category.getCategoryID()%></td>
                                          <td><%=category.getCategoryName()%></td>
                                          <td>
                                              <center> 
                                             <button class="btn btn-primary btn-xs" onclick="location.href='${root}../Admin/update_category.jsp?command=update&category_id=<%=category.getCategoryID()%>&category_name=<%=category.getCategoryName()%>&category_metatitle=<%=category.getCategorymt()%>&category_metakeywords=<%=category.getCategorymkw()%>&category_metadescription=<%=category.getCategorymd()%>'"><i class="glyphicon glyphicon-pencil"></i> Sửa</button>
                                             <button class="btn btn-danger btn-xs" onclick="location.href='../ManagerCategoryServlet?command=delete&category_id=<%=category.getCategoryID()%>'"><i class="glyphicon glyphicon-remove"></i> Xóa</button>
                                                </center> 
                                           </td>                                         
                                        </tr>
                                       <% }%>
                                       </tbody>
                                       <tfoot>
                                       <tr>
                                            <th>Mã Danh Mục</th>
                                            <th>Tên Danh Mục</th>							
                                            <th>Tùy chọn</th>
                                       </tr>
                                       </tfoot>
                                     </table>
                                   </div>
                                   <!-- /.box-body -->
                                 </div>
                                 <!-- /.box -->
                               </div>
                               <!-- /.col -->
                             </div>
                             <!-- /.row -->
                           </section>

<!--                /MAIN------------------------------------------------------------------->
            </div>            
            <jsp:include page="./layout/footer.jsp"></jsp:include>
            <jsp:include page="./layout/control-sidebar.jsp"></jsp:include>
            <div class="control-sidebar-bg"></div>
        </div>
            <!-- jQuery 2.2.3 -->
            <script src="${root}/Admin/layout/plugins/jQuery/jquery-2.2.3.min.js"></script>
            <!-- Bootstrap 3.3.6 -->
            <script src="${root}/Admin/layout/bootstrap/js/bootstrap.min.js"></script>
            <!-- DataTables -->
            <script src="${root}/Admin/layout/plugins/datatables/jquery.dataTables.min.js"></script>
            <script src="${root}/Admin/layout/plugins/datatables/dataTables.bootstrap.min.js"></script>
            <!-- SlimScroll -->
            <script src="${root}/Admin/layout/plugins/slimScroll/jquery.slimscroll.min.js"></script>
            <!-- FastClick -->
            <script src="${root}/Admin/layout/plugins/fastclick/fastclick.js"></script>
            <!-- AdminLTE App -->
            <script src="${root}/Admin/layout/dist/js/app.min.js"></script>
            <!-- AdminLTE for demo purposes -->
            <script src="${root}/Admin/layout/dist/js/demo.js"></script>
            
            <script>
            $(document).ready(function () {
                $('#example1').DataTable({
                    responsive: true
                });
            });
            </script>
    </body>
</html>
