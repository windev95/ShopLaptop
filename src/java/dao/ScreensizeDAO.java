package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Screensize;
public class ScreensizeDAO {
    //get tên loại sản phẩm them id
    public ArrayList<Screensize> getScreensizeNameID(long categoryID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT category_name FROM category WHERE category_id = '" + categoryID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Screensize> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Screensize category = new Screensize();        
            category.setScreensizeName(rs.getString("category_name"));       
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        ScreensizeDAO dao = new ScreensizeDAO();      
        for (Screensize ds : dao.getScreensizeNameID(3)) 
        {           
            System.out.println(" - " + ds.getScreensizeName());         
        }     
    } 
    
}
