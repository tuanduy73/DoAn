<%@page import="QuanLi.CartegoryDao"%>
<%@page import="Table.Cartegory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="QuanLi.BillProductDao"%>
<%@page import="Table.BillProduct"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	BillProduct billProduct = new BillProduct();
	BillProductDao billProductDao = new BillProductDao();	
	billProductDao.DeleteTableCar(billProduct);
	
	Cartegory cartegory = new Cartegory();
	CartegoryDao cartegoryDao = new CartegoryDao();
	cartegoryDao.DeleteTableCartegory(cartegory);
	cartegoryDao.addCartegory(cartegory);
	
	
	response.sendRedirect("/ChuyenDe/WebJS/Index.html");
	%>
</body>
</html>