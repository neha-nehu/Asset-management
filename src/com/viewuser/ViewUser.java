package com.viewuser;

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
 * Servlet implementation class ViewUser
 */
@WebServlet(
		 name = "ViewUser",
	        urlPatterns ="/ViewUser"
)
public class ViewUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("comming");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
	
	
		
		 try
         {
        	 Class.forName("com.mysql.jdbc.Driver");
        	 Connection c=DriverManager.getConnection( "jdbc:mysql://localhost:3306/neha","root","neha1212");
         PreparedStatement ps=c.prepareStatement("select * from register");
         ResultSet rs=ps.executeQuery();
         while(rs.next()){
         
         out.println("<tr bacground-color=red>");

         out.print("<td>"+rs.getString(1)+"</td>");
         out.print("<td>"+rs.getString(2)+"</td>");
         out.print("<td>"+rs.getString(3)+"</td>");
         out.print("</table>");
        
	}
         
         }
		 catch (Exception e) {
				e.printStackTrace();
			}
	}
}
		 
		 

