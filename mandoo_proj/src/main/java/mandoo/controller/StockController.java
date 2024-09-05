package mandoo.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.StockDTO;
import mandoo.service.StockService;

@WebServlet("/StockInventory")
public class StockController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StockService stockService = new StockService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        
		int pageNumber = 1;
		int pageSize = 3;
		String searchKeyword = request.getParameter("search") != null ? request.getParameter("search") : "";

		String pageParam = request.getParameter("page");
		if (pageParam != null && !pageParam.isEmpty()) {
			pageNumber = Integer.parseInt(pageParam);
		}

		List<StockDTO> stockList = stockService.getStockList(pageNumber, pageSize, searchKeyword);
		int totalItems = stockService.getTotalStockCount(searchKeyword);
		int totalPages = (int) Math.ceil((double) totalItems / pageSize);

		request.setAttribute("stockList", stockList);
		request.setAttribute("currentPage", pageNumber);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("searchKeyword", searchKeyword);

		request.getRequestDispatcher("/WEB-INF/재고현황.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
		
		
		String action = request.getParameter("action");
		if ("add".equals(action)) {
			StockDTO stock = new StockDTO();
			stock.setStockId(request.getParameter("stockId"));
			stock.setItemCode(request.getParameter("itemCode"));
			stock.setStockName(request.getParameter("stockName"));
			stock.setStockCount(Integer.parseInt(request.getParameter("stockCount")));
			stock.setStockLocation(request.getParameter("stockLocation"));
			stock.setStockSort(request.getParameter("stockSort"));

			stockService.insertStock(stock);

		} else if ("update".equals(action)) {
			StockDTO stock = new StockDTO();
			stock.setStockId(request.getParameter("stockId"));
			stock.setItemCode(request.getParameter("itemCode"));
			stock.setStockName(request.getParameter("stockName"));
			stock.setStockCount(Integer.parseInt(request.getParameter("stockCount")));
			stock.setStockLocation(request.getParameter("stockLocation"));
			stock.setStockSort(request.getParameter("stockSort"));

			stockService.updateStock(stock);

		} else if ("delete".equals(action)) {
			String stockId = request.getParameter("stockId");
			stockService.deleteStock(stockId);
			
		} else if ("updateQuantity".equals(action)) {
	        // 재고 수량 수정 로직
	        String stockId = request.getParameter("stockId");
	        int stockCount = Integer.parseInt(request.getParameter("stockCount"));
	        stockService.updateStockCount(stockId, stockCount);
	    }

		response.sendRedirect(request.getContextPath() + "/StockInventory");
	}
}
