package dao; 
import connect.DBConnect; 
import java.sql.Connection;
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
//import java.sql.Timestamp;
//import java.text.DecimalFormat;
import java.util.ArrayList; 
import model.Product; 
public class ProductDAO 
{     
    // get danh sách sản phẩm dựa vào mã danh mục    
    public ArrayList<Product> getListProductByCategory(long category_id)  throws SQLException {     
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product WHERE `product_hide` = 0 and category_id = '" + category_id + "'";      
        PreparedStatement ps = connection.prepareCall(sql);       
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id"));     
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price")); 
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real"));
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    }    
    // get danh sách sản phẩm dựa vào tìm kiếm nâng cao
    public ArrayList<Product> getListProductByAdvanceSearch(long producerID,long pricelevelID, long screensizeID, long cpuID, long ramID, long storageID)  throws SQLException {     
        String producer, pricelevel, screensize, cpu, ram, storage;
        if(producerID > 0)
        {
            producer = "`producer_id` = " + producerID;
            
        }else
        {
            producer = "1";
        }
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product WHERE `product_hide` = 0 and ? and ? and ? and ? and ? and ?";      
        PreparedStatement ps = connection.prepareCall(sql);  
            ps.setString(1, producer);
            ps.setLong(2, pricelevelID);
            ps.setLong(3, screensizeID);
            ps.setLong(4, cpuID);
            ps.setLong(5, ramID);
            ps.setLong(6, storageID);
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id"));     
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price")); 
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real"));
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    }
    // get danh sách tất cả sản phẩm
    public ArrayList<Product> getListAllProduct()  throws SQLException {     
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product WHERE `product_hide` = 0";      
        PreparedStatement ps = connection.prepareCall(sql);       
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id")); 
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));  
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real")); 
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    }  
    // get danh sách 6 sản phẩm nổi bật
    public ArrayList<Product> getListProductNoibat()  throws SQLException {     
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product WHERE `product_hide` = 0 ORDER BY `product_buys` DESC LIMIT 6";      
        PreparedStatement ps = connection.prepareCall(sql);       
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id")); 
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));   
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real"));
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    }  
    // get danh sách 6 sản phẩm mới
    public ArrayList<Product> getListProductNew()  throws SQLException {     
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product WHERE `product_hide` = 0 ORDER BY `product_update` DESC LIMIT 6";      
        PreparedStatement ps = connection.prepareCall(sql);       
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id")); 
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));   
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real"));
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    } 
    // get danh sách 6 sản phẩm giá tốt
    public ArrayList<Product> getListProductPrice()  throws SQLException {     
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product WHERE `product_hide` = 0 ORDER BY `product_price_real` ASC LIMIT 6";      
        PreparedStatement ps = connection.prepareCall(sql);       
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id")); 
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));   
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real"));
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    } 
    // get danh sách 6 sản phẩm theo loại
    public ArrayList<Product> getListProductBuysByCategory(long category_id)  throws SQLException {     
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product WHERE `product_hide` = 0 and category_id = '" + category_id + "' ORDER BY `product_buys` DESC LIMIT 6";      
        PreparedStatement ps = connection.prepareCall(sql);       
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id")); 
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));   
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real"));
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    }
    public Product getProduct(long productID) throws SQLException 
    {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE `product_hide` = 0 and product_id = '" + productID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        Product product = new Product();
        while (rs.next()) 
        {
            product.setProductID(rs.getLong("product_id"));            
            product.setProductName(rs.getString("product_name"));
            product.setProductImage(rs.getString("product_image"));
            product.setProductColor(rs.getString("product_color"));
            product.setProductContent(rs.getString("product_content"));
            product.setProductMetaTitle(rs.getString("product_metatitle"));
            product.setProductMetaKeywords(rs.getString("product_metakeywords"));
            product.setProductMetaDescription(rs.getString("product_metadescription"));
            product.setProductCpuDetail(rs.getString("product_cpudetail")); 
            product.setProductRamDetail(rs.getString("product_ramdetail")); 
            product.setProductStorageDetail(rs.getString("product_storagedetail")); 
            product.setProductScreen(rs.getString("product_screen")); 
            product.setProductScreenDetail(rs.getString("product_screendetail")); 
            product.setProductVGA(rs.getString("product_vga")); 
            product.setProductSound(rs.getString("product_sound")); 
            product.setProductDVD(rs.getString("product_dvd")); 
            product.setProductConnect(rs.getString("product_connect")); 
            product.setProductLAN(rs.getString("product_lan")); 
            product.setProductWifi(rs.getString("product_wifi")); 
            product.setProductWireless(rs.getString("product_wireless")); 
            product.setProductCardReader(rs.getString("product_cardreader")); 
            product.setProductWebcam(rs.getString("product_webcam")); 
            product.setProductPin(rs.getString("product_pin")); 
            product.setProductOS(rs.getString("product_os")); 
            product.setProductSize(rs.getString("product_size")); 
            product.setProductWeight(rs.getString("product_weight")); 
            product.setProductMaterial(rs.getString("product_material")); 
            product.setProductPrice(rs.getInt("product_price")); 
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real")); 
            product.setProductUpdate(rs.getTimestamp("product_update")); 
            product.setProductBuys(rs.getInt("product_buys")); 
            product.setProductInventory(rs.getInt("product_inventory")); 
            product.setProductHide(rs.getBoolean("product_hide"));           
            product.setProductPrice(rs.getInt("product_price"));
            product.setCpuID(rs.getLong("cpu_id"));
            product.setRamID(rs.getLong("ram_id"));
            product.setStorageID(rs.getLong("storage_id"));
            product.setPricelevelID(rs.getLong("pricelevel_id"));
            product.setScreensizeID(rs.getLong("screensize_id"));
            product.setCategoryID(rs.getLong("category_id"));
            product.setProducerID(rs.getLong("producer_id"));
        }
        return product;
    }
    public ArrayList<Product> getListProductByNav(long categoryID, int firstResult,int maxResult) throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql="SELECT * FROM product WHERE category_id = '"+categoryID+"' limit ?,?";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id")); 
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));   
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real"));
            product.setProductContent(rs.getString("product_content")); 
        list.add(product);
    }
    return list;
    }
    // Tính tổng sản phẩm
    public int countProductByCategory(long categoryID) throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT count(product_id) FROM product WHERE category_id = '" + categoryID + "'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;
    }
    public ArrayList<Product> getallListProductByNav(int firstResult,int maxResult) throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql="SELECT * FROM product limit ?,?";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setInt(1, firstResult);
        ps.setInt(2, maxResult);
        ResultSet rs = ps.executeQuery();
        ArrayList<Product> list = new ArrayList<>();
        while (rs.next()) {
            Product product = new Product();
            product.setProductID(rs.getLong("product_id")); 
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));   
            product.setProductSale(rs.getInt("product_sale")); 
            product.setProductPriceReal(rs.getInt("product_price_real"));
            product.setProductContent(rs.getString("product_content")); 
        list.add(product);
    }
    return list;
    }
    // Tính tổng sản phẩm
    public int countProduct() throws SQLException{
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT count(product_id) FROM product";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        int count = 0;
        while (rs.next()) {
            count = rs.getInt(1);
        }
        return count;
    }
    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();   
        for (Product ds : dao.getallListProductByNav(7,2)) 
        {           
            //System.out.println(ds.getProductID() + " - " + ds.getProductName());
            System.out.println(ds.getProductID() + " - " +ds.getProductName());

        }
    } 
} 