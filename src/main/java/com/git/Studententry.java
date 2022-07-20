package com.git;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import extraclass.studb;

/**
 * Servlet implementation class Studententry
 */
@WebServlet("/Studententry")
public class Studententry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void insertdb(String fname, String lname, String adhar, String dob, String fatname, String motname,
			String p_no, String g_no1, String g_no2, String addr, String pincode, String a_data, int depart)
			throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver"); // Register Driver
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123");
		String sqll = "insert into gitDB.Student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		PreparedStatement ps = con.prepareStatement(sqll);
		ps.setString(1, null);
		ps.setString(2, fname);
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
		ps.setInt(14, depart);
		int rUpdate = ps.executeUpdate();
		// boolean flag= rUpdate.next();
		//
		con.close();
		// return regId;

	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter p1 = response.getWriter();

		String fname = request.getParameter("fname"); // First Name
		String lname = request.getParameter("lname"); // Last Name
		String adhar = request.getParameter("adhar"); // Adhar Number
		String dob = request.getParameter("sdob"); // Date of Birth

		String fathername = request.getParameter("fathername"); // father's name
		String mothername = request.getParameter("mothername"); // mother's name
		String p_no = request.getParameter("p_no"); // Mobile Number
		String g_no1 = request.getParameter("g_no1"); // Guardian's Mobile Number

		String g_no2 = request.getParameter("g_no2"); // Guardian's Mobile number2

		String addr = request.getParameter("add"); // Address
		String pincode = request.getParameter("pin"); // Pincode
		String a_date = request.getParameter("a_date"); // Date of Admissio
		int department = Integer.parseInt(request.getParameter("d_name")); // Department Name
		p1.println("<html><head>" +
				"<meta charset='UTF-8'>" +

				"<meta name='viewport' content='width=device-width,initial-scale-=1'>" +
				"<link rel='stylesheet' href='stylesheetLogin.css'>" +

				"<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css' rel='stylesheet'integrity='sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor' crossorigin='anonymous'>"
				+
				"<title>login page</title></head><body>");
		p1.println("<header class='header'>" +
				"<span class='githead'>" +
				"<h1>GIT Management System</h1>" +
				"</span></header>");
		Studententry stuentry = new Studententry();
		// int getreg_id =0;
		try {
			stuentry.insertdb(fname, lname, adhar, dob, fathername, mothername, p_no, g_no1, g_no2, addr, pincode,
					a_date, department);
			// getreg_id= stuentry.getReg(adhar);
			p1.println("<p> You have Succefully entered data to database.</p>");
			// p1.println("Your registration number is: "+getreg_id);
			// p1.println("<p>Please keep the registration number carefully</p>");

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			p1.println("Database connection error contact to concern team");
		}

		p1.println("<a href='Student.jsp'>New entry</a>");
		/* Edit click and page left */
		p1.println("<footer class='gitfooter1'>" +

				"<div class='boxfoot'>" +
				"<hr>" +
				"<h5 style='color: black;padding-top:40px; opacity:0.5;'>Copyright © 2022, Hrishiraj Sawan, All Rights Reserved</h5>"
				+
				"</div></footer>"
				+ "</body></html>");

	}

}
