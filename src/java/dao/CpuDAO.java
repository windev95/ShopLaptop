package dao;
import connect.DBConnect; 
import java.sql.Connection; 
import java.sql.PreparedStatement; 
import java.sql.ResultSet; 
import java.sql.SQLException; 
import java.util.ArrayList; 
import model.Cpu;
public class CpuDAO {
    //get tên CPU theo cpuID
    public ArrayList<Cpu> getCpuNameID(long cpuID) throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT cpu_name FROM cpu WHERE cpu_id = '" + cpuID + "'";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Cpu> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Cpu cpu = new Cpu();        
            cpu.setCpuName(rs.getString("cpu_name"));       
            list.add(cpu);         
        }         
        return list;    
    }
    // get danh sách CPU
    public ArrayList<Cpu> getListCpu() throws SQLException { 
        Connection connection = DBConnect.getConnecttion();        
        String sql = "SELECT * FROM cpu";       
        PreparedStatement ps = connection.prepareCall(sql);        
        ResultSet rs = ps.executeQuery();       
        ArrayList<Cpu> list = new ArrayList<>();        
        while (rs.next()) 
        {             
            Cpu category = new Cpu();      
            category.setCpuID(rs.getInt("cpu_id"));       
            category.setCpuName(rs.getString("cpu_name"));       
            list.add(category);         
        }         
        return list;    
    }
    public static void main(String[] args) throws SQLException 
    {       
        CpuDAO dao = new CpuDAO();      
        for (Cpu ds : dao.getListCpu()) 
        {           
            System.out.println(ds.getCpuID() +" - " + ds.getCpuName());         
        }     
    } 
    
}
