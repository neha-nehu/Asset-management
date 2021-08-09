package com.addFAQ;

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

/**
 * Servlet implementation class AddFAQ
 */
@WebServlet(name = "AddFAQ", urlPatterns ="/AddFAQ")
public class AddFAQ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFAQ() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String ques=request.getParameter("ques");
       String ans=request.getParameter("ans");
         
         try
         {
        	 Class.forName("com.mysql.jdbc.Driver");
        	 Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/neha","root","neha1212");
         PreparedStatement ps=c.prepareStatement("insert into faq(ques,ans) values(?,?)");
         ps.setString(1, ques);
			ps.setString(2, ans);
			int result = ps.executeUpdate();
			System.out.println("resut:  " + result);

			if (result>0) {
				out.println("questions are added successfully");
				
			}
			else
			{
				out.println("questions are not added successfully");
			}
         }
			catch (Exception e) {
				e.printStackTrace();
			}	
         }	
	}


