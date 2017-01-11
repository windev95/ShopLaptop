<%-- 
    Document   : insert_category
    Created on : Dec 30, 2016, 5:42:36 PM
    Author     : Khang
--%>
<%@page import="model.Admin"%>
<% 
    Admin admin = (Admin) session.getAttribute("admin");
    String pqAdmin = "";
    if (admin == null) {
        response.sendRedirect("../Admin/login.jsp");
    }else{        
        if(Integer.parseInt(session.getAttribute("pqAdmin").toString()) != 3 && Integer.parseInt(session.getAttribute("pqAdmin").toString()) != 1){
            pqAdmin = "disabled";
        }
    }
%>
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
                                               
                                    <div class="panel-group" id="accordion">                                        
                                    <div class="panel panel-info">
                                      <div class="panel-heading">
                                        <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion" href="#collapse1">
                                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Thông tin cơ bản</a>
                                        </h4>
                                      </div>
                                      <div id="collapse1" class="panel-collapse collapse in">
                                          <div class="panel-body">
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Tên sản phẩm</label>
                                                        <input type="text"  name="product_name" value="<%=product.getProductName()%>" required class="form-control" placeholder="Tên sản phẩm">
                                                      </div> 
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Màu sắc</label>
                                                        <input type="text" value="<%=product.getProductColor()%>"  name="product_color" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Hệ điều hành</label>
                                                        <input type="text" value="<%=product.getProductOS()%>"  name="product_os" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chất liệu</label>
                                                        <input type="text" value="<%=product.getProductMaterial()%>" name="product_material" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Kích thước</label>
                                                        <input type="text" value="<%=product.getProductSize()%>"  name="product_size" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Trọng lượng</label>
                                                        <input type="text" value="<%=product.getProductWeight()%>" name="product_weight" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chọn hình ảnh</label>             
                                                        <input type="file" name="file[]" required class="form-control" required />
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Ẩn sản phẩm</label>
                                                        <select name="product_hide"  class="form-control">
                                                            <%if(product.getProductHide()==0){%>
                                                                <option selected value="0" >Không</option>
                                                                <option value="1" >Có</option> 
                                                            <%}else{%>
                                                                <option value="0" >Không</option>
                                                                <option selected value="1" >Có</option> 
                                                            <% }%>
                                                        </select>
                                                        </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chọn danh mục</label>
                                                        <select selected="<%=product.getCategoryID()%>" name="category_id"  class="form-control">
                                                            <%
                                                                for (Category p : cdao.getListCategory())
                                                                { if(product.getCategoryID() != p.getCategoryID()){
                                                                %>
                                                                <option value="<%=p.getCategoryID()%>" ><%=p.getCategoryName()%></option>
                                                            <% }else{ %>    
                                                                <option selected value="<%=p.getCategoryID()%>" ><%=p.getCategoryName()%></option>
                                                            <% }}%>
                                                        </select>
                                                        </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chọn nhà sản xuất</label>
                                                        <select selected="<%=product.getProducerID()%>" name="producer_id"  class="form-control select2">
                                                            <%
                                                                for (Producer p : producerdao.getListProducer())
                                                                {if(product.getProducerID()!=p.getProducerID()){
                                                                %>
                                                            <option value="<%=p.getProducerID()%>" ><%=p.getProducerName()%></option>
                                                            <% }else{ %>
                                                            <option selected="" value="<%=p.getProducerID()%>" ><%=p.getProducerName()%></option>
                                                            <% }}%>                                                           
                                                        </select>
                                                        </div> 
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-12">
                                                      <div class="box box-info">
                                                        <div class="box-header">
                                                          <h3 class="box-title" data-widget="collapse" data-toggle="tooltip">Giới thiệu sản phẩm</h3>
                                                          <div class="pull-right box-tools">
                                                            <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip">
                                                              <i class="fa fa-minus"></i></button>
                                                            <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip" title="Remove">
                                                              <i class="fa fa-times"></i></button>
                                                          </div>
                                                        </div>
                                                        <div class="box-body pad">
                                                          <form>
                                                                <textarea id="product_content" name="product_content" rows="10" cols="80">
                                                                     <%=product.getProductContent()%>
                                                                </textarea>
                                                          </form>
                                                        </div>
                                                      </div>
