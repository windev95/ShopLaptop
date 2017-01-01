package dao;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
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
    public ArrayList<Bill> getListBill() {
        try {
            Connection connection = DBConnect.getConnecttion();
            String sql = "SELECT * FROM bill";
            PreparedStatement ps = connection.prepareCall(sql);
            ResultSet rs = ps.executeQuery();
            ArrayList<Bill> list = new ArrayList<>();
            while (rs.next()) {
                Bill bill = new Bill();
                bill.setBillID(rs.getLong("bill_id"));
                bill.setBillName(rs.getString("bill_name"));
                bill.setBillPhone(rs.getInt("bill_phone"));
                bill.setBillAddress(rs.getString("bill_address"));
                bill.setBillDate(rs.getTimestamp("bill_date"));
                bill.setBillPayment(rs.getString("bill_payment"));
                bill.setBillPaid(rs.getInt("bill_paid"));
                bill.setBillFinish(rs.getInt("bill_finish"));
                bill.setBillTotal(rs.getInt("bill_total"));
                bill.setUserID(rs.getLong("user_id"));
                list.add(bill);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public static void main(String[] args) throws SQLException {
        
        new BillDAO().insertBill(new Bill(5678,"Toàn", 012345 , "sdfghj", new Timestamp(new Date().getTime()), "Live", 0, 1,1000, 1));
    }
    
}
