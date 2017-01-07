<%-- 
    Document   : insert_category
    Created on : Dec 30, 2016, 5:42:36 PM
    Author     : Khang
--%>
<%@page import="dao.CategoryDAO"%>
<%@page import="model.Category"%>
<%@page import="dao.PricelevelDAO"%>
<%@page import="model.Pricelevel"%>
<%@page import="dao.ScreensizeDAO"%>
<%@page import="model.Screensize"%>
<%@page import="dao.RamDAO"%>
<%@page import="model.Ram"%>
<%@page import="dao.StorageDAO"%>
<%@page import="model.Storage"%>
<%@page import="dao.CpuDAO"%>
<%@page import="model.Cpu"%>
<%@page import="dao.ProducerDAO"%>
<%@page import="model.Producer"%>
<%@page import="model.Product" %>
<%@page import="dao.ProductDAO" %>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm mới sản phẩm</title>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
            <link rel="stylesheet" href="${root}/Admin/layout/bootstrap/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
            <link rel="stylesheet" href="${root}/Admin/layout/plugins/daterangepicker/daterangepicker.css">
            <link rel="stylesheet" href="${root}/Admin/layout/plugins/datepicker/datepicker3.css">
            <link rel="stylesheet" href="${root}/Admin/layout/plugins/iCheck/all.css">
            <link rel="stylesheet" href="${root}/Admin/layout/plugins/colorpicker/bootstrap-colorpicker.min.css">
            <link rel="stylesheet" href="${root}/Admin/layout/plugins/timepicker/bootstrap-timepicker.min.css">
            <link rel="stylesheet" href="${root}/Admin/layout/plugins/select2/select2.min.css">
            <link rel="stylesheet" href="${root}/Admin/layout/dist/css/AdminLTE.min.css">
            <link rel="stylesheet" href="${root}/Admin/layout/dist/css/skins/_all-skins.min.css">
    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <%
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
            ProducerDAO producerdao = new ProducerDAO();
            ProductDAO productDAO = new ProductDAO();
            CategoryDAO cdao = new CategoryDAO();
            PricelevelDAO pldap = new PricelevelDAO();
            RamDAO rdao = new RamDAO();
            StorageDAO srdao = new StorageDAO();
            CpuDAO cpudao = new CpuDAO();
            ScreensizeDAO srsdao = new ScreensizeDAO();
            Product product = new Product();
            String productID = "";
            if(request.getParameter("product_id") != null)
                {
                    productID = request.getParameter("product_id");
                    product = productDAO.getProduct(Long.parseLong(productID));
                }
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
                            <!-- Horizontal Form -->
                            <div class="box box-primary">
                              <div class="box-header with-border">
                                <h3 class="box-title">Thông tin sản phẩm</h3>
                              </div>
                              <!-- /.box-header -->
                              <!-- form start -->
                              <form action="../UpdateProductServlet" method="POST" enctype="multipart/form-data">
                                <div class="box-body">
                                    <input type="hidden" name="product_id" value="<%=product.getProductID()%>">
                                    <div class="row">
                                        <div class="col-md-6">                                  
                                            <div class="form-group">
                                              <label>Tên sản phẩm</label>
                                              <input type="text"  name="product_name" required class="form-control" value="<%=product.getProductName()%>">
                                            </div>                                                                                                                                                   
                                            <div class="form-group">
                                                <label>Chọn hình ảnh</label>             
                                                <input type="file" name="file[]" required class="form-control" required />
                                              </div>
                                            <div class="form-group">
                                              <label>Màu sắc</label>
                                              <input type="text"  name="product_color" required class="form-control" value="<%=product.getProductColor()%>" >
                                            </div>
                                            <div class="form-group">
                                              <label>Giới thiệu</label>
                                              <input type="text"  name="product_content" required class="form-control" value="<%=product.getProductContent()%>">
                                            </div>
                                            <div class="form-group">
                                              <label>CPU</label>
                                              <input type="text"  name="product_cpudetail" required class="form-control" value="<%=product.getProductCpuDetail()%>">
                                            </div>
                                            <div class="form-group">
                                              <label>Ram</label>
                                              <input type="text"  name="product_ramdetail" required class="form-control" value="<%=product.getProductRamDetail()%>">
                                            </div>
                                            <div class="form-group">
                                              <label>Ổ cứng</label>
                                              <input type="text"  name="product_storagedetail" value="<%=product.getProductStorageDetail()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Màn hình</label>
                                              <input type="text"  name="product_screen" value="<%=product.getProductScreen()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Màn hình</label>
                                              <input type="text"  name="product_screendetail" value="<%=product.getProductScreenDetail()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>VGA</label>
                                              <input type="text"  name="product_vga" value="<%=product.getProductVGA()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Âm thanh</label>
                                              <input type="text"  name="product_sound" value="<%=product.getProductSound()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Đĩa quang</label>
                                              <input type="text"  name="product_dvd" value="<%=product.getProductDVD()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Cổng giao tiếp</label>
                                              <input type="text"  name="product_connect" value="<%=product.getProductConnect()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Giao tiếp mạng</label>
                                              <input type="text"  name="product_lan" value="<%=product.getProductLAN()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Wifi</label>
                                              <input type="text"  name="product_wifi" value="<%=product.getProductWifi()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Không dây khác</label>
                                              <input type="text"  name="product_wireless" value="<%=product.getProductWireless()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Card reader</label>
                                              <input type="text"  name="product_cardreader" value="<%=product.getProductCardReader()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Webcam</label>
                                              <input type="text"  name="product_webcam" value="<%=product.getProductWebcam()%>" required class="form-control" placeholder="">
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                            <div class="form-group">
                                              <label>Bin</label>
                                              <input type="text"  name="product_pin" value="<%=product.getProductPin()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Hệ điều hành</label>
                                              <input type="text"  name="product_os" value="<%=product.getProductOS()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Kích thước</label>
                                              <input type="text"  name="product_size" value="<%=product.getProductSize()%>" required class="form-control" placeholder="">
                                            </div>
                                            
          
                                            <div class="form-group">
                                              <label>Trọng lượng</label>
                                              <input type="text"  name="product_weight" value="<%=product.getProductWeight()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Chất liệu</label>
                                              <input type="text"  name="product_material" value="<%=product.getProductMaterial()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Giá</label>
                                              <input type="number"  name="product_price" value="<%=product.getProductPrice()%>" required class="form-control" placeholder="">
                                            </div>                                          
                                            <div class="form-group">
                                              <label>Giảm giá</label>
                                              <input type="number"  name="product_sale" value="<%=product.getProductSale()%>" required class="form-control" placeholder="">
                                            </div>  
                                            <div class="form-group">
                                              <label>Giá thật</label>
                                              <input type="number"  name="product_price_real" value="<%=product.getProductPriceReal()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Tồn kho</label>
                                              <input type="number"  name="product_inventory" value="<%=product.getProductInventory()%>" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                            <label>Ẩn sản phẩm</label>
                                            <select name="product_hide"  class="form-control">
                                                <option value="0" >Không</option>
                                                <option value="1" >Có</option> 
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn CPU</label>
                                            <select name="cpu_id" class="form-control">
                                                 <%
                                                    for (Cpu p : cpudao.getListCpu())
                                                    {
                                                    %>
                                                <option value="<%=p.getCpuID()%>" ><%=p.getCpuName()%></option>
                                                <% } %>                                          
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn Ram</label>
                                            <select name="ram_id" class="form-control">
                                                 <%
                                                    for (Ram p : rdao.getListRam())
                                                    {
                                                    %>
                                                <option value="<%=p.getRamID()%>" ><%=p.getRamName()%></option>
                                                <% } %>                                           
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn ổ cứng</label>
                                            <select name="storage_id" class="form-control">
                                                 <%
                                                    for (Storage p : srdao.getListStorage())
                                                    {
                                                    %>
                                                <option value="<%=p.getStorageID()%>" ><%=p.getStorageName()%></option>
                                                <% } %>                                           
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn mức giá</label>
                                            <select name="pricelevel_id" class="form-control">
                                                 <%
                                                    for (Pricelevel p : pldap.getListPricelevel())
                                                    {
                                                    %>
                                                <option value="<%=p.getPricelevelID()%>" ><%=p.getPricelevelName()%></option>
                                                <% } %>                                        
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn kích thước màn hình</label>
                                            <select name="screensize_id" class="form-control">
                                                 <%
                                                    for (Screensize p : srsdao.getListScreensize())
                                                    {
                                                    %>
                                                <option value="<%=p.getScreensizeID()%>" ><%=p.getScreensizeName()%></option>
                                                <% } %>                                           
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn danh mục</label>
                                            <select name="category_id"  class="form-control">
                                                <%
                                                    for (Category p : cdao.getListCategory())
                                                    {
                                                    %>
                                                <option value="<%=p.getCategoryID()%>" ><%=p.getCategoryName()%></option>
                                                <% } %>                                      
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn nhà sản xuất</label>
                                            <select name="producer_id"  class="form-control select2">
                                                <%
                                                    for (Producer p : producerdao.getListProducer())
                                                    {
                                                    %>
                                                <option value="<%=p.getProducerID()%>" ><%=p.getProducerName()%></option>
                                                <% } %>
                                            </select>
                                            </div>                                                                                                                                  
                                        </div>                                       
                                    </div>
                                    <!-- /.box-body -->
                                    <div class="box-footer">
                                      <button type="submit" class="btn btn-default">Hủy</button>
                                      <button type="submit" class="btn btn-primary pull-right">Cập nhật</button>
                                    </div>
                                    <!-- /.box-footer -->
                                  </form>
                                </div>
                              </div>                                             
                            </div>
                        </section>
