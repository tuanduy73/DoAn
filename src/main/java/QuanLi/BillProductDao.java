package QuanLi;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Date;

import Table.BillProduct;
import Table.Gaming;
import Table.Product;
import Table.Bill;
import Table.Product;

public class BillProductDao {
	public List<BillProduct> getAllBillProduct() 
    {
        List<BillProduct> car = new ArrayList<BillProduct>();
        
        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
        
        String sql ="SELECT * FROM 	BILLPRODUCT";
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next())
            {
                
            	BillProduct billProduct = new BillProduct();
            	
                billProduct.setId(Integer.parseInt(rs.getString("id")));
            	billProduct.setName12(rs.getString("name12"));
            	billProduct.setPrice(Float.valueOf(rs.getString("price")));
            	billProduct.setXuatxu(rs.getString("xuatxu"));
            	billProduct.setTimedate(java.sql.Date.valueOf(rs.getString("timedate")));
            	
            	car.add(billProduct);
            }
           
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return car;
    }
	


	 public void addBillProduct (BillProduct billProduct)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql1 =" INSERT INTO BILLPRODUCT(NAME, PRICE, XUATXU) VALUES (?,?,?) ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql1);
	            preparedStatement.setString(1, billProduct.getName12());
	            preparedStatement.setFloat(2, billProduct.getPrice());
	            preparedStatement.setString(3, billProduct.getXuatxu());
	          
	            int rs = preparedStatement.executeUpdate();
	            System.out.println(rs);
	            
	        }catch(SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	 
	 public void deleteCar(int id)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql3 = "DELETE FROM BILLPRODUCT WHERE id = ?";
	        
	        try {
	            PreparedStatement preparedStatement = connection.prepareStatement(sql3);
	            preparedStatement.setInt(1, id);
	            int rs = preparedStatement.executeUpdate();
	            System.out.println(rs);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
	 public void updateCar(BillProduct billProduct)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql2 = "UPDATE BILLPRODUCT SET NAME12=?, PRICE=?, XUATXU=?, timedate=?, payment=? WHERE id=? ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
	            preparedStatement.setString(1, billProduct.getName12());
	            preparedStatement.setFloat(2, billProduct.getPrice());
	            preparedStatement.setString(3, billProduct.getXuatxu());
	            preparedStatement.setDate(4, billProduct.getTimedate());
	            preparedStatement.setFloat(5, billProduct.getPayment());
	            preparedStatement.setInt(6, billProduct.getId());
	            int rs = preparedStatement.executeUpdate();
	        }catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	 
	 public void DeleteTableCar(BillProduct billProduct)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql5 = "TRUNCATE TABLE BILLPRODUCT";
	        
	        try{
	           Statement statement = connection.createStatement();
	           statement.executeUpdate(sql5);
	         
	        }catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
}
