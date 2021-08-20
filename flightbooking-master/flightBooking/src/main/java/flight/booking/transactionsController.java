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
public class transactionsController {
	String url="jdbc:mysql://localhost:3306/flight";
	String uname="root";
	String pass="Prakash1";
	@RequestMapping("/transactions.jsp")
	public String func(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException, ServletException, IOException {
		
		HttpSession ses=request.getSession();
		if(ses.getAttribute("name")==null) {
			
		}
		else {
			String query1;
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection(url,uname,pass);
			PreparedStatement st;
			if(ses.getAttribute("name").equals("admin")) {
				 query1="select * from booking ";
				 st=con.prepareStatement(query1);
			}
			else {
			query1="select * from flightdetails where flightid=(select flightid from booking where username=? and email=?)";
				st=con.prepareStatement(query1);
				st.setString(1, (String)ses.getAttribute("name"));
				st.setString(2,(String)ses.getAttribute("email"));
			}
		
			
			
			
			ResultSet rd=st.executeQuery();
			
			//System.out.print(rd.getString(1)+"   "+rd.getString(2)+"   "+rd.getString(3)+"   "+rd.getString(4)+"   "+rd.getString(5)+"   ");

			request.setAttribute("rd", rd);
		
			request.getRequestDispatcher("transactions1.jsp").forward(request, response);
		}
		
		return "index.jsp";
	}

}
