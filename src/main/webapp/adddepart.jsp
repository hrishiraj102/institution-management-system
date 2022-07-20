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
						<title>Department</title>
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
						String school_name=request.getParameter("school1"); out.println(school_name); 
						int s_no=0; String a1="Engineering Diploma1" ; String a2="Hotel Management1" ; 
						String a3="Short Term Certification1" ; 
						if(school_name.equals(a1))
						{ s_no=1; 
						}else if(school_name.equals(a2)){ s_no=2; 
						}else if(school_name.equals(a3)){ s_no=3; 
						} 
						try {
							Class.forName("com.mysql.cj.jdbc.Driver"); 
							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123" ); //Get Connection Statement 
							Statement st=con.createStatement(); 
							int i=st.executeUpdate("insert into gitDB.department(depart_name,depart_id,s_no) values('"+depart_name+"','"+depart_id+"','"+s_no+"')"); 
							out.println("Department Succefully added to GIT database"); }
							catch(Exception e){ 
								System.out.print(e); 
								e.printStackTrace(); } %>

							<div>
								<a class="buttonLink" href="department.html">Go back to last page</a>
							</div>
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