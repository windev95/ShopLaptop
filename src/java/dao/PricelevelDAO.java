package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Pricelevel;
public class PricelevelDAO {
    //get tên loại sản phẩm them id
    public ArrayList<Pricelevel> getPricelevelNameID(long categoryID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT category_name FROM category WHERE category_id = '" + categoryID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Pricelevel> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Pricelevel category = new Pricelevel();        
            category.setPricelevelName(rs.getString("category_name"));       
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        PricelevelDAO dao = new PricelevelDAO();      
        for (Pricelevel ds : dao.getPricelevelNameID(3)) 
        {           
            System.out.println(" - " + ds.getPricelevelName());         
        }     
    } 
    
}
