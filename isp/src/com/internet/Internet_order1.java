package internet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 * Servlet implementation class Internet_order1
 */
public class Internet_order1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con = null;
	PreparedStatement stmt = null;
	  //ResultSet rs = null; 
	InputStream inputstream = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Internet_order1() {
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
		// TODO Auto-generated method stub
		try{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root", "ridhima");
			
			 response.setContentType("text/html");    
		        PrintWriter out = response.getWriter();    
		        Part filepart = request.getPart("image");//get image
				
				if(filepart!=null)
					inputstream = filepart.getInputStream();
				
				System.out.print("\n Insert Values: ");
		
		        String fn=request.getParameter("first_name");    
		        String ln=request.getParameter("last_name");   
		        String s=request.getParameter("street");
		        String c=request.getParameter("city");
		        String sta=request.getParameter("state");
		        String z=request.getParameter("zip_code");
		        String ph=request.getParameter("phone");
		        String cn=request.getParameter("credit_no");
		        String ex=request.getParameter("expiry");
		        String ex2=request.getParameter("expiry2");
		          
		     /*   HttpSession session = request.getSession(false);  
		        if(session!=null)  
		        session.setAttribute("first_name", fn);  */
		  
		        stmt = con.prepareStatement("insert into internet_order values (?,?,?,?,?,?,?,?,?,?)");  
		        stmt.setString(1, fn);  
		        stmt.setString(2, ln);
		        stmt.setString(3, s);
		        stmt.setString(4, c);
		        stmt.setString(5, sta);
		        stmt.setString(6, z);
		        stmt.setString(7, ph);
		        stmt.setString(8, cn);
		        stmt.setString(9, ex);
		        stmt.setString(10, ex2);
		        
		        if(inputstream!=null)
					stmt.setBlob(15,inputstream);
					
					Object data = "No of Rows Affected: "+ stmt.executeUpdate();
					con.close();			
					
				    request.setAttribute("data", data);
				    request.getRequestDispatcher("order2.html").forward(request, response);


		       /* rs = stmt.executeUpdate(); 
		        	if(rs.next()){    
			            RequestDispatcher rd=request.getRequestDispatcher("order2.html");    
			            rd.forward(request,response);    
			        }    
			        else{    
			            out.print("<p style=\"color:red\">Error...Try again</p>");    
			            RequestDispatcher rd=request.getRequestDispatcher("index.jsp");    
			            rd.include(request,response);    
			        }    
			  
		        
		        out.close();*/
		}
		catch(Exception ex)
		{
			//System.out.println(ex);
			System.out.println(ex);
			request.setAttribute("data", ex);
		    request.getRequestDispatcher("order2.html").forward(request, response);

		}
		finally
		{
			
		}
	
	}

}
