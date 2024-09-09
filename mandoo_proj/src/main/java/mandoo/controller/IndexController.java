package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.BoardDTO;
import mandoo.DTO.ProductionstatusDTO;
import mandoo.service.BoardService;
import mandoo.service.ProductionStatusService;

@WebServlet("/index")
public class IndexController extends HttpServlet {
   private static final long serialVersionUID = 1L;
   private ProductionStatusService psService = new ProductionStatusService();
   private BoardService boardService = new BoardService();
   private static final int POSTS_PER_PAGE = 3;

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // 작업 현황 및 라인별 생산량 데이터 가져오기

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
      List<ProductionstatusDTO> productionLines = psService.getProductionStatusByLine();

      // 데이터 전달
      request.setAttribute("productionLines", productionLines);

      request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
   }       
   
   

}
  