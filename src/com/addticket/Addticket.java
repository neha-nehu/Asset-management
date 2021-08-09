package com.addticket;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Addticket
 */
@WebServlet(name = "Addticket", urlPatterns = "/Addticket")
public class Addticket extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addticket() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
	     String ticket_type=request.getParameter("ticket_type");
         String discri=request.getParameter("discri");
         HttpSession session=request.getSession(false);  
         String n=(String)session.getAttribute("email");  
         out.println("Username  :" +n);
         try
         {
        	 Class.forName("com.mysql.jdbc.Driver");
        	 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/neha","root","neha1212");
        	  PreparedStatement ps = con.prepareStatement("insert into ticket(ticket_type,discri,email) values(?,?,?)");
 					
        	
             ps.setString(1,ticket_type);
             ps.setString(2,discri);
             ps.setString(3,n);
              
             int result = ps.executeUpdate();
 			System.out.println("resut:  " + result);
             
 			if (result>0) {
				out.println("you are successfully add the data");
			} else {

				out.println("need to referesh again");
			}
         
         }
 			  catch (Exception e) {
 		 			
 		 			e.printStackTrace();
 		 		}
		} 
	}


