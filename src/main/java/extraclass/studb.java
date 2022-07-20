package extraclass;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class studb {
	
	public void display() {
		
	}
	public void insertdb(String fname,String lname,String adhar,String dob,String fatname,String motname,String p_no,String g_no1,String g_no2, String addr, String pincode,String a_data, int depart) throws ClassNotFoundException, SQLException {
	Class.forName("com.mysql.cj.jdbc.Driver");  //Register Driver
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123");
	String sqll= "insert into gitDB.Student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
	PreparedStatement ps= con.prepareStatement(sqll);
	ps.setString(1,null);
	ps.setString(2,fname);
	ps.setString(3, lname);
	ps.setString(4, adhar);
	ps.setString(5, dob);
	ps.setString(6, fatname);
	ps.setString(7, motname);
	ps.setString(8, p_no);
	ps.setString(9, g_no1);
	ps.setString(10, g_no2);
	ps.setString(11, addr);
	ps.setString(12, pincode);
	ps.setString(13, a_data);
	ps.setInt(14,depart);
	int rUpdate= ps.executeUpdate();
	//boolean flag= rUpdate.next();
//	
	con.close();
//	return regId;
	
	}
	
//	public int getReg(String adhar) throws ClassNotFoundException, SQLException {
//		Class.forName("com.mysql.cj.jdbc.Driver");  //Register Driver
//		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123");
//		
//		Statement st = con.createStatement();
//		ResultSet rs = st.executeQuery("Select * from gitDB.Student where adhar='"+adhar+"';");
//		String regId= rs.getInt("reg_id");
//		con.close();
//		return regId;
//	}
	
}
