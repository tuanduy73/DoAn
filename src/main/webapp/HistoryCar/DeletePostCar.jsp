<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Service.BillProductService"%>
   <%@page import="Table.BillProduct" %>
   <%@page import="java.util.List"%>
    <%@page import="QuanLi.BillProductDao" %>
    <%@page import="java.sql.Connection" %>
   <%@page import="JDBC.JDBCConnection" %>
    <%@page import="java.sql.ResultSet" %>
   <%@page import="java.sql.Statement" %>
   <%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%

	BillProductService billProductService = new BillProductService();

	
	List<BillProduct> billProducts = new BillProductDao().getAllBillProduct();
	
	for (BillProduct billProduct: billProducts) {
		String a = billProduct.getName12();
		String b="1";
		
		if(a.equals(b)==false)
		{
			int id = Integer.parseInt(request.getParameter("id"));
			billProductService.deleteCar(id);
			response.sendRedirect("/ChuyenDe/HistoryCar/ListCar-History.jsp"); 
			return;
		} else if (a.equals(b)==true)
		{
			JDBCConnection jdbc = new JDBCConnection();
			Connection connection = jdbc.getJDBCConnection();
			Statement stm = connection.createStatement();
			String sql ="DROP TABLE IF EXISTS BILLPRODUCT";
			stm.executeUpdate(sql);
			
			String sql1="CREATE TABLE BILLPRODUCT " +
	                   "(id int IDENTITY(1,1) PRIMARY KEY, " +
	                   " NAME12 VARCHAR(30), " + 
	                   " price float, " + 
	                   " XUATXU VARCHAR(30), " +
	                   " timedate date, " +
	                   " payment float )"; 
			stm.executeUpdate(sql1);
			
			String sql2 = "INSERT INTO BILLPRODUCT " +
                    "VALUES ('1', '1','1', '01/01/2021','0')";
            stm.executeUpdate(sql2);    
            
			response.sendRedirect("/ChuyenDe/WebJS/ListCar-History.jsp");
			return;
		}			
	}
	%>
</body>
</html>