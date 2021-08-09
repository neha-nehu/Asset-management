package com.register;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Register
 */
@WebServlet(name = "Register", urlPatterns = "/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Register() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();

		String fname = request.getParameter("fname");
		String middlename = request.getParameter("middlename");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		int empid = Integer.parseInt(request.getParameter("empid"));
		String SubmitType = request.getParameter("register");

		try {

			Class.forName("com.mysql.jdbc.Driver");

			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/neha","root","neha1212");

			PreparedStatement ps = con.prepareStatement(
					"insert into register(fname,middlename,lname,email,password,empid) values(?,?,?,?,?,?)");
			ps.setString(1, fname);
			ps.setString(2, middlename);
			ps.setString(3, lname);
			ps.setString(4, email);
			ps.setString(5, password);
			ps.setInt(6, empid);

			int result = ps.executeUpdate();
			System.out.println("resut:  " + result);
			
			
			if (result>0) {
				response.sendRedirect("login.jsp");
			} else {

				response.sendRedirect("register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	/*
	 * catch(Exception se) { se.printStackTrace(); } RequestDispatcher rd =
	 * request.getRequestDispatcher("login.jsp"); rd.forward(request, response);
	 */
}
