<%@ page import="java.sql.*" %> 

<html>
<head>
<title>JDBC Connection example</title>
</head>
<body>
<h1>JDBC Connection example</h1>
<%  
	String user = "root";
	String db = "cs157a";
	String driverClass = "com.mysql.cj.jdbc.Driver";
	try {
		Class.forName(driverClass); 
		java.sql.Connection con;

		con = DriverManager.getConnection("jdbc:mysql://localhost/" + db, user, db); 
		out.println(db + " database successfully opened."); 
%>
<br><br>
<%
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from student");
		while(rs.next()){
			out.println("ID: " + rs.getInt(1) + ", Name: " + rs.getString(2) 
									+ ", Grade: " + rs.getInt(3) + ", School: " + rs.getString(4));
%>
<br>
<%
		}
	} 
	catch(SQLException e) 
	{ 
		out.println("SQLExceptioncaught: " + e.getMessage()); 
	} 
%> 
</body>
</html> 
