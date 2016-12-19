package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Ram;
public class RamDAO {
    //get tên loại sản phẩm them id
    public ArrayList<Ram> getRamNameID(long categoryID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT category_name FROM category WHERE category_id = '" + categoryID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Ram> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Ram category = new Ram();        
            category.setRamName(rs.getString("category_name"));       
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        RamDAO dao = new RamDAO();      
        for (Ram ds : dao.getRamNameID(3)) 
        {           
            System.out.println(" - " + ds.getRamName());         
        }     
    } 
    
}
