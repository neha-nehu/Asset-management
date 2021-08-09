<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <script src="js/custom.js"></script>
	 
<title>User login here</title>
<style>

h1 {
  text-shadow: 3px 2px red;
}
</style>

</head>
<body>
<script>
function addFunction() {
  window.open("http://localhost:8080/project2/addticket.jsp");
}
function myFunction() {
	  window.open("http://localhost:8080/project2/user.jsp");
	}
function changeFunction() {
	window.open("http://localhost:8080/project2/changepassword.jsp");
}
function viewFunction() {
	window.open("http://localhost:8080/project2/view.jsp");
}

</script>
<form action="User" method="post">
<div class="container">

	<div class="row">
        <div class="col-md-8">
		    <h1> Help ? Desk</h1></div>
                <div class="col-sm-2"></div>
			        <div class="col-sm-2">
			            <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search" id="textserach">
					            <span class="input-group-addon">
                                    <i class="fa fa-search"></i>
						   
						  
 						        </span>
						  
					 
					    </div>
			   
			        </div>
	    </div><br></br>	
		
	   
	
			
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
				    <a href="user.jsp"><b>My Account</b>
				</div>
				<div class="col-md-2">
				   <a href="changepassword.jsp"><b>change password</b>
				</div>
				<div class="col-md-2">
				    <a href=""><b>logout</b>
		        </div>
		</div>
				 
	<input type="button" value="Creazione Nuovo Corso" name="CreateCourse" 
onclick="document.forms[0].action = 'CreateCourse.jsp'; return true;" />
	 <div class="row">
	      
		<div class="col-md-4">
		       <div class="container"style="width: 400px; background-color:tomato; height: 400px; margin-top: 40px; opacity: 0.7 ;"><br></br>
				<!-- <button onclick="myFunction()">Try it</button>	 -->   
				 <button type="submit" name="addticket" id="addticket" onclick="addFunction()" class="btn btn-lg btn btn btn-block" style="border-radius:10px">Add Ticket</button><br></br>
				   <button name="action" value="myticket" class="btn btn-lg btn btn-block" >My Ticket</button><br>
				   <button name="action" value="faq" class="btn btn-lg btn btn btn-block" style="border-radius:10px">FAQ</button><br></br>
				    <button type="submit" name="changepassword"  id="changepassword"  onclick="changeFunction()" class="btn btn-lg btn btn btn-block" style="border-radius:10px">Change password</button><br></br>
		         </div>
		 </div> 
		 <div class="col-md-2"></div>       
		 <div class ="col-md-6">
		     <h3><center> Welcome to your  Ticket profile</center></h3><br></br>	
                   <img src=".jpg" alt="image1"width="360px" height="400px" />
		  </div>
	</div>
  </div> 
  </form>	
</body>
</html>	 