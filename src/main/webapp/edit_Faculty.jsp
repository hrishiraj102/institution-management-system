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
						<title>Edit</title>
					</head>

					<body>

						
						
						<% String op=request.getParameter("eStaff"); //Value of dropdown 
							String ne=request.getParameter("newentry"); //real value to be inserted 
							int staff_id=Integer.parseInt(request.getParameter("staffid1")); //id 
							int depart=0;
							if(op.equals("depart_id1")){ depart=Integer.parseInt(ne); } 
							try {
							Class.forName("com.mysql.cj.jdbc.Driver"); 
							Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123" ); //Get Connection 
							Statement st=con.createStatement(); /*Comparing value of drop down*/ 
							if(op.equals("fname1")){
								int i=st.executeUpdate("Update gitDB.staff SET f_name='"+ne+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("lname1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET l_name='"+ne+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("adhar1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET adhar='"+ne+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("dob1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET f_dob='"+ne+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("p_no1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET p_no='"+ne+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("doj1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET j_date='"+ne+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("address1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET address='"+ne+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("pincode1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET pincode='"+ne+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("depart_id1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET depart_id='"+depart+"' where staff_id='"+staff_id+"'");
							}else if(op.equals("salary1")){ 
								int i=st.executeUpdate("Update gitDB.staff SET salary='"+ne+"' where staff_id='"+staff_id+"'");
		}
		
							out.println(" Update Successful!!"); //If edit successful return this %>
							<jsp:include page="staff1.jsp" />
							<% }catch(Exception e){ 
								System.out.print(e);
								e.printStackTrace(); } %>


								

					</body>

					</html>