package mandoo.controller;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

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

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<ClientDTO> clients = clientService.getAllClients();
		request.setAttribute("clients", clients);
		request.getRequestDispatcher("/HTML/거래처관리.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if ("add".equals(action)) {
			ClientDTO client = new ClientDTO();

			// clientId를 서버에서 UUID로 자동 생성
			String clientId = "0";
			client.setClientId(clientId);

			// 다른 필드들 설정
			client.setClientName(request.getParameter("clientName"));
			client.setClientBoss(request.getParameter("clientBoss"));
			client.setClientTel(request.getParameter("clientTel"));
			client.setClientAddress(request.getParameter("clientAddress"));
			client.setClientEmail(request.getParameter("clientEmail"));
			client.setClientNumber(request.getParameter("clientNumber"));

			// 클라이언트 추가
			clientService.addClient(client);
		} else if ("delete".equals(action)) {
			String[] clientIds = request.getParameterValues("clientId");
			for (String clientId : clientIds) {
				clientService.deleteClient(clientId);
			}
		}

		response.sendRedirect("/mandoo/client");
	}
}