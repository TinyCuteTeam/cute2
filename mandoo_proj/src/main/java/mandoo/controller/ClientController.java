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

	ClientService clientService = new ClientService();
	
	//주소로 접근 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/client doGet 실행");

		//select 를 service에서 실행
		List<ClientDTO> clientList = clientService.getAllClients();
		
		request.setAttribute("clients", clientList);
		
		// getRequestDispatcher는 넘겨주는 역할 
		// 위 코드 내용을 처리하고 /client로 /HTML/거래처관리.jsp를 넘겨줌
		request.getRequestDispatcher("/HTML/거래처관리.jsp").forward(request, response);
		
	}

	// insert관련된 걸 service(서비스는 DAO로 전달)로 보내주고 추가해줌
			// 입력된 값들을 dto에 set해줌 
			// 내일 29일에 경민오빠가 이어서 알려줄거임 
			// 등록이랑 삭제 doPost로 만들예정
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	         throws ServletException, IOException {
		System.out.println("/client doPost 실행");
		
		String action = request.getParameter("action");
		
		if("add".equals(action)) {
			ClientDTO client = new ClientDTO();
			
			String clientId= "001";
			client.setClientId(clientId);
			
			//다른 필드를 설정 
			client.setClientName(request.getParameter("clientName"));
	         client.setClientBoss(request.getParameter("clientBoss"));
	         client.setClientTel(request.getParameter("clientTel"));
	         client.setClientAddress(request.getParameter("clientAddress"));
	         client.setClientEmail(request.getParameter("clientEmail"));
	         client.setClientNumber(request.getParameter("clientNumber"));

	         // 클라이언트 추가
	         clientService.clientInsert(client);
		}
		
		response.sendRedirect("/mandoo/client");
		
	}
}
