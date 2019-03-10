package internet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Internet_order2 extends HttpServlet {
	// public static boolean validate(String first_name, String last_name,String
	// street,String city,String state,String zip_code,String phone,String
	// credit_no,String expiry) {
	// boolean status = false;
	Connection con = null;
	PreparedStatement pst = null;

	// ResultSet rs = null;

	public Internet_order2() {
		super();
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/login", "root", "ridhima");

			response.setContentType("text/html");
			System.out.print("\n Insert Values: ");

						pst = con
					.prepareStatement("insert into internet_order values (?,?,?,?,?,?,?,?,?,?)");

			pst.setString(1, request.getParameter("first_name"));
			pst.setString(2, request.getParameter("last_name"));
			pst.setString(3, request.getParameter("street"));
			pst.setString(4, request.getParameter("city"));
			pst.setString(5, request.getParameter("state"));
			pst.setString(6, request.getParameter("zip_code"));
			pst.setString(7, request.getParameter("phone"));
			pst.setString(8, request.getParameter("credit_no"));
			pst.setString(9, request.getParameter("expiry"));
			pst.setString(10, request.getParameter("expiry2"));

			Object data = "No of Rows Affected: " + pst.executeUpdate();
			con.close();

			request.setAttribute("data", data);
			request.getRequestDispatcher("order2.html").forward(request,
					response);

			// rs = pst.executeUpdate();
			// status = rs.next();

		} catch (Exception ex) {
			System.out.println(ex);
			request.setAttribute("data", ex);
			request.getRequestDispatcher("order2.html").forward(request,
					response);
		} finally {

		}

	}

}
