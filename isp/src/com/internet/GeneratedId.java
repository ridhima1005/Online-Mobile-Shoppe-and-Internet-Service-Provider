package internet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GeneratedId {
	public int generateFormId() {
		int form_id = 1;
		
		boolean status = false;
		 Connection conn = null;  
		    PreparedStatement pst = null;  
		    ResultSet rs = null;  

		    String url = "jdbc:mysql://localhost:3306/";  
		    String dbName = "login";  
		    String driver = "com.mysql.jdbc.Driver";  
		    String userName = "root";  
		    String password = "ridhima";  
		    
		try {
			 Class.forName(driver).newInstance();  
		        conn = DriverManager.getConnection(url + dbName, userName, password);  
		        pst=conn.prepareStatement("select max(form_id) as form_id from new_subscribe");
			////////////
		        //PreparedStatement ps = connection.prepareStatement(QUERY,
		              //  new String[] { "form_id" });
			//Statement stmt = conn.createStatement();
		
			//ResultSet rs = null;
		       // pst.setString(1, form_id);  
			rs = pst.executeQuery();
			status=rs.next();
			if (rs.next()) {
				String id = rs.getString("form_id");
				form_id = Integer.parseInt(id);
			}
			form_id = form_id + 1;
		} catch (SQLException ex) {
			ex.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return form_id;
	}
}
