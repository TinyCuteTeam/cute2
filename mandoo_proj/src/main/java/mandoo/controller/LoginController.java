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

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("user_id");
		String userPw = request.getParameter("user_pw");

		try {
			UserDTO user = userService.authenticate(userId, userPw);

			if (user != null) {
				HttpSession session = request.getSession();
				session.setAttribute("user", user);
				session.setAttribute("user_access", user.getUserAccess()); // user_access를 세션에 추가
				session.setMaxInactiveInterval(60 * 30); // 세션 타임아웃 설정 (30분)

				// 로그인 성공 시 /mandoo/index로 리다이렉트
				response.sendRedirect(request.getContextPath() + "/index");
			} else {
				// 로그인 실패 시 다시 로그인 페이지로 리다이렉트 (error 파라미터 추가)
				response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalid");
			}
		} catch (Exception e) {
			e.printStackTrace();
			// 예외 발생 시 로그인 페이지로 리다이렉트 (error 파라미터 추가)
			response.sendRedirect(request.getContextPath() + "/login.jsp?error=exception");
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// GET 요청 시 로그인 페이지로 이동
		request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	}
}
