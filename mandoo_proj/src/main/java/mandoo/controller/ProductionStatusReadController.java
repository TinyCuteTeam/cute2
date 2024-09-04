package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.ProductionstatusDTO;
import mandoo.service.ProductionStatusService;

@WebServlet("/ProductionStatusRead")
public class ProductionStatusReadController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private ProductionStatusService psService = new ProductionStatusService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("doGet 실행");

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        int pageSize = 6; // 한 페이지에 보여줄 데이터 수
        int page = 1; // 현재 페이지 기본값
        
        String pageStr = request.getParameter("page");
        if (pageStr != null && !pageStr.isEmpty()) {
            page = Integer.parseInt(pageStr);
        }
        
        int offset = (page - 1) * pageSize;
        
        List<ProductionstatusDTO> productionStatusList = psService.ProductionstatusRead(offset, pageSize);
        int totalRecords = psService.getTotalCount();
        int totalPages = (int) Math.ceil((double) totalRecords / pageSize);
        
        request.setAttribute("ProductionstatusRead", productionStatusList);
        request.setAttribute("currentPage", page);
        request.setAttribute("totalPages", totalPages);
        request.getRequestDispatcher("/WEB-INF/ProductionStatusRead.jsp").forward(request, response);
    }
}
