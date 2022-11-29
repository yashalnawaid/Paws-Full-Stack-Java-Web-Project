<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%
String pet_name=request.getParameter("petname");
String owner_name=request.getParameter("ownername");
String email=request.getParameter("email");
String phone_number=request.getParameter("phonenumber");
String password=request.getParameter("password");
String city=request.getParameter("city");
String pet_id="13";
try{
String connectionURL = "jdbc:mysql://localhost:3306/paws_database"; 

//declare a connection by using Connection interface 
Connection connection = null; 

//Load JBBC driver "com.mysql.jdbc.Driver" 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

connection = DriverManager.getConnection(connectionURL, "yashal", "YashalNawaid");
String query = "update pets set pet_id=concat('pet-',count);";
PreparedStatement ps = null;
ps = connection.prepareStatement(query);
Statement st=connection.createStatement();
int i=st.executeUpdate("insert into pets(pet_id,pet_name,owner_name,city,phone_num,email, password)values('"+pet_id+"','"+pet_name+"','"+owner_name+"','"+city+"','"+phone_number+"','"+email+"','"+password+"')");
// check weather connection is established or not by isClosed() method 

 

	      // send and execute SQL query in Database software
	      //ResultSet rs = st.executeQuery(query); 

int n = ps.executeUpdate();
if(n > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 


if(!connection.isClosed())
%>
<font size="+3" color="green"></b>
<% 

//out.println("Successfully connected to " + "MySQL server using TCP/IP...");
out.println("Sign Up Successful!");

connection.close();
//response.sendRedirect("homepage.jsp");

}
catch(Exception ex){
	out.println(ex );



out.println("Unable to connect to database." );
}

%>
<a href="hompage.jsp">Go to Sign In Page</a>
</body>
</html>