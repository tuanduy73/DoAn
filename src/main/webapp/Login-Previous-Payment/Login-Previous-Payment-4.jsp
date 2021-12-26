<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
        <%@page import="Service.GamingService"%>
   <%@page import="Table.Cartegory" %>
   <%@page import="QuanLi.CartegoryDao" %>
 <%@page import="java.sql.Connection" %>
   <%@page import="JDBC.JDBCConnection" %>
    <%@page import="java.sql.ResultSet" %>
   <%@page import="java.sql.Statement" %>
   <%@page import="java.sql.PreparedStatement"%>
   <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	List<Cartegory> cartegory = new CartegoryDao().getAllCartegory();
	
	for (Cartegory cartegorys : cartegory)
	{
		String a = cartegorys.getTEN();
		String b ="mot";
		if(a.equals(b) == false)
		{		
			response.sendRedirect("/ChuyenDe/Details/details4.jsp");
			return;				
		} else if (a.equals(b) == true)
		{
			response.sendRedirect("/ChuyenDe/After-Login/login.html");
			return;
		}
	}	
	
	%>
</body>
</html>