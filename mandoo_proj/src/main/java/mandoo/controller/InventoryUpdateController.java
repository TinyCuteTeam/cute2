package mandoo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.InventoryDTO;
import mandoo.service.InventoryService;

@WebServlet("/InventoryUpdate")
public class InventoryUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private InventoryService inventoryService = new InventoryService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String inventoryId = request.getParameter("InventoryId");
		String itemCode = request.getParameter("ItemCode");
		String inventoryName = request.getParameter("InventoryName");
		String inventoryCount = request.getParameter("InventoryCount");
		String inventoryLocation = request.getParameter("InventoryLocation");
		String inventorySort = request.getParameter("InventorySort");

		InventoryDTO inventoryDTO = new InventoryDTO();
		inventoryDTO.setInventoryId(inventoryId);
		inventoryDTO.setItemCode(itemCode);
		inventoryDTO.setInventoryName(inventoryName);
		inventoryDTO.setInventoryCount(inventoryCount);
		inventoryDTO.setInventoryLocation(inventoryLocation);
		inventoryDTO.setInventorySort(inventorySort);

		inventoryService.updateInventory(inventoryDTO);

		response.sendRedirect("/mandoo/Inventory"); // 업데이트 후 재고현황 페이지로 리다이렉트
	}
}
