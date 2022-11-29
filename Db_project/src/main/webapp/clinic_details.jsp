<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clinic Details</title>

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%
String name=request.getParameter("name");
String specialization=request.getParameter("specialization");
String email=request.getParameter("email");
String phone_number=request.getParameter("phonenumber");
String password=request.getParameter("password");

String vet_id="13";
try{
String connectionURL = "jdbc:mysql://localhost:3306/paws_database"; 

//declare a connection by using Connection interface 
Connection connection = null; 

//Load JBBC driver "com.mysql.jdbc.Driver" 
Class.forName("com.mysql.jdbc.Driver").newInstance(); 

connection = DriverManager.getConnection(connectionURL, "yashal", "YashalNawaid");
Statement statement = null;
ResultSet resultSet = null;
statement=connection.createStatement();
String sql ="select vet_id,count from vets where vet_id='13'";



String query = "update vets set vet_id=concat('vet-',count) where vet_id='13';";

PreparedStatement ps = null;
ps = connection.prepareStatement(query);
Statement st=connection.createStatement();
int i=st.executeUpdate("insert into vets(vet_id,name,specialization,phone_num,email, password)values('"+vet_id+"','"+name+"','"+specialization+"','"+phone_number+"','"+email+"','"+password+"')");
// check weather connection is established or not by isClosed() method 
resultSet = statement.executeQuery(sql);
String count;
while(resultSet.next()){
	
	count=resultSet.getString("count");
	session.setAttribute("count",count);
}
 

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


















<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
</head>
<body>

<div class="d-flex justify-content-center">
  <img src="image/logo.png" class="d-flex justify-content-center"  style="height:50px"alt="...">
</div>
<br>



<nav class="navbar navbar-expand-lg " style="background-color:#03989E">
  <div class="container-fluid d-flex justify-content-center">
    <a class="navbar-brand" href="#"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#" style="color:white">Home</a>
        <a class="nav-link" href="#"style="color:white">My Profile</a>
        <a class="nav-link" href="#"style="color:white">View all Vets</a>
        <a class="nav-link" href="#"style="color:white">Vet Sign in</a>
      </div>
    </div>
  </div>
</nav>


<br>
<br>

<div class="d-flex justify-content-center">
<h1 style="color:#03989E; font-family: 'Caveat Brush', cursive;" >Enter Clinic Details</h1>

</div>
<br>
     <label class="d-flex justify-content-center" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Already have an account?<a href="#">Sign in here</a></label>

<br>
<br>


<div class="container d-flex justify-content-center" style="border-weight=5px">
 <form action="clinic_db.jsp" method="post">

     <div class="form-group row" style="margin-top:0px" >
     
      <label for="PetName" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Clinic Name</label>
	
      <div class="col-sm-9 d-flex justify-content-center">
       <input type="text" class="form-control" name="clinic_name"
        placeholder="Enter Clinic Name">
      </div>
      
     </div>

     <div class="form-group row">
      <label for="OwnerName" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">city</label>
      <div class="col-sm-9">
       <input type="text" class="form-control" name="city"
        placeholder="Enter city">
      </div>
     </div>
     
     
     
     
     
     
      <div class="form-group row">
      <label for="email" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Block</label>
      <div class="col-sm-9">
       <input type="text" class="form-control" name="block"
        placeholder="Enter block">
      </div>
     </div>
     
     
     
     
     
     
     
      <div class="form-group row">
      <label for="OwnerName" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">street</label>
      <div class="col-sm-9">
       <input type="text" class="form-control" name="street"
        placeholder="Enter street">
      </div>
     </div>
     
     
      <div class="form-group row">
      <label for="Phonenumber" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">area</label>
      <div class="col-sm-9">
       <input type="text" class="form-control" name="area"
        placeholder="Enter area">
      </div>
     </div>
     
     
     
     
     
     
     
      <button type="submit" class="btn btn-primary" style="background-color:#03989E;">Submit</button>
     
 
	
     </form>

 
</div>



</body>
</html>