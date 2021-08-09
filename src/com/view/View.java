package com.view;

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
 * Servlet implementation class View
 */
@WebServlet(
		 name = "View",
	        urlPatterns ="/View"
)
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		

	
		
		
		try 
		    {
			    Class.forName("com.mysql.jdbc.Driver");
		
  	 Connection con=DriverManager.getConnection( "jdbc:mysql://localhost:3306/neha","root","neha1212");
       PreparedStatement ps=con.prepareStatement("select empid,ticket_type,discri from ticket");
       out.print("<table width=25% border=1>");
       out.print("<center><h1>View ticket:</h1></center>");
       ResultSet rs=ps.executeQuery();
       ResultSetMetaData rsmd=(ResultSetMetaData) rs.getMetaData();
       while(rs.next())

       {

            out.print("<tr>");
            out.print("<td>"+rsmd.getColumnName(1)+"</td>");
            out.print("<td>"+rsmd.getColumnName(2)+"</td>");
            out.print("<td>"+rsmd.getColumnName(3)+"</td>");
               
            
             out.println("<tr>");
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

			