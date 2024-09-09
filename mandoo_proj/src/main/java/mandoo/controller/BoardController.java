package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mandoo.DTO.BoardDTO;
import mandoo.DTO.UserDTO;
import mandoo.service.BoardService;

@WebServlet("/boardList")
public class BoardController extends HttpServlet {
	private BoardService boardService = new BoardService();
	private static final int POSTS_PER_PAGE = 10;  

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		UserDTO user = (UserDTO) session.getAttribute("user");

		if (user == null) {
			response.sendRedirect("login");
			return;
		}

		// 페이지 번호 가져오기 (기본값은 1)
		int page = 1;
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		// 게시글 목록 가져오기
		List<BoardDTO> posts = boardService.getAllPosts(page, POSTS_PER_PAGE);

		// 전체 게시글 수 가져오기
		int totalPosts = boardService.getTotalPostsCount();

		// 전체 페이지 수 계산
		int totalPages = (int) Math.ceil((double) totalPosts / POSTS_PER_PAGE);

		// JSP로 데이터 전달
		request.setAttribute("posts", posts);
		request.setAttribute("currentPage", page);
		request.setAttribute("totalPages", totalPages);

		request.getRequestDispatcher("/WEB-INF/사내게시판.jsp").forward(request, response);
	}
}
