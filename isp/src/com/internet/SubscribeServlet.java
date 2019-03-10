package internet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class SubscribeServlet
 */
public class SubscribeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Connection con = null;
	PreparedStatement stmt = null;
	InputStream inputstream = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubscribeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doPost (request,response);
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
	
			stmt = con.prepareStatement("insert into new_subscribe values(?,?,?,?,?,?,?,?,?)");
			
			//stmt.setInt(1,Integer.parseInt(request.getParameter("form_id")));
			stmt.setString(1, request.getParameter("form_id"));
			stmt.setString(2, request.getParameter("name"));
			stmt.setString(3, request.getParameter("address"));
			stmt.setString(4, request.getParameter("email"));
			//stmt.setInt(5, Integer.parseInt(request.getParameter("phone")));
			stmt.setString(5, request.getParameter("phone"));
			stmt.setString(6, request.getParameter("dob"));
			stmt.setString(7, request.getParameter("gender"));
			stmt.setString(8, request.getParameter("nationality"));
			stmt.setString(9, request.getParameter("proofs"));
			
			if(inputstream!=null)
				stmt.setBlob(15,inputstream);
			
			Object data = "No of Rows Affected: "+ stmt.executeUpdate();
			con.close();			
			
		    request.setAttribute("data", data);
		    request.getRequestDispatcher("subscribe.html").forward(request, response);
		}
		catch(Exception ex)
		{
			System.out.println(ex);
			request.setAttribute("data", ex);
		    request.getRequestDispatcher("subscribe.html").forward(request, response);
		}
		finally
		{
			
		}
	}
	}

