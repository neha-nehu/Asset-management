package com.adminlogin;

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
 * Servlet implementation class Adminlogin
 */
@WebServlet("/Adminlogin")
public class Adminlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminlogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String action=request.getParameter("action");
		
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
	           
	         out.print("</tr>");  
	         while(rs.next())  
	         {  
	         out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+
	         "</td><td>"+rs.getString(5)+"</td><td>"+rs.getInt(6)+"</td></tr>");  
	                           
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
		         ResultSetMetaData rsmd=rs1.getMetaData();  
		         int total=rsmd.getColumnCount();  
		         out.print("<tr>");  
		         for(int i=1;i<=total;i++)  
		         {  
		         out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
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
					   PreparedStatement ps2=c.prepareStatement("select *from faq");
				         out.print("<table width=50% border=1>");  
				         out.print("<caption>View Ticket List:</caption>");
				         ResultSet rs2=ps2.executeQuery();  
				         ResultSetMetaData rsmd=rs2.getMetaData();  
				         int total=rsmd.getColumnCount();  
				         out.print("<tr>");  
				         for(int i=1;i<=total;i++)  
				         {  
				         out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
				         }  
				           
				         out.print("</tr>");  
				         while(rs2.next())  
				         {  
				         out.print("<tr><td>"+rs2.getString(1)+"</td><td>"+
				         "</td><td>"+rs2.getInt(2)+"</td></tr>");  
				                           
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