<!--                /MAIN------------------------------------------------------------------->
            </div>            
            <jsp:include page="./layout/footer.jsp"></jsp:include>
            <jsp:include page="./layout/control-sidebar.jsp"></jsp:include>
            <div class="control-sidebar-bg"></div>
            </div>
            <script src="${root}/Admin/layout/plugins/jQuery/jquery-2.2.3.min.js"></script>
            <script src="${root}/Admin/layout/bootstrap/js/bootstrap.min.js"></script>
            <script src="${root}/Admin/layout/plugins/select2/select2.full.min.js"></script>
            <script src="${root}/Admin/layout/plugins/input-mask/jquery.inputmask.js"></script>
            <script src="${root}/Admin/layout/plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
            <script src="${root}/Admin/layout/plugins/input-mask/jquery.inputmask.extensions.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
            <script src="${root}/Admin/layout/plugins/daterangepicker/daterangepicker.js"></script>
            <script src="${root}/Admin/layout/plugins/datepicker/bootstrap-datepicker.js"></script>
            <script src="${root}/Admin/layout/plugins/colorpicker/bootstrap-colorpicker.min.js"></script>
            <script src="${root}/Admin/layout/plugins/timepicker/bootstrap-timepicker.min.js"></script>
            <script src="${root}/Admin/layout/plugins/slimScroll/jquery.slimscroll.min.js"></script>
            <script src="${root}/Admin/layout/plugins/iCheck/icheck.min.js"></script>
            <script src="${root}/Admin/layout/plugins/fastclick/fastclick.js"></script>
            <script src="${root}/Admin/layout/dist/js/app.min.js"></script>
            <script src="${root}/Admin/layout/dist/js/demo.js"></script>
        <script>
          $(function () {
            //Initialize Select2 Elements
            $(".select2").select2();

            //Datemask dd/mm/yyyy
            $("#datemask").inputmask("dd/mm/yyyy", {"placeholder": "dd/mm/yyyy"});
            //Datemask2 mm/dd/yyyy
            $("#datemask2").inputmask("mm/dd/yyyy", {"placeholder": "mm/dd/yyyy"});
            //Money Euro
            $("[data-mask]").inputmask();

            //Date range picker
            $('#reservation').daterangepicker();
            //Date range picker with time picker
            $('#reservationtime').daterangepicker({timePicker: true, timePickerIncrement: 30, format: 'MM/DD/YYYY h:mm A'});
            //Date range as a button
            $('#daterange-btn').daterangepicker(
                {
                  ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                  },
                  startDate: moment().subtract(29, 'days'),
                  endDate: moment()
                },
                function (start, end) {
                  $('#daterange-btn span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
                }
            );

            //Date picker
            $('#datepicker').datepicker({
              autoclose: true
            });

            //iCheck for checkbox and radio inputs
            $('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
              checkboxClass: 'icheckbox_minimal-blue',
              radioClass: 'iradio_minimal-blue'
            });
            //Red color scheme for iCheck
            $('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
              checkboxClass: 'icheckbox_minimal-red',
              radioClass: 'iradio_minimal-red'
            });
            //Flat red color scheme for iCheck
            $('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
              checkboxClass: 'icheckbox_flat-green',
              radioClass: 'iradio_flat-green'
            });

            //Colorpicker
            $(".my-colorpicker1").colorpicker();
            //color picker with addon
            $(".my-colorpicker2").colorpicker();

            //Timepicker
            $(".timepicker").timepicker({
              showInputs: false
            });
          });
        </script>         
    </body>
</html>
