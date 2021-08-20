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
public class confirmController {
	
	String url="jdbc:mysql://localhost:3306/flight";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/confirm")
	public String func(HttpServletRequest request, HttpServletResponse response) throws SQLException, ClassNotFoundException {
		System.out.println("success booked");
		String name1=request.getParameter("pasenger1");
		
		String seats=request.getParameter("seats").toString();
		System.out.println(seats);
		String phone=request.getParameter("phone").toString();
		System.out.println(phone);
		HttpSession ses=request.getSession();
		
String query="insert into booking(flightid,username,email, phone,seats,price) values(?,?,?,?,?,?) ";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1,(String) ses.getAttribute("id") );
		st.setString(2, name1);
		st.setString(3,(String) ses.getAttribute("email") );
		st.setString(4,(String) ses.getAttribute("phone") );
		st.setString(5,seats );
		System.out.println("no     no");
		int i=Integer.parseInt(seats);
		int j=Integer.parseInt((String)ses.getAttribute("price")); 
		i=i*j;
		String s=String.valueOf(i);
		System.out.println("In last");
		st.setString(6,s );
		
	
		int count=st.executeUpdate();

		if(count>0) {
			System.out.println("success booked");
			return "confirm.jsp";
		}
		else {
			return "index.jsp";
		}
		
		
	}

}
