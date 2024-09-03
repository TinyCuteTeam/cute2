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
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int pageNumber = 1;
		int pageSize = 5;

		String pageParam = request.getParameter("page");
		if (pageParam != null && !pageParam.isEmpty()) {
			try {
				pageNumber = Integer.parseInt(pageParam);
			} catch (NumberFormatException e) {
				pageNumber = 1;
			}
		}

		List<FaultyDTO> readFaulty = faultyService.readFaulty(pageNumber, pageSize);
		int totalItems = faultyService.getTotalCount();
		int totalPages = (int) Math.ceil((double) totalItems / pageSize);

		List<FaultyDTO> monthlyDefectRates = faultyService.getMonthlyDefectRates();

		request.setAttribute("readFaulty", readFaulty);
		request.setAttribute("currentPage", pageNumber);
		request.setAttribute("totalPages", totalPages);
		request.setAttribute("monthlyDefectRates", monthlyDefectRates);

		request.getRequestDispatcher("/WEB-INF/불량률파악보고서.jsp").forward(request, response);
	}
}
