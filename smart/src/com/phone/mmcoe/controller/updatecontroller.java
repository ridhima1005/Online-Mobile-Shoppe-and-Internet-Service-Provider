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
 * Servlet implementation class curvecontroller
 */
//@WebServlet("/curvecontroller")
public class updatecontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updatecontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost (request,response);
		//doUpdate (request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			

		String nme1=request.getParameter("n");
		String stk=request.getParameter("s");
		String cst=request.getParameter("c");
		
		System.out.println("pname="+nme1+"stock="+stk+"cost="+cst);
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smart","root","admin");
			Statement st=con.createStatement();
			String sql="update main SET stock=('"+stk+"'),cost=('"+cst+"') where pname=('"+nme1+"')";
			System.out.println(sql);
			st.executeUpdate(sql);
			RequestDispatcher rd=request.getRequestDispatcher("update.jsp");
			rd.forward(request,response);
		}catch(Exception e) {
			e.printStackTrace();
		}
		}
		
	
	}
