<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="JDBC.JDBCConnection"%>
<%@page import="java.sql.Connection"%>  
 <%@page import="QuanLi.ContactDao"%>
   <%@page import="Table.Contact" %> 
   <%@page import="JDBC.JDBCConnection" %>
<%@page import="java.sql.Statement"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ContactDao contactDao = new ContactDao();
	Contact contact = new Contact();
	
	contact.setName(request.getParameter("name"));
	contact.setEmail(request.getParameter("email"));
	contact.setPhone(request.getParameter("phone"));
	contact.setText(request.getParameter("text"));

	contactDao.addContact(contact);
	JDBCConnection jdbc = new JDBCConnection();
	Connection connection = jdbc.getJDBCConnection();
	Statement stm = connection.createStatement();
	
	String sql = "UPDATE CONTACT set days = CURRENT_TIMESTAMP where name ='"+ request.getParameter("name") + "'";
    stm.executeUpdate(sql);  
	response.sendRedirect("Contact.jsp");
%>
</body>
</html>