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
						<title>Student History</title>
					</head>

					<body>

						<header class="header">
							<span class="githead">
								<h1>GIT Management System</h1>
							</span>
						</header>

						</br></br>
						<% int reg_no=Integer.parseInt(request.getParameter("reg_no")); 
						String stu_name=request.getParameter("stu_name"); 
						try { 
							Class.forName("com.mysql.cj.jdbc.Driver");
							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123" ); //Get Connection 
							Statement st=con.createStatement(); 
							ResultSet i=st.executeQuery("select * from gitDB.Student where reg_id='"+reg_no+"'");
		%>
		<div class="table">
		<table><tr>
			<th>Registration number</th>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Adhar card no</th>
			<th>Date of Birth</th>
			<th>Father's name</th>
			<th>Mother's name</th>
			<th>Mobile number</th>
			<th>Gaurdian's Contact number</th>
			<th>Gaurdian's Contact number</th>
			<th>Address</th>
			<th>Pincode</th>
			<th>Admission Date</th>
			<th>Department Name</th>
			</tr>
			<% while(i.next()==true){%><tr>
			<td><%out.println(i.getInt("reg_id")); %>
							</td>
							<td>
								<%out.println(i.getString("f_name")); %>
							</td>
							<td>
								<%out.println(i.getString("l_name")); %>
							</td>
							<td>
								<%out.println(i.getString("adhar")); %>
							</td>
							<td>
								<%out.println(i.getString("s_dob")); %>
							</td>
							<td>
								<%out.println(i.getString("fatherN")); %>
							</td>
							<td>
								<%out.println(i.getString("motherN")); %>
							</td>
							<td>
								<%out.println(i.getString("p_no")); %>
							</td>
							<td>
								<%out.println(i.getString("g_no1")); %>
							</td>
							<td>
								<%out.println(i.getString("g_no2")); %>
							</td>
							<td>
								<%out.println(i.getString("address")); %>
							</td>
							<td>
								<%out.println(i.getString("pincode")); %>
							</td>
							<td>
								<%out.println(i.getString("a_year")); %>
							</td>
							<td>
								<%out.println(i.getString("depart_id")); %>
							</td>
							</tr>
							<%} %>
								</table></div>
								
								<% } catch(Exception e){ System.out.print(e); e.printStackTrace(); } %>

									</br></br>

									<div>
									<p class="buttonLink1"><a href="Student.jsp">Go to Student Page</a>
									</p>
									<p class="buttonLink1"><a  href="login.html">Log out</a>
									</p>
								</div>
										</br></br>
									<footer class="gitfooter1">
										
										<div class="boxfoot">
											<hr>
											<h5 style="color: black;padding-top:40px; opacity:0.5;">Copyright © 2022,
												Hrishiraj Sawan, All
												Rights Reserved</h5>

										</div>
									</footer>


					</body>

					</html>