package mandoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.BoardDetailDTO;
import mandoo.service.BoardDetailService;

@WebServlet("/boardDetail")
public class BoardDetailController extends HttpServlet {
    private BoardDetailService boardDetailService = new BoardDetailService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 게시글 ID를 파라미터로 받음
        String boardId = request.getParameter("postId");

        // 게시글 상세 정보 가져오기
        BoardDetailDTO post = boardDetailService.getPostDetail(boardId);

        // JSP에 게시글 정보 전달
        request.setAttribute("post", post);

        // 게시글 상세 페이지로 포워딩
        request.getRequestDispatcher("/WEB-INF/사내게시판상세페이지.jsp").forward(request, response);
    }
}
