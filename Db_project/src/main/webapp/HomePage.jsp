<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PAWS</title>
<link rel="icon" href="image/logo_web.png" type="image/logo_web">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
<link rel="stylesheet" href="HomePage.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Caveat+Brush&display=swap');
</style>
</head>
<body>

<div class="d-flex justify-content-center">
  <img src="image/logo.png" class="d-flex justify-content-center"  style="height:50px"alt="...">
</div>
<br>



<nav class="navbar navbar-expand-lg " style="background-color:#03989E">
  <div class="container-fluid d-flex justify-content-center">
 <%  if (session.getAttribute("pet_name")!=null){ String pet_name=(String)session.getAttribute("pet_name");%>
 <div class="d-flex justify-content-end">
   
      <a class="navbar-brand " href="#" style="color:white">Log Out, <%=pet_name %></a>
 </div>
 <%} %>  
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse d-flex justify-content-center" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="#" style="color:white">Home</a>
        <a class="nav-link" href="#"style="color:white">My Profile</a>
        <a class="nav-link" href="#"style="color:white">View all Vets</a>
        <a class="nav-link" href="/WEb-INF/register.jsp"style="color:white">Vet Sign in</a>
      </div>
    </div>
  </div>
</nav>









<br>
<br>

<div class="container text-center">
  <div class="row">
    <div class="col d-flex justify-content-end">

    </div>
    <div class="col">
          
    </div>
  </div>





<div class="container">
  <div class="row">
  
    <div class="col justify-content-center">
     <p class="text-center" style="font-family: 'Caveat Brush', cursive; font-size:70px; color:#03989E;">A One Stop Solution For All Your Pet Needs</p>
    </div>
    <div class="col d-flex justify-content-end ">
     <img src="image/petimage1.png" class="img-fluid" alt="...">
    </div>
    
    <div class="col ">
    
    <%
String pet_name=(String) session.getAttribute("pet_name");
    
if (session.getAttribute("pet_name")!=null){%>
<p style="color:#03989E; font-family: 'Caveat Brush', cursive; font-size:70px" >Welcome To the Paws Family, <%=pet_name %></p>

    <%} else{%>
    
    
 <form action="user_login.jsp" method="post">

     <div class="form-group row" style="margin-top:50px" >
      <label for="firstName" class="col-sm-4 col-form-label" style=" font-size:30px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Email</label>
      <div class="col-sm-7">
       <input type="email" class="form-control" name="email"
        placeholder="Enter first name">
      </div>
     </div>

     <div class="form-group row">
      <label for="OwnerName" class="col-sm-4 col-form-label" style=" font-size:30px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Password</label>
      <div class="col-sm-7">
      
       <input type="Password" class="form-control" name="password"
        placeholder="Enter Password">
      </div>
     </div>
      <button type="submit" class="btn btn-primary" style="background-color:#03989E;">Submit</button>
     </form>
     <%} %>
    </div>
  </div>


</div>
</div>
<br>


<div  class="d-flex justify-content-center" style="background-color:#03989E;">
  <h1 style=" color:white; font-family: 'Caveat Brush', cursive;">Join Your Pawsome Family Today!</h1>
</div>
<br>
<div class="container text-center">
  <div class="row">
    <div class="col d-flex justify-content-end">
    <img src="image/gallery1.jpg"  style="height:200px; padding:0; "alt="...">
    </div>
    <div class="col d-flex justify-content-center">
      <img src="image/gallery3.jpg"   style="height:200px; padding:0; margin-left=0; "alt="...">
    </div>
    <div class="col d-flex justify-content-start">
      <img src="image/gallery2.jpg"  style="height:200px; padding:0;  " alt="...">
    </div>
    <div class="col d-flex justify-content-start">
    <img src="image/gallery1.jpg"  style="height:200px; padding:0; "alt="...">
    </div>
  </div>
  <br>
    <div class="row">
    <div class="col d-flex justify-content-end">
    <img src="image/gallery1.jpg"  style="height:200px; padding:0; "alt="...">
    </div>
    <div class="col d-flex justify-content-center">
      <img src="image/gallery3.jpg"   style="height:200px; padding:0; margin-left=0; "alt="...">
    </div>
    <div class="col d-flex justify-content-start">
      <img src="image/gallery2.jpg"  style="height:200px; padding:0;  " alt="...">
    </div>
  </div>
</div>

<br>
<br>
<br>
<div  style="background-color:#03989E;">
<div  class="d-flex justify-content-center" >
 <h1 style=" color:white; font-family: 'Caveat Brush', cursive;">Book Your Appointment Today!</h1>
 </div>
<div class="container text-center">
  <div class="row">
    <div class="col">
 
  <img src="image/services_grooming.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title" style="font-family: 'Caveat Brush', cursive; font-size:40px; color:white;">Grooming Services</h5>
    <p class="card-text" style="color:white;">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Book Appointment</a>
  
</div>
    </div>
    <div class="col">
       <img src="image/services_vet.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title" style="font-family: 'Caveat Brush', cursive; font-size:40px; color:white;">Vet Services</h5>
    <p class="card-text" style="color:white">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn btn-primary">Book Appointment</a>
  </div>
</div>
    </div>
   
  </div>
</div>






</body>
</html>