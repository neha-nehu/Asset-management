<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<title>Admin Login Page</title>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>

	
h1 {
  text-shadow: 3px 2px red;
  text-align:12px;
}
#tickettype{
     width:300px;
	 }
#b1{
 text-align:italic;  
}
.p1{
 text-align:italic;
 text-align:center;
 }
 .col-md-2
 {
    text-align:italic;
	}
    
	.center {
  text-align: center;
  color:black;
}

	 
</style>

</head>
 <body>
 <form action ="Adminlogin" method="post">
 <script>
function addUser() {
  window.open("http://localhost:8080/project2/register.jsp");
}

function addFunction() {
	  window.open("http://localhost:8080/project2/addticket.jsp");
	}
function FAQFunction() {
	  window.open("http://localhost:8080/project2/addFAQ.jsp");
	}	

</script>
  <div class="container">
   <div class="row">
        <div class="col-md-8">			
		<h1>HELP ? DESK</h1>
		</div>   
		<div class="col-md-4">
		    <div class="input-group">
					   <input type="text" class="form-control" placeholder="Search" id="textserach">
					       <span class="input-group-addon">
						      <i class="fa fa-search"></i>
						   
						  
 						   </span>
		   </div>
		</div>
	</div>	
		    <div class ="row" style= "background-color:tomato;height:25px";>
                <div class="col-md-2">
				    <a href=""><b>Home</b>
			    </div> 
				<div class="col-md-2">
				    <a href=""><b>About Us</b>
				</div>
                <div class="col-md-2">
				    <a href=""><b>FAQ</b>
				</div>
				<div class="col-md-2">
				    <a href="user.html"><b>My Account</b>
				</div>
				<div class="col-md-2">
				   <a href="changepassword.jsp"><b>change password</b>
				</div>
				<div class="col-md-2">
				    <a href=""><b>logout</b>
		        </div>
		</div>
       
            <div class="row">
                <div class="col-md-4"> <br></br>
				    <div class="container" style="background-color:tomato; width:400px;height:450px";><br><br><br> 
                  
				    <button type="submit"id="b1" onclick="addUser()" class="btn btn-lg btn btn-block">Add user</button>
					<button type="submit" name="submit" onclick="addFunction()" class="btn btn-lg btn btn btn-block">Add Ticket</button>
					 <button type="submit"id="b1" onclick="FAQFunction()"  class="btn btn-lg btn btn-block">Add FAQ</button><br><br>
					<button name="action" value="viewuser" class="btn btn-lg btn btn-block" >View User</button>
					<button name="action" value="viewticket" class="btn btn-lg btn btn-block" >View Ticket</button>
                    <button name="action" value="viewfaq" class="btn btn-lg btn btn-block" >View FAQ</button>
                            
                    </div>        
                 </div>
            
				<div class="col-md-2"></div>
				 <div class="col-md-4">
				 <h3 class="center">Welcome!!! you are login as Admin</h3>
				 <img src="image/image2.jpg" alt="image1"   width="360px" height="400px" />
                </div>	
            </div>
  </div>
  </form>
</body>
</html>