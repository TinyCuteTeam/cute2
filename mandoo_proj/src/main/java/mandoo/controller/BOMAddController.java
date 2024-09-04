package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DAO.ItemDAO;
import mandoo.DTO.BomAddDTO;
import mandoo.DTO.ItemDTO;
import mandoo.service.BomAddService;

@WebServlet("/BOMAdd")
public class BomAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BomAddService bomAddService = new BomAddService();
	private ItemDAO itemDAO = new ItemDAO();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Fetching item list for the dropdown
		try {
			List<ItemDTO> itemList = itemDAO.getAllItems(); // 모든 품목 목록을 가져옴
			request.setAttribute("itemList", itemList); // itemList를 JSP에 전달

			// Forward to JSP
			request.getRequestDispatcher("/WEB-INF/BOM관리_제품추가.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect(request.getContextPath() + "/error.jsp"); // 오류 페이지로 리디렉션
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		try {
			String itemCode = request.getParameter("itemCode");
			int bomCount = Integer.parseInt(request.getParameter("bomCount"));
			String bomUnit = request.getParameter("bomUnit");

			// BOM ID는 DB 시퀀스로 생성되므로 따로 설정하지 않음
			BomAddDTO bom = new BomAddDTO();
			bom.setItemCode(itemCode);
			bom.setBomCount(bomCount);
			bom.setBomUnit(bomUnit);

			// BOM 추가 수행
			bomAddService.addBom(bom);

			// 추가된 BOM의 ID를 얻음
			String newBomId = bom.getBomId();

			// 작업 후 특정 페이지로 리디렉트, 새롭게 추가된 BOM ID를 사용
			response.sendRedirect(request.getContextPath() + "/BOM?bomId=A00001");
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect(request.getContextPath() + "/BOM관리_제품추가.jsp?error=true");
		}
	}
}
