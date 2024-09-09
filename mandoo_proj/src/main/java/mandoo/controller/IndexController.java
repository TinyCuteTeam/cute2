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

@WebServlet("/index")
public class IndexController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ProductionStatusService psService = new ProductionStatusService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 작업 현황 및 라인별 생산량 데이터 가져오기
		List<ProductionstatusDTO> productionLines = psService.getProductionStatusByLine();

		// 데이터 전달
		request.setAttribute("productionLines", productionLines);

		request.getRequestDispatcher("/WEB-INF/index.jsp").forward(request, response);
	}

}
