package com.superadmin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Superadmin
 */
@WebServlet("/Superadmin")
public class Superadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Superadmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		int empId = 0;
		int t1=0;
		 try
         {
        	 Class.forName("com.mysql.jdbc.Driver");
        	 Connection c=DriverManager.getConnection( "jdbc:mysql://localhost:3306/neha","root","neha1212");
         
		
		
		if("viewuser".equals(action)){
			   
	        
	         PreparedStatement ps=c.prepareStatement("select * from register");
	       
	         out.print("<table width=50% border=1>");  
	         out.print("<caption>View User List:</caption>");
	         ResultSet rs=ps.executeQuery();  
             
	      
	         ResultSetMetaData rsmd=rs.getMetaData();  
	         int total=rsmd.getColumnCount();  
	         out.print("<tr>");  
	         for(int i=1;i<=total;i++)  
	         {  
	         out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
	         }  
	         out.print("<th>"+"Action"+"</th>");  
		     
	         out.print("</tr>");  
	         while(rs.next())  
	         { 
	        out.print("<tr>");	 
	         out.print("<td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+
	         "</td><td>"+empId+"</td><td>"+rs.getInt(7)+"</td>");
	         out.print("<td>"+"<button>edit</button>"+"</td>");
	         out.println("<td>"+" <button name="+"action"+" value="+"delete"+" class="+"btn"+">delete</button>");
	         out.println("<td>"+"<a href="+"login.jsp"+"'><button name='delete'>delete</button></a>");
		            
	         if("delete".equals(action)){
	        	   PreparedStatement ps6=c.prepareStatement("delete from register");
	    	       
	  	        
	  	         ps6.executeQuery();  
	        	 out.println("data are deleted");
	         }
	         
	         out.print("</tr>");                  
	         }  
	           
	         out.print("</table>");  
	        
		}
		else
		{
			if("viewticket".equals(action)){
				   
		       
		         PreparedStatement ps1=c.prepareStatement("select *from ticket");
		         out.print("<table width=50% border=1>");  
		         out.print("<caption>View Ticket List:</caption>");
		         ResultSet rs1=ps1.executeQuery();  
		         ResultSetMetaData rsmd1=rs1.getMetaData();  
		         int tot=rsmd1.getColumnCount();  
		         out.print("<tr>");  
		         for(int i=1;i<=tot;i++)  
		         {  
		         out.print("<th>"+rsmd1.getColumnName(i)+"</th>");  
		         }  
		           
		         out.print("</tr>");  
		         while(rs1.next())  
		         {  
		         out.print("<tr><td>"+rs1.getString(1)+"</td><td>"+rs1.getString(2)+"</td><td>"+rs1.getString(3)+"</td><td>"+rs1.getString(4)+
		         "</td><td>"+rs1.getInt(5)+"</td></tr>");  
		                           
		         }  
		           
		         out.print("</table>");  
		         
		        
		         
			}
			else
			{
				if("viewfaq".equals(action)){
					   PreparedStatement ps2=c.prepareStatement("select* from faq");
				         out.print("<table width=50% border=1>");  
				         out.print("<caption>View Ticket List:</caption>");
				         ResultSet rs2=ps2.executeQuery();  
				         ResultSetMetaData rsmd3=rs2.getMetaData();  
				         int lenght=rsmd3.getColumnCount();  
				         out.print("<tr>");  
				         out.print("<th>"+"Questions"+"</th>");  
				         out.print("<th>"+"Answer"+"</th>");  
				         out.print("<th>"+"Action"+"</th>");  
					     
				         out.print("</tr>");  
				         while(rs2.next())  
				         {  
				        	  out.print("<tr>");  
				        	  out.print("<td>"+"rs1.getString(1)"+"</td>"); 
				        	  out.print("<td>"+"rs1.getString(2)"+"</td>");
				        	  out.print("<td"+"<button>edit</button>"+"</td>");
				        
				         }  
				           
				         out.print("</table>");  
					
				}
			
				
			}
		}
         }

         catch (ClassNotFoundException |SQLException e)
         {
         	e.getStackTrace();
         }
	}
}	
			
				
		
		
		   
            	 
             
       
	


