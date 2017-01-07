<%-- 
    Document   : manager_product
    Created on : Dec 30, 2016, 10:18:52 AM
    Author     : Khang
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@page import="dao.ProducerDAO"%>
<%@page import="model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý sản phẩm</title>
        <link rel="icon" href="./images/favicon.png" type="image/x-icon" />
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="${root}/Admin/layout/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <link rel="stylesheet" href="${root}/Admin/layout/plugins/datatables/dataTables.bootstrap.css">
        <link rel="stylesheet" href="${root}/Admin/layout/dist/css/AdminLTE.min.css">
        <link rel="stylesheet" href="${root}/Admin/layout/dist/css/skins/_all-skins.min.css">
     
    </script>
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <%
            ProductDAO productdao = new ProductDAO();
            ProducerDAO producerdao = new ProducerDAO();
            ArrayList<Product> listProduct = productdao.getListProduct();            
        %>
       <div class="wrapper">
            <jsp:include page="./layout/header.jsp"></jsp:include>
            <div class="content-wrapper">
                <section class="content-header">
                    <a class="btn btn-primary mini_btn center-block" href="../Admin/insert_product.jsp">THÊM MỚI</a>
                  </section>
<!--                MAIN------------------------------------------------------------------->
                        <section class="content">
                             <div class="row">
                               <div class="col-xs-12">
                                 <!-- /.box -->

                                 <div class="box">
                                   <div class="box-header">
                                     <h3 class="box-title">Bảng danh mục sản phẩm</h3>                                     
                                     
                                   </div>
                                   <!-- /.box-header -->
                                   <div class="box-body">
                                     <table id="example1" class="table table-bordered table-striped">
                                       <thead>
                                       <tr>
                                            <th>Mã Danh Mục</th>
                                            <th>Tên Sản Phẩm</th>
                                            <th>Hình ảnh</th>
                                            <th>Màu sắc</th>
                                            <th>Giá</th>
                                            <th>Ngày cập nhật</th>
                                            <th>Nhà sản xuất</th>
                                            <th>Tùy chọn</th>
                                       </tr>
                                       </thead>
                                       <tbody>
                                        <%
                                            for(Product p : listProduct){
                                        %>
                                        <tr>                                        
                                          <td><%=p.getProductID()%></td>
                                          <td><%=p.getProductName()%></td>
                                          <td><div class="col-sm-5 col-md-5 no-padding-l">
                                                            <div class="product-img-parent">
                                                                <a class="product-img"><img src="${root}../images/product/<%=p.getProductImage()%>" width="50" height="50" alt="<%=p.getProductName()%>"></a>
                                                            </div>
                                                        </div></td>
                                          <td><%=p.getProductColor()%></td>
                                          <td><%=p.getProductPrice()%></td>
                                          <td><%=p.getProductUpdate()%></td>
                                          <td><%=producerdao.getProducer(p.getProducerID()).getProducerName()%></td>
                                          <td>
                                              <center> 
                                                  <button class="btn btn-primary btn-xs" onclick="location.href='${root}../Admin/update_product.jsp?product_id=<%=p.getProductID()%>&product_name=<%=p.getProductName()%>&product_color=<%=p.getProductColor()%>&product_content=<%=p.getProductContent()%>&product_cpudetail=<%=p.getProductCpuDetail()%>&product_ramdetail=<%=p.getProductRamDetail()%>&product_storagedetail=<%=p.getProductStorageDetail()%>&product_screen=<%=p.getProductScreen()%>&product_screendetail=<%=p.getProductScreenDetail()%>&product_vga=<%=p.getProductVGA()%>&product_sound=<%=p.getProductSound()%>&product_dvd=<%=p.getProductDVD()%>&product_connect=<%=p.getProductConnect()%>&product_lan=<%=p.getProductLAN()%>&product_wifi=<%=p.getProductWifi()%>&product_wireless=<%=p.getProductWireless()%>&product_cardreader=<%=p.getProductCardReader()%>&product_webcam=<%=p.getProductWebcam()%>&product_pin=<%=p.getProductPin()%>&product_os=<%=p.getProductOS()%>&product_size=<%=p.getProductSize()%>&product_weight=<%=p.getProductWeight()%>&product_material=<%=p.getProductMaterial()%>&product_price=<%=p.getProductPrice()%>&product_sale=<%=p.getProductSale()%>&product_price_real=<%=p.getProductPriceReal()%>&product_inventory=<%=p.getProductInventory()%>'"><i class="glyphicon glyphicon-pencil"></i> Sửa</button>
                                             <button class="btn btn-danger btn-xs" onclick="location.href='../ManagerProductServlet?command=delete&product_id=<%=p.getProductID()%>'"><i class="glyphicon glyphicon-remove"></i> Xóa</button>
                                                </center> 
                                           </td>                                         
                                        </tr>
                                       <% }%>
                                       </tbody>
                                       <tfoot>
                                       <tr>
                                            <th>Mã Danh Mục</th>
                                            <th>Tên Sản Phẩm</th>
                                            <th>Hình ảnh</th>
                                            <th>Màu sắc</th>
                                            <th>Giá</th>
                                            <th>Ngày cập nhật</th>
                                            <th>Nhà sản xuất</th>
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
            <script src="${root}/Admin/layout/plugins/jQuery/jquery-2.2.3.min.js"></script>
            <script src="${root}/Admin/layout/bootstrap/js/bootstrap.min.js"></script>
            <script src="${root}/Admin/layout/plugins/datatables/jquery.dataTables.min.js"></script>
            <script src="${root}/Admin/layout/plugins/datatables/dataTables.bootstrap.min.js"></script>
            <script src="${root}/Admin/layout/plugins/slimScroll/jquery.slimscroll.min.js"></script>
            <script src="${root}/Admin/layout/plugins/fastclick/fastclick.js"></script>
            <script src="${root}/Admin/layout/dist/js/app.min.js"></script>
            <script src="${root}/Admin/layout/dist/js/demo.js"></script>            
            <script>
            $(document).ready(function () {
                $('#example1').DataTable({
                    responsive: true
                });
            });
            </script>
            <script type="text/javascript">
	$(function(){
		$('.sidebar-menu a').filter(function(){return this.href===location.href;}).parent().addClass('active').siblings().removeClass('active');
		$('.sidebar-menu a').click(function(){
			$(this).parent().addClass('active').siblings().removeClass('active');	
		});
	});
	</script>
    </body>
</html>
