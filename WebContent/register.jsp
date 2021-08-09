<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="js/custom.js"></script>	
<title>Registration page</title>
</head>

<!--  <script>
function validate()
{
	var fname = document.form.fname.value;
	var middlename=document.form.middlename.value;
	var lname =document.form.lname.value;
	var email=document.form.email.value;
	var password=document.form.password.value;
	}
</script> -->


 <style>
     h1 {
  text-shadow: 3px 2px red;
}
#fname{ margin-left: 51px; }
  #midddlename{ margin-left: 35px; }
  #lname { margin-left: 60px; }
  #email { margin-left: 82px; }
   #password { margin-left: 60px; }
  #pass{ margin-left: 30px; }
   #empid { margin-left: 60px; }
 
  
  
  
</style>
</head>
<body style=background-image:url('image/blur.jpg')>
     
<form action="Register" method="post">
<script>
function cancel() {
	  window.open("http://localhost:8080/project2/frontpage.jsp");
	} 
</script>
    <div class="container">
       <div class="row">
             <div class="col-md-8">			
		          <h1>HELP ? DESK</h1>
		     </div>   
		     <div class="col-md-4"></div>
		     <!--      <div class="input-group">
					   <input type="text" class="form-control" placeholder="Search" id="textserach" required >
					       <span class="input-group-addon">
						      <i class="fa fa-search"></i>  -->
						   
						  
 						   
	      </div>
	 </div>
	  
		
	    <div class ="row" style= "background-color:Black;height:25px">
                <div class="col-md-1">
				    <a href="frontpage.jsp"><b>Home</b></a>
			    </div> 
				<div class="col-md-1">
				    <a href=""><b>About Us</b></a>
				</div>
                <div class="col-md-1">
				    <a href=""><b>FAQ</b></a>
				</div>
				<div class="col-md-9"></div>
		</div><br>		
	 <div class="row">
		     <div class="col-md-4">
		            
		     </div>
		      
		     <div class="col-md-4">
		          <div class ="container" style="width:400px;height:400px;background-color:White">
		                <p>Register yourself here...</p>
		                 <label for="fname">First Name</label>&nbsp
					              <input type="text" id="fname" placeholder="Enter First Name" name="fname" size="20" required="required"><br></br>			
       	          
                          <label for="middlename">Middle Name:</label>&nbsp 
					             <input type="text" id="midddlename" placeholder="Enter Middle Name" size="20" name="middlename"><br></br>	
                  
                          
                               <label for="lname">Last Name</label>&nbsp 
					             <input type="text" id="lname" placeholder="Enter last Name" name="lname"><br></br>
						
				          	
				        
					            <label for="email">Email:</label>&nbsp
					               <input type="email" id="email" placeholder="Enter email" name="email" required="required"><br></br>

					
					
					          <label for="password">Password:</label>
					                <input type="password"id="password" placeholder="Enter password" name="password" required="required"><br></br>
					
						
						 <label for="psw-repeat">Repeat Password</label>
                                    <input type="password" id="pass" placeholder="Enter password" name="pass" size="20" required="required"><br></br>
							 
          
						  <label for="empid">Employee Id</label>
						   <input type="text" id="empid" placeholder="Enter employee id" name="empid" size="20" required="required"><br></br>
						   <button type="submit" class="btn btn-warning">Register</button>
						      <button type="submit" onclick="cancel()"class="btn btn-danger" style="border-radius:10px">Cancel</button><br>  
                              <a href="login.jsp" class="pull-right" >want to login??</a> 
					   
		                
		          </div> 
		     </div>
		      <div class="col-md-4"><br></br></div>
		</div>
		   
	      
 </form>      
</body>
</html>