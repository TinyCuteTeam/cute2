package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.MaterialStockDTO;
import mandoo.service.MaterialStockService;

@WebServlet("/MaterialStockInventory")
public class MaterialStockController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private MaterialStockService materialStockService = new MaterialStockService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String searchKeyword = request.getParameter("search") != null ? request.getParameter("search") : "";
		int pageNumber = request.getParameter("page") != null ? Integer.parseInt(request.getParameter("page")) : 1;
		int pageSize = 4;

		List<MaterialStockDTO> stockList = materialStockService.getMaterialStocks(searchKeyword, pageNumber, pageSize);
		int totalItems = materialStockService.getTotalCount(searchKeyword);
		int totalPages = (int) Math.ceil((double) totalItems / pageSize);

		request.setAttribute("stockList", stockList);
		request.setAttribute("searchKeyword", searchKeyword);
		request.setAttribute("currentPage", pageNumber);
		request.setAttribute("totalPages", totalPages);

		request.getRequestDispatcher("/WEB-INF/재고현황(부자재).jsp").forward(request, response);
	}
}
