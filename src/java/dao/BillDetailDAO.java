package dao;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.BillDetail;
public class BillDetailDAO {
    public void insertBillDetail(BillDetail bd) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO bill_detail VALUES(?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bd.getBillDetailID());
        ps.setLong(2, bd.getProductID());
        ps.setInt(3, bd.getQuantity());
        ps.setInt(4, bd.getPrice());
        ps.setLong(5, bd.getBillID());      
        ps.executeUpdate();
    }    
    public static void main(String[] args) throws SQLException {
        new BillDetailDAO().insertBillDetail(new BillDetail(4,2,3,4,5));
    }
    
}
