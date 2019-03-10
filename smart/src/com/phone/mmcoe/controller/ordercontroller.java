package com.phone.mmcoe.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
public class ordercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ordercontroller() {
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
		
		String pn=request.getParameter("pnm");
		String n_m=request.getParameter("nm");
		String add_r=request.getParameter("addr");
		String p_h=request.getParameter("ph");
		String e_mail=request.getParameter("email");
		String c_ity=request.getParameter("city");
		String d_ate=request.getParameter("date_stamp");
		String p_nm=request.getParameter("pnm");
		String c_nm=request.getParameter("cnm");
		Integer s=Integer.parseInt(request.getParameter("st"));
		s=s-1;
		
		System.out.println("name="+n_m+"address="+add_r+"ph="+p_h+"email="+e_mail+"city="+c_ity+"date="+d_ate+"mobile="+p_nm+"price="+c_nm);
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/smart","root","admin");
			Statement st=con.createStatement();
			PrintWriter out = response.getWriter();
			if(s>0)
			{
			String sql="insert into customer(name,address,ph,email,city,date,mobile,price) values ('"+n_m+"','"+add_r+"','"+p_h+"','"+e_mail+"','"+c_ity+"','"+d_ate+"','"+p_nm+"','"+c_nm+"')";
			String sql1="update main SET stock= ('"+s+"')  where pname=('"+pn+"')";
			
			System.out.println(sql);
			System.out.println(sql1);
			st.execute(sql);
			st.executeUpdate(sql1);
			}
			else
			{
				out.println("<h1 align='center'>"+"Logout Sucessfully..."+"</h1>");
			 } 
			
			RequestDispatcher rd=request.getRequestDispatcher("feedback.jsp");
			rd.forward(request,response);
		}
		
		
		
		catch(Exception e) {}
		
		
		}
		
}

