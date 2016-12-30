package dao; 
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Category; 
public class CategoryDAO 
{     
    // get danh sách thể loại     
    public ArrayList<Category> getListCategory() throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT * FROM category";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Category> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Category category = new Category();      
            category.setCategoryID(rs.getInt("category_id"));       
            category.setCategoryName(rs.getString("category_name"));       
            list.add(category);         
        }         
        return list;    
    }
    //get tên loại sản phẩm them id
    public ArrayList<Category> getCategoryNameID(long categoryID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT category_name FROM category WHERE category_id = '" + categoryID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Category> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Category category = new Category();        
            category.setCategoryName(rs.getString("category_name"));       
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        CategoryDAO dao = new CategoryDAO();      
        for (Category ds : dao.getCategoryNameID(3)) 
        {           
            System.out.println(" - " + ds.getCategoryName());         
        }     
    } 
} 