package mandoo.controller;

import mandoo.DTO.BoardDTO;
import mandoo.DTO.UserDTO;
import mandoo.service.BoardService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/boardAdd")
public class BoardAddServlet extends HttpServlet {
	private BoardService boardService = new BoardService();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		UserDTO user = (UserDTO) session.getAttribute("user");

		if (user == null) {
			response.sendRedirect("login");
			return;
		}

		String title = request.getParameter("title");
		String content = request.getParameter("content");

		BoardDTO boardDTO = new BoardDTO();
		boardDTO.setUserId(user.getUserId());
		boardDTO.setBoardTitle(title);
		boardDTO.setBoardContents(content);

		boardService.createPost(boardDTO);

		// 게시글 등록 후 /boardList로 리다이렉트
		response.sendRedirect("/mandoo/boardList");
	}
}
