package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.jdbc.result.ResultSetMetaData;

/**
 * Servlet implementation class User
 */

@WebServlet(
		 name = "User",
	        urlPatterns ="/User"
)
public class User extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public User() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String action=request.getParameter("action");
		
		     try 
		    {
			    Class.forName("com.mysql.jdbc.Driver");
		
    	 Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/neha","root","neha1212");
        
    	 if("myticket".equals(action)){
    	 
    	 
    	 PreparedStatement ps=con.prepareStatement("select ticket.ticket_id,ticket.ticket_type,ticket.discri "
         		+ "from ticket INNER JOIN register"
         		+ " ON register.email=ticket.email");
        
         out.print("<table width=25% border=1>");
         out.print("<center><h1> your generated ticket:</h1></center>");
         ResultSet rs=ps.executeQuery();
         ResultSetMetaData rsmd=(ResultSetMetaData) rs.getMetaData();
         int total=rsmd.getColumnCount();  
         out.print("<tr>");  
         for(int i=1;i<=total;i++)  
         {  
         out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
         }  
           
         out.print("</tr>");  
         while(rs.next())  
         {  
         out.print("<tr><td>"+rs.getInt(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td></tr>");  
                           
         }  
           
         out.print("</table>");  
         
    	 }
    	 else
 		{
 			if("faq".equals(action)){
 				
 				PreparedStatement ps=con.prepareStatement("select * from faq");
 		         out.print("<table width=25% border=1>");
 		         out.print("<center><h1> common asked Question with relevent answer:</h1></center>");
 		         ResultSet rs=ps.executeQuery();
 		         ResultSetMetaData rsmd=(ResultSetMetaData) rs.getMetaData();
 		         int total=rsmd.getColumnCount();  
 		         out.print("<tr>");  
 		         for(int i=1;i<=total;i++)  
 		         {  
 		         out.print("<th>"+rsmd.getColumnName(i)+"</th>");  
 		         }  
 		           
 		         out.print("</tr>");  
 		         while(rs.next())  
 		         {  
 		         out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td></tr>");  
 		                           
 		         }  
 		           
 		         out.print("</table>");  
 		         
 		    	 }	
 				
 				   
		    }
         
 		
		    }	 
    	        
		     catch (Exception e) {
					e.printStackTrace();
				}

		  }
	}


