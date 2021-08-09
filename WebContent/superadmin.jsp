<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Super Admin Login Page</title>
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
  <style>
  
  h1 {
  text-shadow: 3px 2px red;
}
  </style>

</head>


<body>

 <form action ="Superadmin" method="post">
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
			
			<div class="row" style= "background-color:tomato;height:25px">
			    
                
            </div>	
		    <div class="row">
                <div class="col-md-8">
				    <div class="container" style="width:400px;height:400px;margin-top:40px;background-color:tomato"><br>
					 <button name="action" value="viewuser" class="btn btn-lg btn btn-block" >View User</button><br>
					 <button name="action" value="viewticket" class="btn btn-lg btn btn-block" >View ticket</button><br>
					 <button name="action" value="viewFAQ" class="btn btn-lg btn btn-block" >View FAQ</button><br>
					    <div class="dropdown">
                               <button name="action" value="add"class="btn btn-lg btn btn-block dropdown-toggle" type="button" data-toggle="dropdown">Add
						       
                                <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                       <li><a href="register.jsp">Add User</a></li>
                                            <li><a href="addticket.jsp">Add Ticket</a></li>
                                                 <li><a href="addFAQ.jsp">Add FAQ</a></li>
                                    </ul>
                        </div><br></br>
						<div class="dropdown">
                               <button name="action"value="delete"class="btn btn-lg btn btn-block dropdown-toggle" type="button" data-toggle="dropdown">Delete
						 
                                <span class="caret"></span></button>
                                    <ul class="dropdown-menu">
                                       <li><a href="deleteuser.jsp">Delete User</a></li>
                                            <li><a href="#">Delete Ticket</a></li>
                                                 <li><a href="#">Delete FAQ</a></li>
                                    </ul>
                        </div>
						
                   </div>

                     				 
			    </div>
            	
                <div class="col-md-4">
		         <h3><center> Welcome to IT Help Desk As Super Admin</center></h3>
				 <img src="image/Aimage1.jpg" alt="image1" width="360px" height="400px" />
                  </div>
			</div>
		</div> 
	</form>	
	</body>
</html>	
