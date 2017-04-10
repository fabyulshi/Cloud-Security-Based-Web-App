package databaseconnection;
import java.sql.*;

public class database
{
	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/faulttollerance","root","");
		}
		catch(Exception e)
		{
			System.out.println("no class found........");
		}
		return con;
	}
	
}
