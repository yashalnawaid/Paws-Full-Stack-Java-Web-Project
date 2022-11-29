<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html> 
<head> 
<title>Connection with mysql database</title> 
</head> 
<body>
<h1>Connection status </h1>
<% 
try {
/* Create string of connection url within specified format with machine name, 
port number and database name. Here machine name id localhost and 
database name is usermaster. */ 
String connectionURL = "jdbc:mysql://localhost:3306/user"; 

// declare a connection by using Connection interface 
Connection connection = null; 

// Load JBBC driver "com.mysql.jdbc.Driver" 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

String name=request.getParameter("name");
String ownername=request.getParameter("ownername");
String email=request.getParameter("email");
String password=request.getParameter("password");
String contact=request.getParameter("contact");
connection = DriverManager.getConnection(connectionURL, "yashal", "YashalNawaid");
Statement st=connection.createStatement();
int i=st.executeUpdate("insert into userdata(pname,oname, password, email, contact)values('"+name+"','"+ownername+"','"+password+"','"+email+"','"+contact+"')");
// check weather connection is established or not by isClosed() method 
if(!connection.isClosed())
%>
<font size="+3" color="green"></b>
<% 
out.println("Successfully connected to " + "MySQL server using TCP/IP...");
connection.close();
}
catch(Exception ex){
	out.println(ex );
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database." );
}
%>
</font>
</body> 
</html>