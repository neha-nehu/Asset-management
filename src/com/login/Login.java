package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class Login
 */

	@WebServlet(
			 name = "Login",
		        urlPatterns ="/Login"
)
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
   
    public Login() 
    {
        super();
        
    }

	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
         String email=request.getParameter("email");
         String password=request.getParameter("password");
         String SubmitType=request.getParameter("submit");
         PrintWriter out = response.getWriter();
         
         try
         {
        	 Class.forName("com.mysql.jdbc.Driver");
        	 Connection c=DriverManager.getConnection( "jdbc:mysql://localhost:3306/neha","root","neha1212");
         PreparedStatement ps=c.prepareStatement("select email,password from register where email=? and password=?");
        
         ps.setString(1,email);
         ps.setString(2,password);
         ResultSet rs=ps.executeQuery();
        
          
        	 
         
            if(email.contentEquals("admin@teqfocus.com") && password.contentEquals("111")){
         
        	 response.sendRedirect("adminlogin.jsp");
        	 return;
            }
            else
            	if(email.contentEquals("superadmin@gmail.com") && password.contentEquals("1234")){
            		
            		 response.sendRedirect("superadmin.jsp");
                	 return;
            	}
            else
        	 {   
            	
            	HttpSession session = request.getSession();
            	session.setAttribute("email", email);
        		 response.sendRedirect("user.jsp");
        		 out.println("welcome"+email);
        		 return;
        		
        	 }
       
          
        
           
            
          
              
         
          
         
         }
        catch (ClassNotFoundException |SQLException e)
        {
        	e.getStackTrace();
        }
       
	}
}	
 

         
         
         
         
         
         
         
        