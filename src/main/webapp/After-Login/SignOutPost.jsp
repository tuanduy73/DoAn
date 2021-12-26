<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Service.GamingService"%>
   <%@page import="Table.Gaming" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	GamingService gamingService = new GamingService();
	Gaming gaming = new Gaming();
	
	gaming.setTEN(request.getParameter("TEN"));
	gaming.setMATKHAU(request.getParameter("MATKHAU"));
	gaming.setPHONE(request.getParameter("PHONE"));
	gaming.setEMAIL(request.getParameter("EMAIL"));
	
	gamingService.addLogin(gaming);
	
	response.sendRedirect("/ChuyenDe/After-Login/Sign.jsp");
	%>>
</body>
</html>