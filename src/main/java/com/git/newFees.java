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
 * Servlet implementation class newFees
 */
@WebServlet("/newFees")
public class newFees extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void entryF(int depart_id, String fees_add, String fees_perS, String examination_fee, String other_fee)
			throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver"); // Register Driver
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123");
		String sqll = "insert into gitDB.fees values(?,?,?,?,?);";
		PreparedStatement ps = con.prepareStatement(sqll);
		ps.setInt(1, depart_id);
		ps.setString(2, examination_fee);
		ps.setString(3, fees_perS);
		ps.setString(4, examination_fee);
		ps.setString(5, other_fee);
		int rUpdate = ps.executeUpdate();
		con.close();
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
		int depart_id = Integer.parseInt(request.getParameter("depart_id1"));

		String fees_add = request.getParameter("fees_add1");
		String fees_perS = request.getParameter("fees_perS1");
		String examination_fee = request.getParameter("exam_fee");
		String other_fee = request.getParameter("other_fee1");

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
		// newFees feesE = new newFees();
		try {
			newFees feesE = new newFees();
			feesE.entryF(depart_id, fees_add, fees_perS, examination_fee, other_fee);
			p1.println("<p> You have Succefully entered data to database.</p>");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			p1.println("Database connection error contact to concern team");
		}
		p1.println("<a href='Fees.jsp'>New entry</a>");
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
