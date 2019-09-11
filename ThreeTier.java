import java.sql.*;
public class ThreeTier {
	public static void main(String[] args) {
		try{
			Class.forName("com.mysql.cj.jdbc.Driver"); //This is the new class name for version 8
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cs157a","root",""); //I dont have a password
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from student");
			while(rs.next()) 
			{
				System.out.println("ID: " + rs.getInt(1) + ", Name: " + rs.getString(2) 
									+ ", Grade: " + rs.getInt(3) + ", School: " + rs.getString(4));
				System.out.println("----------------------------------------------------");
			}
		}
		catch(Exception e) {
			System.out.print(e);
		}
	}
}
