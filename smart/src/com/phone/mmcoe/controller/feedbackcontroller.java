package com.phone.mmcoe.controller;

import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class logcontroller
 */
//@WebServlet("/logcontroller")
public class feedbackcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public feedbackcontroller() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost (request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String na=request.getParameter("name1");
		String feed=request.getParameter("feed1");
	
		
		System.out.println("name="+na+"feed="+feed);
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smart","root","admin");
			Statement st=con.createStatement();
			
			
			String sql="insert into feedback(name,feed) values ('"+na+"','"+feed+"')";
			
			
			System.out.println(sql);
			
			st.execute(sql);
			
			 
			
			RequestDispatcher rd=request.getRequestDispatcher("applet.jsp");
			rd.forward(request,response);
		
		
		
		
		}catch(Exception e) {}
		
		
		}
		
}

