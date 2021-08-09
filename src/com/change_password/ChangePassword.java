package com.change_password;

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

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet(name = "ChangePassword", urlPatterns = "/ChangePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String password=request.getParameter("password");
		String Newpass=request.getParameter("newpass");
		String conpass=request.getParameter("conpass");
		
		int count=0;
		String pass="";
		String id="";
		try{
			 Class.forName("com.mysql.jdbc.Driver");
        	 Connection c=DriverManager.getConnection( "jdbc:mysql://localhost:3306/neha","root","neha1212");
         PreparedStatement ps=c.prepareStatement("update register "
	                 + " set password=? "
				     + " where email=? and password=?");
         ps.setString(1,Newpass);
	       ps.setString(2,email);
	       ps.setString(3,password);
	          if(password.equals(Newpass))
	        { 
	        	  out.println("current and old password is same");
	        }
	               
	          else
	          {
	              if(password.equals(conpass))
	              {
	             count=ps.executeUpdate();
	              System.out.println("count: "+count);
	              }
	              else
	              {
	            	  out.println("current and confirm password are not match");
	              }
	       if(count>0)
		      {
		    	  out.println("password successfully changed");
		      }
		      else
		      {
		       out.println("unable to change password, provide right credential");
		      }
		}
		} 
		catch(Exception e){
		out.println(e);
		}
	}
}

		
		
		