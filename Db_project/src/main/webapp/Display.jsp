<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
</head>
<body>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
//String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/user";
//String database = "test";
//String userid = "root";
//String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<body>

<h1>Retrieve data from database in jsp</h1>




<%
try{
connection = DriverManager.getConnection(connectionUrl,  "yashal", "YashalNawaid");
statement=connection.createStatement();
String name="aashir";
String sql ="select * from userdata where oname='"+name+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

<div class="card" style="width: 18rem;">
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><%=resultSet.getString("pname") %></li>
    <li class="list-group-item"><%=resultSet.getString("oname") %></li>
    <li class="list-group-item"><%=resultSet.getString("email") %></li>
    <li class="list-group-item"><%=resultSet.getString("contact") %></li>
  </ul>
</div>




<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
</html>
</body>
</html>