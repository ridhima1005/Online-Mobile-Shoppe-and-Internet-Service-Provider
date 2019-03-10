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
import javax.servlet.http.HttpSession;

import com.mysql.jdbc.ResultSet;


public class buycontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public buycontroller() {
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
		
		String nm=request.getParameter("abc");
			
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smart","root","admin");
			Statement st=con.createStatement();
			String sql="truncate table temp;";
			String sql1="insert into temp( id ) values ('"+nm+"')";
			String sql2="SELECT brand,pname FROM main where pname='"+nm+"'";
			System.out.println(sql);
			System.out.println(sql1);
			System.out.println(sql2);
		
			
			
			ResultSet rs =(ResultSet) st.executeQuery(sql2);
		
			HttpSession ses=request.getSession();
			ses.setAttribute("nm",nm);
			
			
			if (rs.next() )
			{	
				String brand=rs.getString(1);
				System.out.println(brand);
				
				HttpSession ses1=request.getSession();
				ses1.setAttribute("brand",brand);
			st.execute(sql);
			st.execute(sql1);
			st.execute(sql2);
			RequestDispatcher rd = request.getRequestDispatcher("buy.jsp");
			rd.forward(request, response);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
					
	}
}