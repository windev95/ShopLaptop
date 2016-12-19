package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Image;
public class ImageDAO {
    //get tên loại sản phẩm them id
    public ArrayList<Image> getImageNameID(long categoryID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT category_name FROM category WHERE category_id = '" + categoryID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Image> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Image category = new Image();        
            category.setImageImage(rs.getString("category_name"));       
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        ImageDAO dao = new ImageDAO();      
        for (Image ds : dao.getImageNameID(3)) 
        {           
            System.out.println(" - " + ds.getImageImage());         
        }     
    } 
    
}
