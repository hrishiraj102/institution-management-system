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

import BARCODE.BarcodeGenerate;

/**
 * Servlet implementation class GenerateBarcode
 */
@WebServlet("/GenerateBarcodeStudent")
public class GenerateBarcode extends HttpServlet {
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
		int reg_id = Integer.parseInt(request.getParameter("reg_no"));
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
					"mamu123123"); // Get Connection
			Statement st = con.createStatement();

			ResultSet i = st.executeQuery("select * from gitDB.Student where reg_id= '" + reg_id + "'");

			while (i.next()) {

				String reg = String.valueOf(i.getInt(1));
				String name = i.getString("f_name") + "_" + i.getString("l_name");
				BarcodeGenerate.createImage(name + ".png", reg);
				p1.println("<p>Barcode Generated</p>");
			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			// p1.println("Fail to Generate Barcode.");
		}
		p1.println("<a href='getBarcode.jsp'> Go Back for new Barcode</a>");
		p1.println("<footer class='gitfooter1'>" +

				"<div class='boxfoot'>" +
				"<hr>" +
				"<h5 style='color: black;padding-top:40px; opacity:0.5;'>Copyright © 2022, Hrishiraj Sawan, All Rights Reserved</h5>"
				+
				"</div></footer>"
				+ "</body></html>");

	}

}
