package Login;

import java.io.IOException;
import java.io.*;
import java.util.*;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import JDBC.JDBCConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class FormLogin extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		try
		{
			
		String Username = req.getParameter("name");
		String Password = req.getParameter("pass");
		
			JDBCConnection jdbc = new JDBCConnection();
			Connection connection = jdbc.getJDBCConnection();
			Statement stm = connection.createStatement();
			String sql="SELECT*FROM DANGNHAP WHERE TEN = '" + Username + "' AND MATKHAU = '" + Password + "'";         
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next())
			{	
				resp.sendRedirect("/ChuyenDe/WebJava/ListGaming.jsp");
			}
			else
			{
				resp.sendError(500);	
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
	}
	
	
}

