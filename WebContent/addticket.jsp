<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>add ticket</title>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="js/custom.js"></script>
<style>

h1 {
  text-shadow: 3px 2px red;
}
#tickettype{
     width:300px;
	 }
a:link {
  color: Black;
  
  text-decoration: underline;
}	 
 
</style>


</head>

<body>
<script>
function resetFunction() {
  window.open("http://localhost:8080/project2/user.jsp");
}
</script>
<form action="Addticket" method="post">
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
	    <div class ="row" style= "background-color:tomato;height:20px";>
                 <div class="col-md-2">
				        <a href=""><b>Home</b></a> 
				 </div> 
				 <div class="col-md-2">
				        <a href=""><b>About us</b></a> 
				  </div>
				  
				  <div class="col-md-2">
				        <a href="user.jsp"><b>My Account</b></a> 
				  </div>
				 
				 <div class="col-md-2">
				        <a href="changepassword.jsp"><b>change password</b></a> 
				 </div>
                
				  
				  <div class="col-md-2">
				        <a href="addFAQ.jsp"><b>FAQ</b></a> 
				  </div>
				  <div class="col-md-2">
				        <a href=""><b>logout</b></a> 
				  </div>
				 
		</div>
    </div>
	<div class="container">
        <div class="row">
            <div class="col-md-8">
			    <h6><center>May I HelP You???</center></h6>
                    <div class ="container" style="width:400px;height:450px;margin-top:40px;background-color:tomato">	
					    <h6><center>May I HelP You???</center></h6><br>
					      
					      <label for="ticket_type">Ticket Type</label>
                                <input type="text" class="form-control" id="ticket_type"  name="ticket_type" required="required"><br></br>
							<label for="discri">Description</label>
                                 <textarea rows="4" cols="50" name="discri">
                                                    Enter description here...</textarea><br></br>
													
							<button type="submit" class="btn">Submit</button>
                            <button type="submit" onclick="resetFunction()" class="btn">Cancel</button>										
													

                                               										  
                                               										  
                    </div>						 
	        </div>
        
           <div class="col-md-4">
		   <img src="image/addticket_image.jpg" alt="image1"  width="360px" height="400px" />
		   </div>
	   </div>  
	</div> 
</div>	
</form>
</body>
</html>