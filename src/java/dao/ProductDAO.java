package dao; 
import connect.DBConnect; 
import java.sql.Connection;
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.sql.Timestamp;
import java.text.DecimalFormat;
import java.util.ArrayList; 
import model.Product; 
public class ProductDAO 
{     
    // get danh sách sản phẩm dựa vào mã danh mục    
    public ArrayList<Product> getListProductByCategory(long category_id)  throws SQLException {     
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product WHERE category_id = '" + category_id + "'";      
        PreparedStatement ps = connection.prepareCall(sql);       
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id"));     
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));   
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    }        
    // get danh sách tất cả sản phẩm
    public ArrayList<Product> getListAllProduct()  throws SQLException {     
        Connection connection = DBConnect.getConnecttion();      
        String sql = "SELECT * FROM product";      
        PreparedStatement ps = connection.prepareCall(sql);       
        ResultSet rs = ps.executeQuery();       
        ArrayList<Product> list = new ArrayList<>();       
        while (rs.next()) { 
            Product product = new Product();       
            product.setProductID(rs.getLong("product_id")); 
            product.setProductName(rs.getString("product_name"));    
            product.setProductImage(rs.getString("product_image")); 
            product.setProductPrice(rs.getInt("product_price"));   
            product.setProductContent(rs.getString("product_content"));      
            list.add(product);         
        }         
        return list;     
    }  
    public Product getProduct(long productID) throws SQLException 
    {
        Connection connection = DBConnect.getConnecttion();
        String sql = "SELECT * FROM product WHERE product_id = '" + productID + "'";
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
    public static void main(String[] args) throws SQLException {
        ProductDAO dao = new ProductDAO();     
        System.out.println(dao.getProduct(3).getProductPrice());
    } 
} 