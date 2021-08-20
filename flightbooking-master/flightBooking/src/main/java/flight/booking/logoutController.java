package flight.booking;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class logoutController {
	@RequestMapping("/logout")
	public String func(HttpServletRequest request, HttpServletResponse response) {
		HttpSession ses=request.getSession();
		ses.removeAttribute("name");
		return "index.jsp";
	}

}
