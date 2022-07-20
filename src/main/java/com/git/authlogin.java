package com.git;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class authlogin {
	//Admin login 
	public boolean test(String user,String pass) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123");  //Get Connection
		Statement st= con.createStatement();
		ResultSet rs= st.executeQuery("Select * from gitDb.admin where username='"+user+"' and password1='"+pass+"'");
		boolean flag = rs.next();
		return flag;
		
		
	}

}
