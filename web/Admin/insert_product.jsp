<%-- 
    Document   : insert_category
    Created on : Dec 30, 2016, 5:42:36 PM
    Author     : Khang
--%>

<%@page import="model.Producer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProducerDAO"%>
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
                              <form action="../ManagerProductServlet" method="POST">
                                <div class="box-body">
                                    <input type="hidden" name="command" value="insert">
                                    <div class="row">
                                        <div class="col-md-6">                                  
                                            <div class="form-group">
                                              <label>Tên sản phẩm</label>
                                              <input type="text"  name="product_name" required class="form-control" placeholder="">
                                            </div>                                                                                                        
                                            <div class="form-group">
                                              <label>Hình ảnh</label>
                                              <input type="text"  name="product_image" class="form-control" placeholder="">
                                            </div>  
                                            <div class="form-group">
                                              <label>Màu sắc</label>
                                              <input type="text"  name="product_color" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>CPU</label>
                                              <input type="text"  name="product_cpudetail" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Ram</label>
                                              <input type="text"  name="product_ramdetail" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Ổ cứng</label>
                                              <input type="text"  name="product_storagedetail" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Màn hình</label>
                                              <input type="text"  name="product_screen" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>VGA</label>
                                              <input type="text"  name="product_vga" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Âm thanh</label>
                                              <input type="text"  name="product_sound" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Đĩa quang</label>
                                              <input type="text"  name="product_dvd" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Cổng giao tiếp</label>
                                              <input type="text"  name="product_connect" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Giao tiếp mạng</label>
                                              <input type="text"  name="product_lan" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Wifi</label>
                                              <input type="text"  name="product_wifi" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Không dây khác</label>
                                              <input type="text"  name="product_wireless" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Card reader</label>
                                              <input type="text"  name="product_cardreader" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Webcam</label>
                                              <input type="text"  name="product_webcam" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Bin</label>
                                              <input type="text"  name="product_pin" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Hệ điều hành</label>
                                              <input type="text"  name="product_os" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Kích thước</label>
                                              <input type="text"  name="product_size" class="form-control" placeholder="">
                                            </div>
                                            </div>
                                            <div class="col-md-6">
                                            <div class="form-group">
                                              <label>Trọng lượng</label>
                                              <input type="text"  name="product_weight" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Chất liệu</label>
                                              <input type="text"  name="product_material" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Giá</label>
                                              <input type="number"  name="product_price" required class="form-control" placeholder="">
                                            </div>                                          
                                            <div class="form-group">
                                              <label>Giảm giá</label>
                                              <input type="number"  name="product_sale" required class="form-control" placeholder="">
                                            </div>  
                                            <div class="form-group">
                                              <label>Giá thật</label>
                                              <input type="number"  name="product_price_real" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Số lượng</label>
                                              <input type="number"  name="product_buys" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Tồn kho</label>
                                              <input type="number"  name="product_inventory" required class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn CPU</label>
                                            <select name="cpu_id" class="form-control">
                                                <option>1</option>                                        
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn Ram</label>
                                            <select name="ram_id" class="form-control">
                                                <option>1</option>                                        
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn ổ cứng</label>
                                            <select name="storage_id" class="form-control">
                                                <option >1</option>                                        
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn mức giá</label>
                                            <select name="pricelevel_id" class="form-control">
                                                <option>1</option>                                      
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn kích thước màn hình</label>
                                            <select name="screensize_id" class="form-control">
                                                <option>1</option>                                        
                                            </select>
                                            </div>
                                            <div class="form-group">
                                            <label>Chọn danh mục</label>
                                            <select name="category_id"  class="form-control">
                                                <option>1</option>                                      
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
                                            <div class="form-group">
                                              <label>product_metatitle</label>
                                              <input type="text"  name="product_metatitle" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>product_metakeywords</label>
                                              <input type="text"  name="product_metakeywords" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>product_metadescription</label>
                                              <input type="text"  name="product_metadescription" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                              <label>Giới thiệu</label>
                                              <input type="text"  name="product_content" class="form-control" placeholder="">
                                            </div>
                                            <div class="form-group">
                                            <label>
                                                Ẩn sản phẩm
                                                <input type="checkbox" class="minimal">
                                            </label>
                                            </div>
                                        </div>                                       
                                    </div>
                                    <!-- /.box-body -->
                                    <div class="box-footer">
                                      <button type="submit" class="btn btn-default">Hủy</button>
                                      <button type="submit" class="btn btn-primary pull-right">Thêm</button>
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
