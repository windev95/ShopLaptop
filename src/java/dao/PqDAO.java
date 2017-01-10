package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Pq; 
public class PqDAO {
    //kiểm tra, trả về tên khách hàng tường ứng với email truyền vào
    public ArrayList<Pq> getPq(String pqID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT * FROM admin WHERE admin_email = '" + pqID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Pq> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Pq pq = new Pq();      
            pq.setPqID(rs.getLong("pq_id"));   
            pq.setPqAll(rs.getBoolean("pq_all"));
            pq.setPqBill(rs.getBoolean("pq_bill"));
            pq.setPqFeedback(rs.getBoolean("pq_feedback"));
            pq.setPqEdit(rs.getBoolean("pq_edit"));
            pq.setPqDelete(rs.getBoolean("pq_delete"));
            list.add(pq);         
        }         
        return list;    
    }
    public boolean insert(Pq pq) throws SQLException {
    try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "INSERT INTO pq(pq_id,pq_all,pq_bill,pq_feedback,pq_edit,pq_delete) VALUE(?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, pq.getPqID());
            ps.setBoolean(2, pq.getPqAll());
            ps.setBoolean(3, pq.getPqBill());
            ps.setBoolean(4, pq.getPqFeedback());
            ps.setBoolean(5, pq.getPqEdit());
            ps.setBoolean(6, pq.getPqDelete());
            int temp = ps.executeUpdate();
            return temp == 1;
        } catch (Exception e) {
        return false;
        }
    }
     public boolean update(Pq pq) throws SQLException {
    try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "UPDATE pq SET  pq_all= ?, pq_bill= ?, pq_feedback= ?, pq_edit= ?, pq_delete= ? WHERE pq_id = ?";
            PreparedStatement ps = connection.prepareCall(sql);         
            ps.setBoolean(1, pq.getPqAll());
            ps.setBoolean(2, pq.getPqBill());
            ps.setBoolean(3, pq.getPqFeedback());
            ps.setBoolean(4, pq.getPqEdit());
            ps.setBoolean(5, pq.getPqDelete());
            int temp = ps.executeUpdate();
            return temp == 1;
        } catch (Exception e) {
        return false;
        }
    }
    public boolean delete(long pq_id) throws SQLException {
        try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "DELETE FROM pq WHERE pq_id = ?";
            PreparedStatement ps = connection.prepareCall(sql);
            ps.setLong(1, pq_id);
            int temp = ps.executeUpdate();
            return temp == 1;
        } catch (Exception e) {
        return false;
        }
    }
}
