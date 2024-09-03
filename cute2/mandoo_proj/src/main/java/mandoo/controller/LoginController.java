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
                session.setMaxInactiveInterval(60 * 60);
                
                // 로그인 성공 시 WEB-INF 폴더의 index.jsp로 포워딩
                request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
            } else {
                response.sendRedirect(request.getContextPath() + "/login.jsp?error=invalid");
            }
        } catch (Exception e) {
            e.printStackTrace();
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
