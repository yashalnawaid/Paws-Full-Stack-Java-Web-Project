<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%String count=(String)session.getAttribute("count");
out.print(count);


%>




<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%
String name=request.getParameter("clinic_name");
String city=request.getParameter("city");
String block=request.getParameter("block");
String area=request.getParameter("area");
String street=request.getParameter("street");

String clinic_id="13";
try{
String connectionURL = "jdbc:mysql://localhost:3306/paws_database"; 

//declare a connection by using Connection interface 
Connection connection = null; 

//Load JBBC driver "com.mysql.jdbc.Driver" 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 
PreparedStatement ps = null;
connection = DriverManager.getConnection(connectionURL, "yashal", "YashalNawaid");
Statement statement = null;
ResultSet resultSet = null;
statement=connection.createStatement();
String sql ="select vet_id,count from vets where count='"+count+"'";
resultSet = statement.executeQuery(sql);
ps = connection.prepareStatement(sql);
//ps.setString(1,count);


String query = "update clinic set clinic_id=concat('clinic-',count) where clinic_id='13';";

//PreparedStatement ps = null;
ps = connection.prepareStatement(query);
//ps.setString(1,count);
Statement st=connection.createStatement();

// check weather connection is established or not by isClosed() method 

String vet_count="";
String vet_id="";
while(resultSet.next()){
	
	vet_count=resultSet.getString("count");
	vet_id=resultSet.getString("vet_id");
	
}
int counter =Integer.parseInt(vet_count);

int i=st.executeUpdate("insert into clinic(clinic_id,name,city,block,street,area,vet_id,vet_count)values('"+clinic_id+"','"+name+"','"+city+"','"+block+"','"+street+"','"+area+"','"+vet_id+"','"+counter+"')");
 

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