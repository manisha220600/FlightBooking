package flight.booking;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class searchController {
	String url="jdbc:mysql://localhost:3306/flight";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/searchQuery")
	public void search(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		System.out.println("i m here");
		String source=request.getParameter("source").toString();
		String destination=request.getParameter("destination").toString();
		String journeyClass=request.getParameter("journeyClass").toString();
		
		String query="select * from flightDetails where source=? and destination=? ";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, source);
		st.setString(2, destination);
		
		
		ResultSet rd=st.executeQuery();
				

		request.setAttribute("rd", rd);
		request.getRequestDispatcher("search.jsp").forward(request, response);
		
		
		
	}

}
