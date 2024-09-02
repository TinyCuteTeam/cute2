package mandoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.service.InventoryService;

@WebServlet("/InventoryDelete")
public class InventoryDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private InventoryService inventoryService = new InventoryService();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 삭제할 재고의 ID를 요청 파라미터에서 가져옴
		String inventoryId = request.getParameter("inventoryId");

		if (inventoryId != null && !inventoryId.isEmpty()) {
			// 재고 삭제 처리
			inventoryService.deleteInventory(inventoryId);

			// 삭제 후 재고 목록으로 리다이렉트
			response.sendRedirect("/mandoo/Inventory");
		} else {
			// 유효하지 않은 ID일 경우 에러 페이지로 리다이렉트
			response.sendRedirect(request.getContextPath() + "/error.jsp");
		}
	}
}
