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
						<title>Student</title>

					</head>

					<body>

						
						<% 
						String op=request.getParameter("eStudent"); //Value of dropdown 
						String ne=request.getParameter("newentry"); //real value to be inserted
						int reg_id=Integer.parseInt(request.getParameter("reg_no1")); //reg_no 
						int depart=0;
							if(op.equals("depart_id1")){ 
								depart=Integer.parseInt(ne);
								} 
							try {
							Class.forName("com.mysql.cj.jdbc.Driver"); Connection
							con=DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123" ); //Get Connection 
							Statement st=con.createStatement(); /*Comparing value of drop down*/ 
							if(op.equals("fname1")){ 
								int i=st.executeUpdate("Update gitDB.Student SET f_name='"+ne+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("lname1")){
								int i=st.executeUpdate("Update gitDB.Student SET l_name='"+ne+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("adhar1")){
								int i=st.executeUpdate("Update gitDB.Student SET adhar='"+ne+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("dob1")){
								int i=st.executeUpdate("Update gitDB.Student SET s_dob='"+ne+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("fatherN")){ 
								int i=st.executeUpdate("Update gitDB.Student SET fatherN='"+ne+"' where reg_id='"+reg_id+"'");
		
							}else if(op.equals("motherN")){
								int i=st.executeUpdate("Update gitDB.Student SET motherN='"+ne+"' where reg_id='"+reg_id+"'");
		
							}else if(op.equals("p_no1")){ 
								int i=st.executeUpdate("Update gitDB.Student SET p_no='"+ne+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("g_noi1")){ 
								int i=st.executeUpdate("Update gitDB.Student SET g_no1='"+ne+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("g_noi2")){ 
								int i=st.executeUpdate("Update gitDB.Student SET g_no2='"+ne+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("address1")){ 
								int i=st.executeUpdate("Update gitDB.Student SET address='"+ne+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("pincode1")){ 
								int i=st.executeUpdate("Update gitDB.Student SET pincode='"+ne+"' where	reg_id='"+reg_id+"'");
							}else if(op.equals("depart_id1")){ 
								int i=st.executeUpdate("Update gitDB.Student SET depart_id='"+depart+"' where reg_id='"+reg_id+"'");
							}else if(op.equals("a_year1")){ 
								int i=st.executeUpdate("Update gitDB.Student SET a_year='"+ne+"' where reg_id='"+reg_id+"'");
								}
							con.close();
		
		out.println(" Update Successful!!"); //If edit successful return this %>
							<jsp:include page="Student.jsp" />
							<% }catch(Exception e){ System.out.print(e); e.printStackTrace(); } %>

								
					</body>

					</html>