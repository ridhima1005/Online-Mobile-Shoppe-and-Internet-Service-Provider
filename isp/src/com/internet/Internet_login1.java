package internet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

/**
 * Servlet implementation class Internet_login1
 */
public class Internet_login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con = null;
	PreparedStatement stmt = null;
	  ResultSet rs = null; 
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Internet_login1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "ridhima");
			
			 response.setContentType("text/html");    
		        PrintWriter out = response.getWriter();    
		          
		        String n=request.getParameter("user_name");    
		        String p=request.getParameter("user_pswd");   
		          
		        HttpSession session = request.getSession(false);  
		        if(session!=null)  
		        session.setAttribute("name", n);  
		  
		        stmt = con.prepareStatement("select * from login_internet where user_name=? and password=?");  
		        stmt.setString(1, n);  
		        stmt.setString(2, p);

		        rs = stmt.executeQuery(); 
		        	if(rs.next()){    
			            RequestDispatcher rd=request.getRequestDispatcher("internet_view.jsp");    
			            rd.forward(request,response);    
			        }    
			        else{    
			            out.print("<p style=\"color:red\">Sorry username or password error</p>");    
			            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");    
			            rd.include(request,response);    
			        }    
			  
		        
		        out.close();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
	}    
	
}
