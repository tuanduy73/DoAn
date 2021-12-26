package QuanLi;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Table.Contact;
import Table.Gaming;

public class ContactDao {
	public List<Contact> getAllContacts() 
    {
        List<Contact> contact = new ArrayList<Contact>();
        
        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
        
        String sql ="SELECT * FROM CONTACT";
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            
            ResultSet rs = preparedStatement.executeQuery();
            
            while (rs.next())
            {
                
                Contact contact1 = new Contact();
                
                contact1.setName(rs.getString("name"));
                contact1.setEmail(rs.getString("email"));
                contact1.setPhone(rs.getString("phone"));
                contact1.setText(rs.getString("text"));
                contact1.setDay(rs.getDate("days"));
                
                contact.add(contact1);
               
            }
           
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return contact;
    }
 	
	 public void addContact (Contact contact)
	    {
	        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
	        
	        String sql1 =" INSERT INTO CONTACT(name, email, phone, text) VALUES (?,?,?,?) ";
	        
	        try{
	            PreparedStatement preparedStatement = connection.prepareStatement(sql1);
	            preparedStatement.setString(1, contact.getName());
	            preparedStatement.setString(2, contact.getEmail());
	            preparedStatement.setString(3, contact.getPhone());
	            preparedStatement.setString(4, contact.getText());
	            
	            
	            
	            int rs = preparedStatement.executeUpdate();
	            System.out.println(rs);
	            
	        }catch(SQLException e)
	        {
	            e.printStackTrace();
	        }
	    }
	

    public void deletaContact(String name)
    {
        Connection connection = JDBC.JDBCConnection.getJDBCConnection();
        
        String sql3 = "DELETE FROM CONTACT WHERE name = ?";
        
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql3);
            preparedStatement.setString(1, name);
            int rs = preparedStatement.executeUpdate();
            System.out.println(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
