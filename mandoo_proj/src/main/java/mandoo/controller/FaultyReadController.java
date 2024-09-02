package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.FaultyDTO;
import mandoo.service.FaultyService;

@WebServlet("/FaultyRead")
public class FaultyReadController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private FaultyService faultyService = new FaultyService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 요청 파라미터에서 페이지 번호와 페이지 크기 가져오기
    	System.out.println("doGet 실행");
    	
        int pageNumber = 1;
        int pageSize = 5; // 페이지당 항목 수
        
        String pageParam = request.getParameter("page");
        if (pageParam != null && !pageParam.isEmpty()) {
            try {
                pageNumber = Integer.parseInt(pageParam);
            } catch (NumberFormatException e) {
                pageNumber = 1; // 기본값
            }
        }
        
        // FaultyService에서 페이징된 데이터 가져오기
        List<FaultyDTO> readFaulty = faultyService.readFaulty(pageNumber, pageSize);
        int totalItems = faultyService.getTotalCount();
        int totalPages = (int) Math.ceil((double) totalItems / pageSize);
        
        
        // 요청 속성에 데이터와 페이징 정보 설정
        request.setAttribute("readFaulty", readFaulty);
        request.setAttribute("currentPage", pageNumber);
        request.setAttribute("totalPages", totalPages);
        
        // JSP 페이지로 포워딩
        request.getRequestDispatcher("/WEB-INF/불량률파악보고서.jsp").forward(request, response);
    }
}
