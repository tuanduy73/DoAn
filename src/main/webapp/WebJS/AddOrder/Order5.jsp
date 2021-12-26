<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@page import="Service.BillProductService"%>
<%@page import="Table.BillProduct" %>
<%@page import="JDBC.JDBCConnection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	JDBCConnection jdbc = new JDBCConnection();
	Connection connection = jdbc.getJDBCConnection();
	Statement stm = connection.createStatement();
	
			String sql = "INSERT INTO BILLPRODUCT " +
	                "VALUES ('RANGE-ROVER','800000','ENGLAND', CURRENT_TIMESTAMP,'0')";
	        stm.executeUpdate(sql);    	
	        
	 response.sendRedirect("/ChuyenDe/WebJS/purchase.jsp");
%>

</body>
</html>