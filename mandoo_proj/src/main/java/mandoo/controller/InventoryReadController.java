package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.InventoryDTO;
import mandoo.service.InventoryService;

@WebServlet("/Inventory")
public class InventoryReadController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private InventoryService IS = new InventoryService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("doGet 실행");
		request.setCharacterEncoding("UTF-8"); // 요청 인코딩 설정
		response.setContentType("text/html; charset=UTF-8"); // 응답 인코딩 설정

		List<InventoryDTO> selectInventory = IS.selectInventory();
		request.setAttribute("selectInventory", selectInventory);
		request.getRequestDispatcher("/WEB-INF/재고현황.jsp").forward(request, response);

	}

}
