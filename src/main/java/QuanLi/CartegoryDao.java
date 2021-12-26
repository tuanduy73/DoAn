package QuanLi;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Table.Bill;
import Table.BillProduct;
import Table.Cartegory;

public class CartegoryDao {
	public List<Cartegory> getAllCartegory() 
    {
        List<Cartegory> cartegory = new ArrayList<Cartegory>();
        
        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
        
        String sql ="select*from Cartegory";
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next())
            {
                
            	Cartegory cartegorys = new Cartegory();
            	
            	cartegorys.setId(Integer.valueOf(rs.getString("id")));
            	cartegorys.setTEN(rs.getString("TEN"));
   
            	cartegory.add(cartegorys);
            }
           
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return cartegory;
    }
	
	public void addCartegory (Cartegory cartegory)
    {
        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
        
        String sql1 =" INSERT INTO Cartegory(TEN) VALUES (?) ";
        
        try{
            PreparedStatement preparedStatement = connection.prepareStatement(sql1);
            String a = "mot";
            preparedStatement.setString(1, a);
         
            int rs = preparedStatement.executeUpdate();
            System.out.println(rs);
            
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
    }
	 public void DeleteTableCartegory(Cartegory cartegory)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql5 = "TRUNCATE TABLE Cartegory";
	        
	        try{
	           Statement statement = connection.createStatement();
	           statement.executeUpdate(sql5);
	         
	        }catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	
	 public void updateCartegory(Cartegory cartegory)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql2 = "UPDATE Cartegory SET TEN=? WHERE id='1' ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql2);
	            
	            preparedStatement.setString(1, cartegory.getTEN());
	         
	            int rs = preparedStatement.executeUpdate();
	        }catch (SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
}
