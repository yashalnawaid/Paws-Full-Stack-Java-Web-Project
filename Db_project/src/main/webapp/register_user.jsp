<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Pet</title>
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
<h1 style="color:#03989E; font-family: 'Caveat Brush', cursive;" >Register As A Pet!</h1>

</div>
<br>
     <label class="d-flex justify-content-center" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Already A user?<a href="#">Sign in here</a></label>

<br>
<br>


<div class="container d-flex justify-content-center" style="border-weight=5px">
 <form action="register_user_db.jsp" method="post">

     <div class="form-group row" style="margin-top:0px" >
     
      <label for="PetName" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Pet Name</label>
	
      <div class="col-sm-9">
       <input type="text" class="form-control" name="petname"
        placeholder="Enter Pet Name">
      </div>
      
     </div>

     <div class="form-group row">
      <label for="OwnerName" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Owner Name</label>
      <div class="col-sm-9">
       <input type="text" class="form-control" name="ownername"
        placeholder="Enter Owner Name">
      </div>
     </div>
     
     
     
     
     
     
      <div class="form-group row">
      <label for="email" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Email</label>
      <div class="col-sm-9">
       <input type="email" class="form-control" name="email"
        placeholder="Enter Email">
      </div>
     </div>
     
     
     
     
     
     
     
      <div class="form-group row">
      <label for="OwnerName" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Password</label>
      <div class="col-sm-9">
       <input type="Password" class="form-control" name="password"
        placeholder="Enter Password">
      </div>
     </div>
     
     
     
      <div class="form-group row">
      <label for="OwnerName" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">City</label>
      <div class="col-sm-9">
       <input type="text" class="form-control" name="city"
        placeholder="Enter City">
      </div>
     </div>
     
     
     
     
     
     
      <div class="form-group row">
      <label for="Phonenumber" class="col-sm-7 col-form-label" style=" font-size:20px; font-family: 'Caveat Brush', cursive;  
	color:#03989E;">Phone Number</label>
      <div class="col-sm-9">
       <input type="text" class="form-control" name="phonenumber"
        placeholder="Enter Phone Number">
      </div>
     </div>
     
     
     
     
     
     
     
      <button type="submit" class="btn btn-primary" style="background-color:#03989E;">Submit</button>
     
 
	
     </form>

 
</div>



</body>
</html>