package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Storage;
public class StorageDAO {
    //get tên loại sản phẩm them id
    public ArrayList<Storage> getStorageNameID(long categoryID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT category_name FROM category WHERE category_id = '" + categoryID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Storage> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Storage category = new Storage();        
            category.setStorageName(rs.getString("category_name"));       
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        StorageDAO dao = new StorageDAO();      
        for (Storage ds : dao.getStorageNameID(3)) 
        {           
            System.out.println(" - " + ds.getStorageName());         
        }     
    } 
    
}
