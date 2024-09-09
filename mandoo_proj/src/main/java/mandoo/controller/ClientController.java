package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.ClientDTO;
import mandoo.service.ClientService;

@WebServlet("/client")
public class ClientController extends HttpServlet {

	private ClientService clientService = new ClientService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 한글 깨짐 방지
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		int page = 1;
		int recordsPerPage = 5;

		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		try {
			// 페이징된 클라이언트 목록과 총 레코드 수를 가져옴
			List<ClientDTO> clients = clientService.getClientsByPage(page, recordsPerPage);
			int totalRecords = clientService.getTotalRecords();
			int totalPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

			// JSP로 전달할 속성 설정
			request.setAttribute("clients", clients);
			request.setAttribute("totalPages", totalPages); // JSP와 일치하도록 변경
			request.setAttribute("currentPage", page);

			// JSP로 포워드
			request.getRequestDispatcher("/WEB-INF/거래처관리.jsp").forward(request, response);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 한글 깨짐 방지
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if ("add".equals(action)) {
			// 클라이언트 추가 로직
			ClientDTO client = new ClientDTO();
			client.setClientName(request.getParameter("clientName"));
			client.setClientBoss(request.getParameter("clientBoss"));
			client.setClientTel(request.getParameter("clientTel"));
			client.setClientAddress(request.getParameter("clientAddress"));
			client.setClientEmail(request.getParameter("clientEmail"));
			client.setClientNumber(request.getParameter("clientNumber"));

			try {
				clientService.addClient(client);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if ("delete".equals(action)) {
			// 클라이언트 삭제 로직
			String[] clientIds = request.getParameterValues("clientId");
			try {
				if (clientIds != null) {
					for (String clientId : clientIds) {
						clientService.deleteClient(clientId);
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		// 삭제 또는 추가 후에는 클라이언트 목록 페이지로 리다이렉트
		response.sendRedirect(request.getContextPath() + "/client");
	}
}
