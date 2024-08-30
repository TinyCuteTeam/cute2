
package mandoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mandoo.DTO.UserDTO;
import mandoo.service.UserService;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private UserService userService = new UserService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");

		try {
		    UserDTO user = userService.authenticate(userId, userPw);

		    if (user != null) {
		        HttpSession session = request.getSession();
		        session.setAttribute("user", user);
		        session.setMaxInactiveInterval(60*60);
		        response.sendRedirect(request.getContextPath() + "/HTML/login.jsp?success=true");
		    } else {
		        response.sendRedirect(request.getContextPath() + "/HTML/login.jsp?error=invalid");
		    }
		} catch (Exception e) {
		    e.printStackTrace();
		}
	}
}
