package StudentDao;

import java.sql.Connection;
import java.sql.DriverManager;

public class StudentDao {

	
	public static Connection getConnection() {
		
		
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project1" , "root" , "Mahesh10");
			
			
			
		} catch (Exception e) {
			
			System.out.println(e);
			
		}
		
		return con;
		
		
		
		
	}
	
	
}
