package internet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Subscribe {
	Connection conn = null;
	PreparedStatement pst = null;

	// ResultSet rs = null;
	public Subscribe() {
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

			pst = conn
					.prepareStatement("insert into new_subscribe values(?,?,?,?,?,?,?,?,?)");

			pst.setString(1, "form_id");
			pst.setString(2, "name");
			pst.setString(3, "address");
			pst.setString(4, "email");

			pst.setString(5, "phone");
			pst.setString(6, "dob");
			pst.setString(7, "gender");
			pst.setString(8, "nationality");
			pst.setString(9, "proofs");

			Object data = "No of Rows Affected: " + pst.executeUpdate();
			conn.close();

			request.setAttribute("data", data);
			request.getRequestDispatcher("subscribe.html").forward(request,
					response);

			// rs = pst.executeQuery();
			// status = rs.next();

		} catch (Exception ex) {
			System.out.println(ex);
			request.setAttribute("data", ex);
			request.getRequestDispatcher("subscribe.html").forward(request,
					response);
		} finally {
		}
	}

}