<!--                                                  <div class="form-group">
                                                    <label>Giới thiệu</label>
                                                    <input type="text" value="<%=product.getProductContent()%>"  name="product_content" required class="form-control" placeholder="">
                                                  </div>-->
                                                   </div>
                                              </div>
                                              
                                          </div>                                          
                                      </div>
                                    </div>
                                        
                                    <div class="panel panel-info">
                                      <div class="panel-heading">
                                        <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion" href="#collapse2">
                                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Thông tin SEO</a>
                                        </h4>
                                      </div>
                                      <div id="collapse2" class="panel-collapse collapse">
                                          <div class="panel-body">
                                              <div class="row">
                                                <div class="col-md-6">                                                
                                                        <div class="form-group">
                                                          <label>MetaTitle</label>
                                                          <input type="text" value="<%=product.getProductMetaTitle()%>" name="MetaTitle" required class="form-control" placeholder="MetaTitle">
                                                        </div>                                                   
                                                </div>
                                                <div class="col-md-6">                                                 
                                                        <div class="form-group">
                                                          <label>MetaKeywords</label>
                                                          <input type="text"  name="MetaKeywords" value="<%=product.getProductMetaKeywords()%>" required class="form-control" placeholder="MetaKeywords">
                                                        </div>                                                  
                                                </div>
                                              </div>
                                              <div class="row">
                                                  <div class="col-md-12">
                                                      <div class="form-group">
                                                        <label>MetaDescription</label>
                                                        <input type="text"  name="MetaDescription" value="<%=product.getProductMetaDescription()%>" required class="form-control" placeholder="MetaDescription">
                                                      </div>  
                                                  </div>     
                                              </div>
                                          </div>
                                      </div>
                                    </div>
                                        
                                    <div class="panel panel-info">
                                      <div class="panel-heading">
                                        <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion" href="#collapse3">
                                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Gía và số lượng</a>
                                        </h4>
                                      </div>
                                      <div id="collapse3" class="panel-collapse collapse">
                                          <div class="panel-body">
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Giá</label>
                                                        <input type="number" value="<%=product.getProductPrice()%>"  name="product_price" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Giảm giá</label>
                                                        <input type="number" value="<%=product.getProductSale()%>"  name="product_sale" required class="form-control" placeholder="">
                                                      </div> 
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Giá thật</label>
                                                        <input type="number" value="<%=product.getProductPriceReal()%>"  name="product_price_real" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Tồn kho</label>
                                                        <input type="number" value="<%=product.getProductInventory()%>" name="product_inventory" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chọn mức giá</label>
                                                        <select name="pricelevel_id" class="form-control">
                                                             <%
                                                                for (Pricelevel p : pldap.getListPricelevel())
                                                                {if(product.getPricelevelID()!=p.getPricelevelID()){
                                                                %>
                                                            <option value="<%=p.getPricelevelID()%>" ><%=p.getPricelevelName()%></option>
                                                            <% }else{ %> 
                                                                <option selected value="<%=p.getPricelevelID()%>" ><%=p.getPricelevelName()%></option>
                                                            <% }}%>
                                                        </select>
                                                        </div>                                                      
                                                  </div>
                                                  
                                              </div>
                                              
                                          </div>
                                      </div>
                                    </div>
                                        
                                    <div class="panel panel-info">
                                      <div class="panel-heading">
                                        <h4 class="panel-title" data-toggle="collapse" data-parent="#accordion" href="#collapse4">
                                          <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Cấu hình</a>
                                        </h4>
                                      </div>
                                      <div id="collapse4" class="panel-collapse collapse">
                                          <div class="panel-body">
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chọn CPU</label>
                                                        <select name="cpu_id" class="form-control">
                                                             <%
                                                                for (Cpu p : cpudao.getListCpu())
                                                                {if(product.getCpuID()!=p.getCpuID()){
                                                                %>
                                                            <option value="<%=p.getCpuID()%>" ><%=p.getCpuName()%></option>
                                                            <% }else{ %>   
                                                            <option selected value="<%=p.getCpuID()%>" ><%=p.getCpuName()%></option>
                                                            <% }}%>
                                                        </select>
                                                        </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>CPU</label>
                                                        <input type="text" value="<%=product.getProductCpuDetail()%>"  name="product_cpudetail" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chọn Ram</label>
                                                        <select name="ram_id" class="form-control">
                                                             <%
                                                                for (Ram p : rdao.getListRam())
                                                                {if(product.getRamID()!=p.getRamID()){
                                                                %>
                                                            <option  value="<%=p.getRamID()%>" ><%=p.getRamName()%></option>
                                                            <% }else{ %>     
                                                            <option selected value="<%=p.getRamID()%>" ><%=p.getRamName()%></option>
                                                            <% }}%>
                                                        </select>
                                                        </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Ram</label>
                                                        <input type="text" value="<%=product.getProductRamDetail()%>" name="product_ramdetail" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chọn ổ cứng</label>
                                                        <select name="storage_id" class="form-control">
                                                             <%
                                                                for (Storage p : srdao.getListStorage())
                                                                {if(product.getStorageID()!=p.getStorageID()){
                                                                %>
                                                            <option value="<%=p.getStorageID()%>" ><%=p.getStorageName()%></option>
                                                            <% }else{ %> 
                                                            <option selected value="<%=p.getStorageID()%>" ><%=p.getStorageName()%></option>
                                                            <% }}%>
                                                        </select>
                                                        </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Ổ cứng</label>
                                                        <input type="text" value="<%=product.getProductStorageDetail()%>" name="product_storagedetail" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Chọn kích thước màn hình</label>
                                                        <select name="screensize_id" class="form-control">
                                                             <%
                                                                for (Screensize p : srsdao.getListScreensize())
                                                                {if(product.getScreensizeID()!=p.getScreensizeID()){
                                                                %>
                                                            <option value="<%=p.getScreensizeID()%>" ><%=p.getScreensizeName()%></option>
                                                            <% }else{ %>    
                                                                <option selected value="<%=p.getScreensizeID()%>" ><%=p.getScreensizeName()%></option>
                                                            <% }}%>
                                                        </select>
                                                        </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Màn hình</label>
                                                        <input type="text" value="<%=product.getProductScreenDetail()%>" name="product_screendetail" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>VGA</label>
                                                        <input type="text" value="<%=product.getProductVGA()%>" name="product_vga" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Âm thanh</label>
                                                        <input type="text" value="<%=product.getProductSound()%>" name="product_sound" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Đĩa quang</label>
                                                        <input type="text" value="<%=product.getProductDVD()%>" name="product_dvd" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Cổng giao tiếp</label>
                                                        <input type="text" value="<%=product.getProductConnect()%>" name="product_connect" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                                        
                                            <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Giao tiếp mạng</label>
                                                        <input type="text" value="<%=product.getProductLAN()%>" name="product_lan"  required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Wifi</label>
                                                        <input type="text" value="<%=product.getProductWifi()%>" name="product_wifi" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                              <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Không dây khác</label>
                                                        <input type="text" value="<%=product.getProductWireless()%>" name="product_wireless" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Card reader</label>
                                                        <input type="text" value="<%=product.getProductCardReader()%>" name="product_cardreader" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                              
                                               <div class="row">
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Webcam</label>
                                                        <input type="text" value="<%=product.getProductWebcam()%>" name="product_webcam" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                                  <div class="col-md-6">
                                                      <div class="form-group">
                                                        <label>Pin</label>
                                                        <input type="text" value="<%=product.getProductPin()%>" name="product_pin" required class="form-control" placeholder="">
                                                      </div>
                                                  </div>
                                              </div>
                                          </div>
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
        <script src="https://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
        <script>
            $(function () {
                CKEDITOR.replace('product_content');
              $(".textarea").wysihtml5();
            });
        </script>
    </body>
</html>
