package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.BOMDTO;
import mandoo.service.BOMService;

@WebServlet("/BOM")
public class BOMController extends HttpServlet {
	private BOMService bomService = new BOMService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		try {
			String selectedBomId = request.getParameter("bomId");
			List<String> bomIds = bomService.getAllBOMIds();
			List<BOMDTO> bomList = null;

			if (selectedBomId != null) {
				bomList = bomService.getBOMsByBomId(selectedBomId);
			}

			request.setAttribute("bomIds", bomIds);
			request.setAttribute("bomList", bomList);
			request.getRequestDispatcher("/WEB-INF/BOM.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");
		String bomId = request.getParameter("bomId");

		try {
			if ("add".equals(action) || "update".equals(action)) {
				// 여러 행 처리
				String[] itemCodes = request.getParameterValues("itemCode");
				String[] bomCounts = request.getParameterValues("bomCount");
				String[] bomUnits = request.getParameterValues("bomUnit");

				for (int i = 0; i < itemCodes.length; i++) {
					BOMDTO bom = new BOMDTO();
					bom.setBomId(bomId);
					bom.setItemCode(itemCodes[i]);
					bom.setBomCount(Integer.parseInt(bomCounts[i]));
					bom.setBomUnit(bomUnits[i]);

					if ("add".equals(action)) {
						bomService.addBOM(bom);
					} else if ("update".equals(action)) {
						bomService.updateBOM(bom);
					}
				}
			} else if ("delete".equals(action)) {
				String itemCode = request.getParameter("itemCode");
				bomService.deleteBOM(bomId, itemCode);
			}
		} catch (Exception e) {
			throw new ServletException(e);
		}

		response.sendRedirect(request.getContextPath() + "/BOM?bomId=" + bomId);
	}
}
