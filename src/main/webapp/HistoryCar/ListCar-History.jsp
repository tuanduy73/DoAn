<%@page import="QuanLi.BillProductDao"%>
<%@page import="Table.BillProduct"%>
<%@page import="QuanLi.CarDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="Service.GamingService"%>
   <%@page import="Table.Gaming" %>
   <%@page import="java.util.List" %>
   <%@page import="java.sql.ResultSet" %>
   <%@page import="java.sql.Statement" %>
   <%@page import="java.sql.Connection" %>
   <%@page import="JDBC.JDBCConnection" %>
   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; Charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post">
	<table border="2">
	<thead class="thead-light">
		<tr>
			<td>Id</td>
			<td>Name</td>
			<td>Price</td>
			<td>Xuat Xu</td>
			<td>Time</td>
		</tr>
	</thead>
	<%

	List<BillProduct> billProducts = new BillProductDao().getAllBillProduct();
	
	for (BillProduct billProduct: billProducts) {
	%>
		<tr>
			<td><%=billProduct.getId() %></td>
			<td><%=billProduct.getName12()%></td>
			<td><%=billProduct.getPrice() %></td>
			<td><%=billProduct.getXuatxu()%></td>
			<td><%=billProduct.getTimedate()%></td>
			
			<th><a href="DeletePostCar.jsp?id=<%=billProduct.getId()%>">Delete</a></th>
			
		</tr>		
		
	<%
	}
	%>

	</table>
	<a href="Ridirect-Payment.jsp"> Back </a> 
	<a href="DeletePostCar.jsp"> Delete </a> 
</form>
</body>
</html>