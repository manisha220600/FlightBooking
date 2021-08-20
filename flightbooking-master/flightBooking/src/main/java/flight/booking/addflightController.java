package flight.booking;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class addflightController {
	String url="jdbc:mysql://localhost:3306/flight";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/addflight")
	public String func(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException {
		String flightName=request.getParameter("flightName").toString();
		String source=request.getParameter("source").toString();
		String destination=request.getParameter("destination").toString();
		String date=request.getParameter("date").toString();
		String time=request.getParameter("time").toString();
		String price=request.getParameter("price").toString();
		String seats=request.getParameter("seats").toString();
		
		String query="insert into flightdetails(flightName,source,destination,date,time,price,class,seats) values(?,?,?,?,?,?,?,?) ";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, flightName);
		st.setString(2, source);
		st.setString(3,destination);
		st.setString(4, date);
		st.setString(5, time);
		st.setString(6, price);
		st.setString(7, "Economy");
		st.setString(8, seats);
		int count=st.executeUpdate();
		if(count>0) {
			System.out.println("Added to database");
		}
				
		return "admin.jsp";
	}

}
