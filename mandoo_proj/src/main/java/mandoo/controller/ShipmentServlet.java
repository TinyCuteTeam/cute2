package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DAO.ShipmentDAO;
import mandoo.DTO.ShipmentDTO;
import mandoo.service.ShipmentService;

@WebServlet("/shipment")
public class ShipmentServlet extends HttpServlet {
	private ShipmentService shipmentService;

	@Override
	public void init() throws ServletException {
		try {
			ShipmentDAO shipmentDAO = new ShipmentDAO();
			shipmentService = new ShipmentService(shipmentDAO);
		} catch (Exception e) {
			throw new ServletException("서비스 초기화 실패", e);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			// 요청된 페이지 번호 가져오기
			int page = 1;
			if (request.getParameter("page") != null) {
				page = Integer.parseInt(request.getParameter("page"));
			}

			// 출하 목록 및 전체 출하 수 가져오기
			List<ShipmentDTO> shipments = shipmentService.getShipmentsByPage(page, 4); // 한 페이지에 4개씩
			int totalShipments = shipmentService.getTotalShipmentCount();
			int totalPages = (int) Math.ceil(totalShipments / 4.0);

			// JSP로 전달할 데이터 설정
			request.setAttribute("shipments", shipments);
			request.setAttribute("currentPage", page);
			request.setAttribute("totalPages", totalPages);

			// JSP로 포워딩
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/출하확인.jsp");
			dispatcher.forward(request, response);
		} catch (Exception e) {
			throw new ServletException("출하 목록을 가져오는 중 오류 발생", e);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 선택된 항목들 삭제 처리
		String[] shipmentIds = request.getParameterValues("shipmentIds");
		if (shipmentIds != null) {
			try {
				// 여러 항목을 한 번에 삭제
				shipmentService.deleteShipments(shipmentIds); // 수정된 부분
			} catch (Exception e) {
				throw new ServletException("출하 삭제 중 오류 발생", e);
			}
		}
		response.sendRedirect("shipment"); // 출고 후 다시 목록으로 리다이렉트
	}
}
