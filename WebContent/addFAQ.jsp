<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="js/custom.js"></script>
   <style>
	  h1{
	   text-shadow: 3px 2px red;
        }
	  </style>
</head>
<body>
<script>
function cancel() {
	  window.open("http://localhost:8080/project2/adminlogin.jsp");
	}
</script>
   <form action="AddFAQ" method="post">
	    <div class="container">
	        <div class="row">
	            <div class="col-md-8">
	                <h1>Help ? Desk</h1>
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
		    <div class="row" style="background-color:tomato;height:30px">
			    <p><center><b>Add FAQ<b></center></p>
			   <!-- <div class="col-md-2"><b>Home<b></div>
	            <div class="col-md-2"><b>About Us<b></div>
                <div class="col-md-2"><b>Login<b></div>
                <div class="col-md-2"><b>Register<b></div>
		        <div class="col-md-2"><b>FAQ<b></div>
                <div class="col-md-2"><b>logout<b></div>-->
            </div> 
			
			    <div class="row">
				    <div class="col-md-4">
					    <div class="container" style="margin-top:40px;"> 
                          </div>						
					     <img src="image/Aimage1.jpg" alt="image1"   width="360px" height="400px" />
					</div>	 
	                 <div class="col-md-4">
					    <div class="container" style="width:400px;height:450px;margin-top:40px;background-color:tomato;">
                            <h6><center> Add questions here</center></h6>
						    <label for="ques">FAQ Question</label>
                                <input type="text" class="form-control" id="ques"  name="ques" required="required"><br></br>
							<label for="ans">FAQ Answer</label>
                                 <textarea rows="8" cols="43" name="ans">
                                                    Enter discription here...</textarea><br></br>
													
							<button type="submit" class="btn">Save FAQ</button>
                            <button type="reset" class="btn">Reset</button>
							<button type="submit" onclick="cancel()" class="btn">Cancel</button>
							
						   
                   		</div>
                      </div>						
					 <div class="col-md-4">
					  <img src="image/image6.jpg" alt="image1"   width="340px" height="400px" margin-top="40px" />
					      </div>
			    </div>
			
                </div> 	
    	</div>			
</form>
</body>
</html>