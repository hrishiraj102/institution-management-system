<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Using meta viewport for mobile view -->
		<meta name="viewport" content="width=device-width,initial-scale-=1">
		<link rel="stylesheet" href="stylesheetLogin.css">
		<!-- Using below link for bootstrap -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
			integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>delete Student</title>
</head>
<body>
<header class="header">
			<span class="githead">
				<h1>GIT Management System</h1>
			</span>
		</header>
<% 

	String staffname11= request.getParameter("studentname11");
	int staffid11= Integer.parseInt(request.getParameter("stuid11"));
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123");  //Get Connection
	Statement st= con.createStatement();
	int i= st.executeUpdate("delete from gitDB.Student where reg_id= '"+staffid11+"'");
	out.println("System Succefully deleted "+staffname11+"'s data from GIT database");
}catch(Exception e){
	System.out.print(e);
    e.printStackTrace();
}
%>
</br></br>
<div>
<a class= "buttonLink" href="Student.jsp">Go back to last page</a>
</div>
</br></br>
<p class="buttonLink"><a href="login.html">Log out</a>
		<p>
			</br></br>
		<footer class="gitfooter1">

			<div class="boxfoot">
				<hr>
				<h5 style="color: black;padding-top:40px; opacity:0.5;">Copyright © 2022, Hrishiraj Sawan, All
					Rights Reserved</h5>

			</div>
		</footer>

</body>
</html>