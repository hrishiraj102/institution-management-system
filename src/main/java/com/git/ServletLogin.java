package com.git;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletLogin
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String user = request.getParameter("user");
		String pass = request.getParameter("pass");
		PrintWriter p1 = response.getWriter();
		String a, b, c;

		a = "admin1"; // HR and higher rank
		b = "admin2"; // Database access except staff data
		c = "admin3"; // Attandance mark only
		authlogin al = new authlogin();
		boolean flag;

		try {
			flag = al.test(user, pass);
			if (flag == true) {

				if (user.equals(a)) {
					// I can make a navigation bar.
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
					p1.println("<div id='loginSuccess'><p>Succefully Logged in " + user
							+ "</p><p>Links for database: </div>");
					p1.println("<div id='linksdb'><ul>");
					p1.println("<li><a href='Student.jsp'>Student Database</a></li>");
					p1.println("<li><a href='staff1.jsp'>Staff Database</a></li>");
					p1.println("<li><a href='department.html'>Department Database</a></li>");
					p1.println("<li><a href='Fees.jsp'>Fees Structure</a></li>");
					p1.println("<li><a href='getBarcode.jsp'>Generate Barcode</a></li>");
					p1.println("</ul></div>");
					p1.println("<p class='buttonLink'><a href='login.html'>Log out</a></p>");
					p1.println("<footer class='gitfooter1' >" +

							"<div class='boxfoot'>" +
							"<hr>" +
							"<h5 style='color: black;padding-top:40px; opacity:0.5;'>Copyright © 2022, Hrishiraj Sawan, All Rights Reserved</h5>"
							+
							"</div></footer>"
							+ "</body></html>");

				} else if (user.equals(b)) {
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

					p1.println("<div id='loginSuccess'><p>Succefully Logged in " + user
							+ "</p><p>Links for database: </div>");
					p1.println("<div id='linksdb'><ul>");
					p1.println("<li><a href='Student.jsp'>Student Database</a></li>");
					p1.println("<li><a href='department.html'>Department Database</a></li>");
					p1.println("<li><a href='Fees.jsp'>Fees Structure</a></li>");
					p1.println("<li><a href='getBarcode.jsp'>Generate Barcode</a></li>");
					p1.println("</ul></div>");
					p1.println("<p class='buttonLink'><a href='login.html'>Log out</a></p>");
					p1.println("<footer class='gitfooter1' >" +

							"<div class='boxfoot'>" +
							"<hr>" +
							"<h5 style='color: black;padding-top:40px; opacity:0.5;'>Copyright © 2022, Hrishiraj Sawan, All Rights Reserved</h5>"
							+
							"</div></footer></body></html>");
				} else {
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
					p1.println("<div id='loginSuccess'><p>Succefully Logged in " + user
							+ "</p><p>Links for database: </div>");
					p1.println("<div id='linksdb'><ul>");
					p1.println("<li><a href='getBarcode.jsp'>Generate Barcode</a></li>");
					p1.println("</ul></div>");
					p1.println("<p class='buttonLink'><a href='login.html'>Log out</a></p>");
					p1.println("<footer class='gitfooter1' >" +

							"<div class='boxfoot'>" +
							"<hr>" +
							"<h5 style='color: black;padding-top:40px; opacity:0.5;'>Copyright © 2022, Hrishiraj Sawan, All Rights Reserved</h5>"
							+
							"</div></footer></body></html>");
				}
			} else {
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
				p1.println("<form action='ServletLogin'>");
				p1.println("Username: <input type= 'text' name='user'></br></br>\n"
						+ "	Password: <input type= 'password' name='pass'></br></br>"
						+ "<input type='submit' name='login'>");
				p1.println("</form>");
				p1.println("<p><a href='login.html'>Log in</a></p>");
				p1.println("<footer class='gitfooter1' >" +

						"<div class='boxfoot'>" +
						"<hr>" +
						"<h5 style='color: black;padding-top:40px; opacity:0.5;'>Copyright © 2022, Hrishiraj Sawan, All Rights Reserved</h5>"
						+
						"</div></footer></body></html>");

			}

		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			p1.println("Error with jdbc");
		}
		// p1.println("working");

	}

}
