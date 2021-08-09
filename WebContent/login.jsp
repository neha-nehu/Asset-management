<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	
	<title>Login Page</title>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="js/custom.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style>
h1 {
  text-shadow: 3px 2px red;
}
.example1 {

 padding: 25px;
 
 background-size: auto;
}

  
  </style>
	

</head>

     
<body style=" background-image: url('image/loginphoto1.jpg'); width:100%;height:100%;background-repeat: no-repeat;">
<form action="Login" method="post">
       <div class="example1">
		<div class="col-md-6">			
				<h1 style="color:white;"> Help ? Desk</h1>
		
				
		</div>
</div>	
  
  
  	
	<div class="container"style="width: 400px; background-color:tomato; height: 400px; margin-top: 40px; opacity: 0.7 ;">
	 <div class="row">
		<div class="col-md-12 col-xs-12">			
				<h2> LOGIN HERE </h2>				    
				<div class="jumbotron"> 
				
							
						<div class="form-group">
					      <label for="email">Email:</label>
					      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required="required">

					    </div>
					    <div class="form-group">
					      <label for="password">Password:</label>
					      <input type="password" class="form-control" id="pass" placeholder="Enter password" name="password" required="required">
					    </div>
					    <button type="submit" name="login" class="btn btn-lg btn btn-warning btn-block" style="border-radius:10px">login</button><br>
						  <div class="form-group">
      							<a href="register.jsp" class="pull-right" >Register here ?</a> 
							</div>
						   
					</form>
				</div>
		</div>
	  </div>
	 </div>
   </body>
</html>
     