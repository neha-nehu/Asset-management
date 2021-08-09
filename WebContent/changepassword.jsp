<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="js/custom.js"></script>
 	 
<title>change_password</title>
<style>
h1 {
  text-shadow: 3px 2px red;
}
#tickettype{
     width:300px;
	 }
</style>
</head>
<body>
<form action="ChangePassword" method="post">
<body>
  <div class="container">
   <div class="row">
        <div class="col-md-8">			
		<h1>HELP ? DESK</h1>
		</div>   
		<div class="col-md-2">
		    <div class="input-group">
					   <input type="text" class="form-control" placeholder="Search" id="textserach">
					       <span class="input-group-addon">
						      <i class="fa fa-search"></i>
						   
						  
 						   </span>
		   </div>
		</div>
		<div class="col-sm-2"></div>
	</div>
	<div class="container">
	    <div class ="row" style= "background-color:tomato;height:20px">
                 <div class="col-md-2">
				        <a href=""><b>Home</b></a> 
				 </div> 
				 <div class="col-md-2">
				        <a href=""><b>About us</b></a> 
				  </div>
				  
				  <div class="col-md-2">
				        <a href="user.html"><b>My Account</b></a> 
				  </div>
				 
				 <div class="col-md-2">
				        <a href="changepassword.html"><b>change password</b></a> 
				 </div>
                
				  
				  <div class="col-md-2">
				        <a href="addFAQ.html"><b>FAQ</b></a> 
				  </div>
				  <div class="col-md-2">
				        <a href=""><b>logout</b></a> 
				  </div>
				 
		</div>
    </div>
	<div class="container">
        <div class="row">
            <div class="col-md-8">
			  
                    <div class ="container" style="width:400px;height:500px;margin-top:40px;background-color:tomato";>	
					    <h6><center>change your password here</center></h6><br><br>
					    
					    <label for="email">Email</label>
                                <input type="text" class="form-control" id="email"  name="email" required="required"><br>
							<label for="password"> Old password:</label>
					      <input type="password" class="form-control" id="pass" placeholder="Enter password" name="password" required="required"><br>
							<label for="newpass">New password</label>
                                <input type="password" class="form-control" id="newpass" placeholder="Enter new password" name="newpass" required="required"><br>
							
							  <label for="conpass">Confirm password</label>
                                <input type="password" class="form-control" id="conpass" placeholder="Enter confirm password here" name="conpass" required="required"><br> 
													
							<button type="submit" class="btn">Submit</button>
                            <button type="reset" class="btn">Cancel</button>										
													

                                               										  
                                               										  
                    </div>						 
	        </div>
        
           <div class="col-md-4">
		   <img src="addticket_image.jpg" alt="image1"   width="360px" height="400px" />
		   </div>
	    </div>  
	</div> 
</div>	
</body>
</html>