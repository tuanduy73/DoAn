package QuanLi;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Table.Bill;
import Table.Cartegory;
import Table.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class BillDao extends HttpServlet{
	public List<Bill> getAllBill() 
    {
        List<Bill> bill = new ArrayList<Bill>();
        
        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
        
        String sql ="SELECT * FROM 	BILL";
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next())
            {
                
            	Bill bills = new Bill();
            	
            	bills.setId(Integer.parseInt(rs.getString("id")));
            	bills.setTEN(rs.getString("TEN"));
            	bills.setBuyDate(java.sql.Date.valueOf(rs.getString("buyDate")));
            	bills.setPriceTotal(Float.valueOf(rs.getString("priceTotal")));
      	
            	bill.add(bills);
            }
           
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return bill;
    }
	

	 public void updateBill(Bill bill) 
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql2 = "UPDATE BILL SET buyDate=?, priceTotal=?  WHERE TEN=? ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
	            String n="";
	            List<Cartegory> cartegories = new CartegoryDao().getAllCartegory();
	        	for(Cartegory cartegory2: cartegories)
	        	{
	        		n = cartegory2.getTEN();
	        	}
	            
	            preparedStatement.setDate(1, bill.getBuyDate());
	            preparedStatement.setFloat(2, bill.getPriceTotal());
	            preparedStatement.setString(3, n);
	         
	            int rs = preparedStatement.executeUpdate();
	        }catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	 public void updateBillTime(Bill bill)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql2 = "UPDATE BILL SET buyDate=?, priceTotal=?  WHERE TEN=? ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
	            long miliSeconds = System.currentTimeMillis();
	            Date date2 = new Date(miliSeconds);
	            float a = 0;
	            preparedStatement.setDate(1, date2);
	            preparedStatement.setFloat(2, a);
	            preparedStatement.setString(3, bill.getTEN());
	  
	            int rs = preparedStatement.executeUpdate();
	        }catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	 
	 public void addBill(Bill bill)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql1 =" INSERT INTO BILL(TEN) VALUES (?) ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql1);         
	            preparedStatement.setString(1, bill.getTEN());
	            int rs = preparedStatement.executeUpdate();
	            System.out.println(rs);
	            
	        }catch(SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
}
