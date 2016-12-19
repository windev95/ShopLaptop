package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Cpu;
public class CpuDAO {
    //get tên loại sản phẩm them id
    public ArrayList<Cpu> getCpuNameID(long categoryID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT category_name FROM category WHERE category_id = '" + categoryID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Cpu> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Cpu category = new Cpu();        
            category.setCpuName(rs.getString("category_name"));       
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        CpuDAO dao = new CpuDAO();      
        for (Cpu ds : dao.getCpuNameID(3)) 
        {           
            System.out.println(" - " + ds.getCpuName());         
        }     
    } 
    
}
