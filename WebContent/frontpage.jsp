<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>It Assest Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <style>
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    footer {
      background-color: #f2f2f2;
      padding: 15px;
    }
    
  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      min-height:200px;
  }

  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
  }
  </style>
</head>
<body>
<form action ="Adminlogin" method="post">
 <script>
function login() {
  window.open("http://localhost:8080/project2/login.jsp");
  function register() {
	  window.open("http://localhost:8080/project2/register.jsp");
	} 
  
}
</script>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
    </div>
  </div>
</nav>

<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="image/front2.jpg" alt="Image">
        <div class="carousel-caption">
          <h2>IT Assest Management</h2>
          <p>Community based support</p>
        </div>      
      </div>

      <div class="item">
        <img src="image/front.jpg" alt="Image">
        <div class="carousel-caption">
          <h3>IT Assest Management</h3>
          <p>Help desk</p>
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">    
  <h3>May I Help You</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="image/faq.jpg" class="img-responsive" style="width:50%" alt="Image">
      <p></p>
    </div>
    <div class="col-sm-4"> 
<p><img src="image/support.jpg" class="img-responsive" style="width:50%" alt="Image">Support</p>
      <p>Support</p>    
    </div>
    <div class="col-sm-4">
     
      <button type="submit" onclick="login()" class="btn btn-lg btn btn-danger btn-block" style="border-radius:10px">Login</button><br><br>
      <button type="submit" onclick="register()"class="btn btn-lg btn btn-danger btn-block" style="border-radius:10px">Register yourself</button><br>
      </div>
    </div>
  </div>
</div><br>

<footer class="container-fluid text-center">
  <p>Created by Neha </p>
</footer>
</form>
</body>
</html>