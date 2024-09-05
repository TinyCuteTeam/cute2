package mandoo.controller;

import mandoo.DTO.ItemDTO;
import mandoo.service.ItemService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet("/Item")
@MultipartConfig
public class ItemController extends HttpServlet {
	private ItemService itemService = new ItemService();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		int page = 1;
		int itemsPerPage = 6;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		try {
			// 예외가 발생할 수 있는 코드
			List<ItemDTO> itemList = itemService.getItemsByPage(page, itemsPerPage);
			int totalItems = itemService.getTotalItemsCount();
			int totalPages = (int) Math.ceil(totalItems / (double) itemsPerPage);

			// 속성 설정 및 포워딩
			request.setAttribute("itemList", itemList);
			request.setAttribute("currentPage", page);
			request.setAttribute("totalPages", totalPages);

			request.getRequestDispatcher("/WEB-INF/품목코드조회.jsp").forward(request, response);
		} catch (Exception e) {
			// 예외 처리
			e.printStackTrace(); // 콘솔에 예외 출력 (디버깅 용도)
			request.setAttribute("errorMessage", "데이터를 불러오는 중 오류가 발생했습니다.");
			request.getRequestDispatcher("/WEB-INF/error.jsp").forward(request, response); // 오류 페이지로 포워딩
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		try {
			if ("add".equals(action)) {
				// 추가 로직
				String itemCode = request.getParameter("itemCode");
				String itemName = request.getParameter("itemName");

				Part filePart = request.getPart("itemImage");
				if (filePart != null && filePart.getSize() > 0) {
					String fileName = itemCode + ".jpg";
					String uploadPath = getServletContext().getRealPath("/image");
					File uploadDir = new File(uploadPath);
					if (!uploadDir.exists()) {
						uploadDir.mkdirs();
					}
					File file = new File(uploadPath, fileName);
					filePart.write(file.getAbsolutePath());
				}

				ItemDTO item = new ItemDTO(itemCode, itemName);
				itemService.addItem(item);
				response.sendRedirect("Item");

			} else if ("update".equals(action)) {
				// 수정 로직
				String itemCode = request.getParameter("itemCode");
				String itemName = request.getParameter("itemName");

				Part filePart = request.getPart("itemImage");
				if (filePart != null && filePart.getSize() > 0) {
					String fileName = itemCode + ".jpg";
					String uploadPath = getServletContext().getRealPath("/image");
					File uploadDir = new File(uploadPath);
					if (!uploadDir.exists()) {
						uploadDir.mkdirs();
					}
					File file = new File(uploadPath, fileName);
					filePart.write(file.getAbsolutePath());
				}

				ItemDTO item = new ItemDTO(itemCode, itemName);
				itemService.updateItem(item);
				response.sendRedirect("Item");

			} else if ("delete".equals(action)) {
				// 삭제 로직
				String itemCode = request.getParameter("itemCode");
				itemService.deleteItem(itemCode);
				response.sendRedirect("Item");
			}
		} catch (Exception e) {
			// 예외 처리
			e.printStackTrace();
			request.setAttribute("errorMessage", "처리 중 오류가 발생했습니다.");
			request.getRequestDispatcher("/WEB-INF/error.jsp").forward(request, response);
		}
	}

}
