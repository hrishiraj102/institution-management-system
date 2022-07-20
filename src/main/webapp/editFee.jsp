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
<title>Edit Fees</title>
</head>
<body>

<%
	String op= request.getParameter("eFees");  //value of dropdown
	String ne= request.getParameter("newentry");
	int depart_id= Integer.parseInt(request.getParameter("depart_id"));
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/?user=root", "root", "mamu123123");
	Statement st= con.createStatement();
	
	if(op.equals("fees_add")){
		int i= st.executeUpdate("Update gitDB.fees SET fees_add= '"+ne+"' where depart_id= '"+depart_id+"'");
	}else if(op.equals("fees_perS")){
		int i= st.executeUpdate("Update gitDB.fees SET fees_perS= '"+ne+"' where depart_id= '"+depart_id+"'");
	}else if(op.equals("examination_fee")){
		int i= st.executeUpdate("Update gitDB.fees SET examination_fee= '"+ne+"' where depart_id= '"+depart_id+"'");
	}else if(op.equals("other_fees")){
		int i= st.executeUpdate("Update gitDB.fees SET other_fees= '"+ne+"' where depart_id= '"+depart_id+"'");
	}
	out.println("Update Successful!!");
	
%>
<jsp:include page="Fees.jsp" />
</body>
</html>