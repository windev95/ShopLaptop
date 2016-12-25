package dao;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Date;
import model.Bill;
public class BillDAO {
    public void insertBill(Bill bill) throws SQLException {
        Connection connection = DBConnect.getConnecttion();
        String sql = "INSERT INTO bill VALUES(?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement ps = connection.prepareCall(sql);
        ps.setLong(1, bill.getBillID());
        ps.setString(2, bill.getBillName());
        ps.setLong(3, bill.getBillPhone());
        ps.setString(4, bill.getBillAddress());
        ps.setTimestamp(5, bill.getBillDate());
        ps.setString(6, bill.getBillPayment());
        ps.setLong(7, bill.getBillPaid());
        ps.setLong(8, bill.getBillFinish());
        ps.setLong(9, bill.getBillTotal());
        ps.setLong(10, bill.getUserID());
        ps.executeUpdate();
    }    
    public static void main(String[] args) throws SQLException {
        
        new BillDAO().insertBill(new Bill(5678,"Toàn", 012345 , "sdfghj", new Timestamp(new Date().getTime()), "Live", 0, 1,1000, 1));
    }
    
}
