package com.git;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class engdiploma
 */
@WebServlet("/engdiploma")
public class engdiploma extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter p1 = response.getWriter();
		String school = request.getParameter("school");
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
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root",
					"mamu123123");
			Statement st = con.createStatement();
			// Here I am joining to table named School and department. Selecting only
			// department name,Department id and school name.
			ResultSet rs = st.executeQuery(
					" Select department.depart_name As Department,department.depart_id, school.school_name as School from gitDB.department inner join gitDB.school ON department.s_no=school.s_no where school_name='"
							+ school + "' order by department.depart_id ASC");
			p1.println("<div class='table'>");
			p1.println("<table>");
			p1.println("<tr>");
			p1.println("<th>Department</th>"); // table heading
			p1.println("<th>Department id</th>");
			p1.println("<th>School name</th>");
			p1.println("</tr>");

			while (rs.next()) { // table row
				p1.println("<tr>");
				p1.println("<td>");
				p1.println(rs.getString("Department"));
				p1.println("</td>");
				p1.println("<td>");
				p1.println(rs.getInt("depart_id"));
				p1.println("</td>");
				p1.println("<td>");
				p1.println(rs.getString("School"));
				p1.println("</td>");
				p1.println("</tr>");
			}
			p1.println("</table>");
			p1.println("</div>");
			con.close();

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			p1.println("Exception");
		}

		p1.println("<p class= 'buttonLink1'>");
		p1.println("<a  href='department.html'>Go back to last page</a>");
		p1.println("</p>");
		p1.println("<p class= 'buttonLink1'>");
		p1.println("<a   href='login.html'>Log Out</a>");
		p1.println("</p>");
		p1.println("<footer class='gitfooter1'>" + "<div class='boxfoot'>" +
				"<hr>" +
				"<h5 style='color: black;padding-top:40px; opacity:0.5;'>Copyright © 2022, Hrishiraj Sawan, All Rights Reserved</h5>"
				+
				"</div></footer>"
				+ "</body></html>");

	}

}
