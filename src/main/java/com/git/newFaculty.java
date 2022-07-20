package com.git;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class newFaculty
 */
@WebServlet("/newFaculty")
public class newFaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void fentry(String fname, String lname, String adhar, String dob, String p_no, String doj, String addr,
			String pincode, int depart_id, String salary) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver"); // Register Driver
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123");
		String sqll = "insert into gitDB.staff values(?,?,?,?,?,?,?,?,?,?,?);";
		PreparedStatement ps = con.prepareStatement(sqll);
		ps.setString(1, null);
		ps.setString(2, fname);
		ps.setString(3, lname);
		ps.setString(4, adhar);
		ps.setString(5, dob);
		ps.setString(6, p_no);
		ps.setString(7, doj);
		ps.setString(8, addr);
		ps.setString(9, pincode);
		ps.setInt(10, depart_id);
		ps.setString(11, salary);

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
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter p1 = response.getWriter();

		String fname = request.getParameter("fname"); // First Name
		String lname = request.getParameter("lname"); // Last Name
		String adhar = request.getParameter("adhar"); // Adhar Number
		String dob = request.getParameter("dob"); // Date of Birth

		String p_no = request.getParameter("p_no"); // Mobile Number
		String doj = request.getParameter("doj");
		String addr = request.getParameter("address"); // Address
		String pincode = request.getParameter("pincode"); // Pincode
		int depart_id = Integer.parseInt(request.getParameter("depart_id")); // Date of Admissio
		String salary = request.getParameter("salary"); // Department Name
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
		// studb stuentry = new studb();
		newFaculty faculty = new newFaculty();
		// int getreg_id =0;
		try {
			faculty.fentry(fname, lname, adhar, dob, p_no, doj, addr, pincode, depart_id, salary);
			// getreg_id= stuentry.getReg(adhar);
			p1.println("<p> You have Succefully entered data to database.</p>");
			// p1.println("Your registration number is: "+getreg_id);
			// p1.println("<p>Please keep the registration number carefully</p>");

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			p1.println("Database connection error contact to concern team");
		}

		p1.println("<a href='staff1.jsp'>New entry</a>");
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
