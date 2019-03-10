

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


public class lumia820controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public lumia820controller() {
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
		
		String name=request.getParameter("country");
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smart","root","admin");
			Statement st=con.createStatement();
			String sql="insert into temp( id ) values ('"+name+"')";
			String sql1="SELECT brand,pname,os,camera,stock,cost,size,colour,processor,memory,RAM FROM main where pname='"+name+"'";
			System.out.println(sql);
			System.out.println(sql1);
			ResultSet rs =	(ResultSet) st.executeQuery(sql1);
			HttpSession ses=request.getSession();
			ses.setAttribute("name",name);
			if (rs.next() )
			{	
				//String id=rs.getString(0);
				String brand=rs.getString(1);
				String os = rs.getString(3);
				String camera = rs.getString(4);
				String stock = rs.getString(5);
				String cost = rs.getString(6);
				String size = rs.getString(7);
				String colour = rs.getString(8);
				String processor = rs.getString(9);
				String memory = rs.getString(10);
				String RAM = rs.getString(11);
				//System.out.println(id);
				System.out.println(brand);
				System.out.println(os);
				System.out.println(camera);
				System.out.println(stock);
				System.out.println(cost);
				System.out.println(size);
				System.out.println(colour);
				System.out.println(processor);
				System.out.println(memory);
				System.out.println(RAM);
				HttpSession ses1=request.getSession();
				//ses1.setAttribute("id",id);
				ses1.setAttribute("brand",brand);
				ses1.setAttribute("os",os);
				ses1.setAttribute("camera",camera);
				ses1.setAttribute("stock",stock);
				ses1.setAttribute("cost",cost);
				ses1.setAttribute("size",size);
				ses1.setAttribute("colour",colour);
				ses1.setAttribute("processor",processor);
				ses1.setAttribute("memory",memory);
				ses1.setAttribute("RAM",RAM);
				
			
			
			st.execute(sql);
			st.execute(sql1);
			RequestDispatcher rd = request
					.getRequestDispatcher("details.jsp");
			rd.forward(request, response);
		}			
		
		
	
	}catch(Exception e){
		e.printStackTrace();
	}
	
}
}