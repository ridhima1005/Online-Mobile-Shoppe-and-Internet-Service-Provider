package internet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Feedback3 {
	Connection conn = null;
	PreparedStatement pst = null;
	
	public Feedback3() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/login", "root", "ridhima");

			response.setContentType("text/html");
			System.out.print("\n Insert Values: ");

			pst = conn.prepareStatement("insert into feedback3 values(?,?,?,?,?,?,?)");
	
			pst.setString(1, "feedback");
			pst.setString(2, "feedback2");
			pst.setString(3, "name");
			pst.setString(4, "address");
			pst.setString(5, "email");
			pst.setString(6, "phone");
			pst.setString(7, "comments");

			Object data = "No of Rows Affected: " + pst.executeUpdate();
			conn.close();

			request.setAttribute("data", data);
			request.getRequestDispatcher("feedback3.html").forward(request,
					response);

			// rs = pst.executeQuery();
			// status = rs.next();

		} catch (Exception ex) {
			System.out.println(ex);
			request.setAttribute("data", ex);
			request.getRequestDispatcher("feedback3.html").forward(request,
					response);
		} finally {
		}
	}
}
