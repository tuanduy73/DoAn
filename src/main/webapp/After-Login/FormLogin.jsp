<%@page import="QuanLi.CartegoryDao"%>
<%@page import="Table.Cartegory"%>
<%@page import="QuanLi.BillDao"%>
<%@page import="Table.Bill"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Service.GamingService"%>
   <%@page import="Table.Gaming" %>
   <%@page import="QuanLi.GameDao" %>
 <%@page import="java.sql.Connection" %>
   <%@page import="JDBC.JDBCConnection" %>
    <%@page import="java.sql.ResultSet" %>
   <%@page import="java.sql.Statement" %>
   <%@page import="java.util.List"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	String Username = request.getParameter("TEN");
	String Password = request.getParameter("MATKHAU");

	JDBCConnection jdbc = new JDBCConnection();
	Connection connection = jdbc.getJDBCConnection();
	Statement stm = connection.createStatement();
	String sql="SELECT*FROM DANGNHAP WHERE TEN = '" + Username + "' AND MATKHAU = '" + Password + "'";         
	ResultSet rs = stm.executeQuery(sql);
	if(rs.next())
	{	
		Bill bill = new Bill();
		BillDao billDao = new BillDao();

		bill.setTEN(request.getParameter("TEN"));
		billDao.addBill(bill);
		billDao.updateBillTime(bill);
		
		Cartegory cartegory = new Cartegory();
		CartegoryDao cartegoryDao = new CartegoryDao();
		
		cartegory.setTEN(request.getParameter("TEN"));
		cartegoryDao.updateCartegory(cartegory);
		
		HttpSession httpSession = request.getSession();
		httpSession.setAttribute("name", request.getParameter("TEN"));
		
		httpSession = request.getSession();
		httpSession.setAttribute("matkhau", request.getParameter("MATKHAU"));
		
		response.sendRedirect("/ChuyenDe/After-Login/Index.jsp");
 return;
	}
	else
	{
		response.sendError(500);	
	}
	connection.close();
	stm.close();
	rs.close();
	
	}
	catch(SQLException e)
	{
		e.printStackTrace();
	} catch(Exception e)
	{
		e.printStackTrace();
	}


%>
</body>
</html>