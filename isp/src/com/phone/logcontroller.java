package com.phone;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logcontroller
 */
public class logcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public logcontroller() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost (request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		// System.out.println("name="+name+"password="+pass);

		try {
			String name = request.getParameter("uname");
			String pass = request.getParameter("password");
			System.out.println("name=" + name + "password=" + pass);

	
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/login", "root", "ridhima");
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery("select * from log where name='"
					+ name + "'");

			if (rs.next()) {

				if ((name.trim().equals(rs.getString(1).trim()))
						&& (pass.trim().equals(rs.getString(2).trim()))) {

					// New session creation
					HttpSession session = request.getSession(true);
					// setting attribute on session
					session.setAttribute("username", name);
					// send request to Welcome.jsp page

					RequestDispatcher view = request
							.getRequestDispatcher("welcome.jsp");

					view.forward(request, response);

				} else {
					out.println("<div style='font-size:30px; color:red'>"
							+ "Userid and password does not matched "
							+ "</div>");
					RequestDispatcher view = request
							.getRequestDispatcher("log.jsp");

					view.include(request, response);
				}
			} else {
				out.println("<div style='font-size:30px; color:red'>"
						+ "Please fill userid and password" + "</div>");
				RequestDispatcher view = request
						.getRequestDispatcher("log.jsp");
				view.include(request, response);
			}
		} catch (Exception e) {
		} finally {
			out.close();

		}

	}

}
