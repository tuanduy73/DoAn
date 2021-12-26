<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Table.Gaming" %>
<%@page import="QuanLi.GameDao" %>
<%@page import="JDBC.JDBCConnection" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession httpSession = request.getSession();
Object object = httpSession.getAttribute("matkhau");
String matkhau = String.valueOf(object);

Object object2 = httpSession.getAttribute("name");
String Username = String.valueOf(object2);

JDBCConnection jdbc = new JDBCConnection();
Connection connection = jdbc.getJDBCConnection();
Statement stm = connection.createStatement();
String a = request.getParameter("mkcu");
String sql="SELECT*FROM DANGNHAP WHERE MATKHAU = '" + matkhau + "'";         
ResultSet rs = stm.executeQuery(sql);
if(rs.next())
{
	if(matkhau.equals(a) == false)
	{
		response.sendRedirect("/ChuyenDe/Information/Edit-Profile.jsp");
	} else if (matkhau.equals(a) == true)
	{

		String sql1="update DANGNHAP set MATKHAU=? WHERE TEN = '" + Username + "'";
		PreparedStatement preparedStatement = connection.prepareStatement(sql1);
		preparedStatement.setString(1, request.getParameter("mkmoi"));
		int rows = preparedStatement.executeUpdate();
		response.sendRedirect("/ChuyenDe/Information/Profile.jsp");
	}
}

%>
</body>
</html>