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
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class bookController {
	
	String url="jdbc:mysql://localhost:3306/flight";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/book")
	public void search(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		String flightid=request.getParameter("flightid").toString();
		
		
		
		
		String query="select * from flightDetails where flightid=? ";
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, flightid);
		
		ResultSet rd=st.executeQuery();
				

		request.setAttribute("rd", rd);
		request.getRequestDispatcher("book.jsp").forward(request, response);
		

}
}
