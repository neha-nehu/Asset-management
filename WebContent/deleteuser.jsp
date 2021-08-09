<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="js/custom.js"></script>
<title>Insert title here</title>
</head>
<body>
<form action ="Deleteuser" method="post">
<h3><center>delete User</center></h3>
  <div class="row"><br><br><br>
                 <div class="col-md-4"></div>
                <div class="col-md-4"> <br></br>
				    <div class="container" style="background-color:tomato; width:400px;height:450px";><br><br><br>
	  <label for="empid">Enter User Employee_id:</label><br><br>
	<input type="text" class="form-control" placeholder="Enter user Employee_id " name="empid"><br><br>		     
         <button type="submit" name="deleteuser" class="btn">delete user</button>

</div>
</div>
           <div class="col-md-4"></div>
</div>
</form>
</body>
</html>