<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@page import="java.sql.DriverManager" %>
		<%@page import="java.sql.ResultSet" %>
			<%@page import="java.sql.Statement" %>
				<%@page import="java.sql.Connection" %>
					<!DOCTYPE html>
					<html>

					<head>
						<meta charset="UTF-8">
						<meta name="viewport" content="width=device-width,initial-scale-=1">
						<link rel="stylesheet" href="stylesheetLogin.css">
						<!-- Using below link for bootstrap -->
						<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
							rel="stylesheet"
							integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
							crossorigin="anonymous">
						<title>Insert title here</title>
					</head>

					<body>

						<header class="header">
							<span class="githead">
								<h1>GIT Management System</h1>
							</span>
						</header>
						</br></br>
						<% String depart_name=request.getParameter("depart_name"); 
						int depart_id=Integer.parseInt(request.getParameter("depart_id")); 
						try {
							Class.forName("com.mysql.cj.jdbc.Driver"); Connection
							con=DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123" ); //Get Connection 
							Statement st=con.createStatement(); 
							int i=st.executeUpdate("delete from gitDB.department where depart_id='"+depart_id+"'");
							out.println(" System Succefully deleted "+depart_name+" from GIT database"); 
						}catch(Exception e){ 
							System.out.print(e);
							e.printStackTrace(); } %>

							<div>
								<a href="department.html">Go back to last page</a>
							</div>
							</br></br>

							<p class="buttonLink"><a href="login.html">Log out</a>
							<p>
								</br></br>
							<footer class="gitfooter1">

								<div class="boxfoot">
									<hr>
									<h5 style="color: black;padding-top:40px; opacity:0.5;">Copyright © 2022, Hrishiraj
										Sawan, All
										Rights Reserved</h5>

								</div>
							</footer>
					</body>

					</html>