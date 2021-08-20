package flight.booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class register {
	String url="jdbc:mysql://localhost:3306/flightBooking";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/signup")
	public String addUser(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		
		String name=request.getParameter("UserName").toString();
		String email=request.getParameter("email").toString();
		String phone=request.getParameter("phone").toString();
		String password=request.getParameter("Password");
		
		String query="insert into userDetails values(?,?,?,?) ";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, name);
		st.setString(2, email);
		st.setString(3,phone);
		st.setString(4, password);
		int count=st.executeUpdate();
		if(count>0) {
			System.out.println("Added to database");
		}
		return "index.jsp";
	}
}
