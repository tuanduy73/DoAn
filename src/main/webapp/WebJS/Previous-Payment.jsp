<%@page import="java.sql.Date"%>
<%@page import="QuanLi.BillDao"%>
<%@page import="Table.Bill"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.List"%>
<%@page import="QuanLi.BillProductDao"%>
<%@page import="Table.BillProduct"%>
<%@page import="JDBC.JDBCConnection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

	Connection connection = JDBC.JDBCConnection.getJDBCConnection();
    
	String sql ="SELECT * FROM 	BILLPRODUCT";

    Statement statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
    	    ResultSet.CONCUR_READ_ONLY);
    
    ResultSet rs = statement.executeQuery(sql);

		rs.last();
		
		Date b = rs.getDate("timedate");
		
	/************************************************************************************/
        
    	String sql1 ="SELECT SUM(price) as payment from BILLPRODUCT";

       statement = connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
        	    ResultSet.CONCUR_READ_ONLY);
        
       rs = statement.executeQuery(sql1);

    		rs.last();		
    		float a = rs.getFloat("payment");
	
%>
<%		
		List<Bill> bills = new BillDao().getAllBill();
		
		for (Bill bill: bills) {
			bill.setBuyDate(b);
			bill.setPriceTotal(a);
			BillDao billDao = new BillDao();
			billDao.updateBill(bill);
			
			response.sendRedirect("/ChuyenDe/WebJS/Success.jsp");
			return;
		}
		BillProduct billProduct = new BillProduct();
		BillProductDao billProductDao = new BillProductDao();	
		billProductDao.DeleteTableCar(billProduct);
	
%>
</body>
</html>