package mandoo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mandoo.DTO.MyPageDTO;
import mandoo.DTO.UserDTO;
import mandoo.service.MyPageService;

@WebServlet("/mypage")
public class MyPageController extends HttpServlet {
    private MyPageService myPageService = new MyPageService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        UserDTO user = (UserDTO) session.getAttribute("user");

        if (user != null) {
            try {
                MyPageDTO mypage = myPageService.getMyPageByUserId(user.getUserId());
                request.setAttribute("mypage", mypage);
                request.getRequestDispatcher("/WEB-INF/마이페이지.jsp").forward(request, response);
            } catch (Exception e) {
                throw new ServletException(e);
            }
        } else {
            response.sendRedirect("login.jsp");
        }
    }
}
