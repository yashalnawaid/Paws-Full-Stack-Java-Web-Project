<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 










<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">PAWS</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Dashboard</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Login</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Near Me
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<br>
<br>
<div class="container text-center">
  <div class="row">
    <div class="col">
 
    
    
    
    
    
    
    
    
    
    <div class="container">
    <h1> Register as a Pet!</h1>
  <div class="card">
   <div class="card-body">
    <form action="DB.jsp" method="post">

     <div class="form-group row">
      <label for="firstName" class="col-sm-4 col-form-label">Name</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="name"
        placeholder="Enter first name">
      </div>
     </div>

     <div class="form-group row">
      <label for="OwnerName" class="col-sm-4 col-form-label">Owner's Name</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="ownername"
        placeholder="Enter last name">
      </div>
     </div>

     <div class=" form-group row">
      <label for="email" class="col-sm-4 col-form-label">Email</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="email"
        placeholder="Enter email">
      </div>
     </div>

     <div class="form-group row">
      <label for="lastName" class="col-sm-4 col-form-label">Password</label>
      <div class="col-sm-7">
       <input type="password" class="form-control" name="password"
        placeholder="Enter Password">
      </div>
     </div>

     <div class="form-group row">
      <label for="lastName" class="col-sm-4 col-form-label">Address</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="address"
        placeholder="Enter Address">
      </div>
     </div>

     <div class="form-group row">
      <label for="contact" class="col-sm-4 col-form-label">Contact
       No</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="contact"
        placeholder="Enter Contact Address">
      </div>
     </div>
     <div class="form-group row">
      <label for="contact" class="col-sm-4 col-form-label">Gender</label>
      <div class="col-sm-7">
       <input type="text" class="form-control" name="contact"
        placeholder="Enter Contact Address">
      </div>
     </div>

     <button type="submit" class="btn btn-primary">Submit</button>
    </form>
   </div>
  </div>
 </div>
    
    
    
    
    
    
    
    </div>
    <div class="col order-5">
      <img src="image/picture_1.jpg" class="img-fluid" alt="this is an image">
    </div>
   
  </div>
</div>













