package com.phone;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class logoutcontroller
 */
public class logoutcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public logoutcontroller() {
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
		try {
			HttpSession session = request.getSession();
			session.invalidate();
			out.println("<br>" + "<h1 align='center'>"
					+ "<div style='float:left;font-size:25px;'>"
					+ "click here to " + "<a href='log.jsp'>login</a></div>"
					+ "</h1>");
			out.println("<br>" + "<h1 align='center'>"
					+ "Logout Sucessfully..." + "</h1>");
			out.println("<br>" + "<h1 align='center'>"
					+ "<div style='float:left;font-size:25px;'>"
					+ "click here to " + "<a href='home.jsp'>GO HOME</a></div>"
					+ "</h1>");

		} finally {
			out.close();
		}
	}

}
