package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Producer; 
public class ProducerDAO {
    //Get danh sách nhà sản xuất
    public ArrayList<Producer> getListProducer() throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT * FROM producer";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Producer> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Producer category = new Producer();      
            category.setProducerID(rs.getInt("producer_id"));       
            category.setProducerName(rs.getString("producer_name"));       
            list.add(category);         
        }         
        return list;    
    }
    //get tên loại sản phẩm them id
    public ArrayList<Producer> getProducerNameID(long categoryID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT producer_name FROM producer WHERE producer_id = '" + categoryID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Producer> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Producer category = new Producer();      
            category.setProducerID(rs.getInt("producer_id")); 
            category.setProducerName(rs.getString("producer_name")); 
            category.setProducerImageBrand(rs.getString("producer_image_brand")); 
            category.setProducerLink(rs.getString("producer_link")); 
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        ProducerDAO dao = new ProducerDAO();      
        for (Producer ds : dao.getListProducer()) 
        {           
            System.out.println(ds.getProducerID() +" - " + ds.getProducerName());         
        }     
    } 
    
}