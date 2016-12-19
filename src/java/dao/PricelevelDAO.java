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
    public ArrayList<Pricelevel> getPricelevelNameID(long pricelevelID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT pricelevel_name FROM pricelevel WHERE pricelevel_id = '" + pricelevelID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Pricelevel> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Pricelevel pricelevel = new Pricelevel();        
            pricelevel.setPricelevelName(rs.getString("pricelevel_name"));       
            list.add(pricelevel);         
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
