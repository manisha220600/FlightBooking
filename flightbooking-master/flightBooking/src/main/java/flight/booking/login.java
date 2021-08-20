package flight.booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class login {
	String url="jdbc:mysql://localhost:3306/flightBooking";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/signin")
	public String fetchUser(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		
		
		
		String username=request.getParameter("UserName").toString();
		String password=request.getParameter("Password").toString();
		
		String query="select * from userDetails where username=? and pass=?";
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, username);
		st.setString(2, password);
		
		ResultSet rd=st.executeQuery();
		 if(username.equals("admin")&& password.equals("admin") ){
				HttpSession session=request.getSession();
				session.setAttribute("name", username);
				
				
				return "admin.jsp";
			}
		 else if(rd.next()) {
			System.out.println("Success");
			HttpSession session=request.getSession();
			session.setAttribute("name", rd.getString(1));
			session.setAttribute("email", rd.getString(2));
			session.setAttribute("phone", rd.getString(3));
		}
		
		else {
			System.out.println("Failure");
		}
		
		
		return "index.jsp";
	}

}
