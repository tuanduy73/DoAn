package QuanLi;

import Table.Gaming;
import Table.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;



import java.lang.NullPointerException;

public class CarDao {
	 public List<Product> getAllProduct() 
	    {
	        List<Product> car = new ArrayList<Product>();
	        
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql ="SELECT * FROM CAR";
	        
	        try {
	            PreparedStatement preparedStatement = connection.prepareStatement(sql);
	            
	            ResultSet rs = preparedStatement.executeQuery();
	            
	            while (rs.next())
	            {
	                
	            	Product product = new Product();
	                
	            	product.setId(Integer.parseInt(rs.getString("id")));
	            	product.setName(rs.getString("name"));
	            	product.setPrice(Float.valueOf(rs.getString("price")));
	            	product.setXuatxu(rs.getString("xuatxu"));
	            	product.setDescription(rs.getString("description"));
	            	
	            	car.add(product);
	            }
	           
	        } catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	        return car;
	    }
	    public Product getCarById(int id) 
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql2 ="SELECT * FROM CAR WHERE ID=? ";
	        
	        try {
	            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
	            preparedStatement.setInt(1, id);
	            ResultSet rs = preparedStatement.executeQuery();
	            
	            while (rs.next())
	            {
	            	Product product = new Product();
	                
	            	product.setId(Integer.parseInt(rs.getString("id")));
	            	product.setName(rs.getString("name"));
	            	product.setPrice(Float.valueOf(rs.getString("price")));
	            	product.setXuatxu(rs.getString("xuatxu"));
	            	product.setDescription(rs.getString("description"));
	            
	            	product = new Product();
	            }
	           
	        } catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
			return null;
	       
	    }
	    public void addCar (Product product)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql1 =" INSERT INTO CAR(ID, NAMECAR, PRICE, IMAGE, DESCRIPTION) VALUES (?,?,?,?,?) ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql1);
	            preparedStatement.setInt(1, product.getId());
	            preparedStatement.setString(2, product.getName());
	            preparedStatement.setFloat(3, product.getPrice());
	            preparedStatement.setString(4, product.getXuatxu());
	            preparedStatement.setString(5, product.getDescription());
           
	            int rs = preparedStatement.executeUpdate();
	            System.out.println(rs);
	            
	        }catch(SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	    public void updateCar(Product product)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql2 = "UPDATE CAR SET NAMECAR=?, PRICE=?, IMAGE=?, DESCRIPTION=? WHERE ID=? ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
	            preparedStatement.setString(1, product.getName());
	            preparedStatement.setFloat(2, product.getPrice());
	            preparedStatement.setString(3, product.getXuatxu());
	            preparedStatement.setString(4, product.getDescription());
	            preparedStatement.setInt(6, product.getId());
	            int rs = preparedStatement.executeUpdate();
	            
	        }catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	    public void deleteCar(int id)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql3 = "DELETE FROM CAR WHERE ID = ?";
	        
	        try {
	            PreparedStatement preparedStatement = connection.prepareStatement(sql3);
	            preparedStatement.setInt(1, id);
	            int rs = preparedStatement.executeUpdate();
	            System.out.println(rs);
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }
}
