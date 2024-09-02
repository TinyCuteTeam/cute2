package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.ProductionOrderDTO;
import mandoo.service.ProductionOrderService;

@WebServlet("/productionOrder/monthly")
public class ProductionOrderController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			ProductionOrderService productionOrderService = new ProductionOrderService();

			// 월별 생산량 데이터 가져오기
			List<ProductionOrderDTO> monthlyProductionData = productionOrderService.getMonthlyProductionData();

			request.setAttribute("monthlyProductionData", monthlyProductionData);
			request.getRequestDispatcher("/WEB-INF/실적마감.jsp").forward(request, response);

		} catch (Exception e) {
			throw new ServletException(e);
		}
	}
}
