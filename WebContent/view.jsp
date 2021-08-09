<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page language="java" import="java.util.*" %>
    <%@page import="java.util.Iterator" %>
<%@page import="java.util.List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	 <script src="js/custom.js"></script>
<title>view your ticket here</title>
<style>

h1 {
  text-shadow: 3px 2px red;
}
</style>
</head>
<body>
<form action="View" method="post">
<div class="container">

	<div class="row">
        <div class="col-md-8">
		    <h1> Help ? Desk</h1></div>
                <div class="col-sm-2"></div>
			        <div class="col-sm-2"></div>
			           
						  
 						      
	 </div>
    	 <div class ="row" style= "background-color:tomato;height:25px";>
           <h3><center>  view your ticket details here</center></h3>
           </div><br><br><br>
         
      <div class="row"> 
      
          <div class="col-md-2"></div>
		 <div class="col-md-8">
		     <table  border="1" width="500">
		     <tr>
               <td width="200"><b>EMPLOYEE ID</b></td>
                 <td width="200"><b>TICKET_TYPE</b></td>
                    <td width="200"><b>DESCRIPTION</b></td>
                </tr>
           



    <%Iterator itr;%>
    <%List data = (List)request.getAttribute("jobsData");
    for(itr = data.iterator(); itr.hasNext();){
        %>
<tr>
<td width="119"><%=itr.next()%></td>
<td width="168"><%=itr.next()%></td>
</tr>
<%}%>

</tr>

%>
</table>
 </div>
	      <div class="col-md-2"></div>
</div>
</form>
</body>
</html>