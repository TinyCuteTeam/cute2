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

	//주소로 접근 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/client 실행");

		ClientService clientService = new ClientService();
		//select 를 service에서 실행
		List<ClientDTO> clientList = clientService.getAllClients();
		
		// insert관련된 걸 service(서비스는 DAO로 전달)로 보내주고 추가해줌
		// 입력된 값들을 dto에 set해줌 
		// 내일 29일에 경민오빠가 이어서 알려줄거임 
		
		request.setAttribute("clients", clientList);
		
		// getRequestDispatcher는 넘겨주는 역할 
		// 위 코드 내용을 처리하고 /client로 /HTML/거래처관리.jsp를 넘겨줌
		request.getRequestDispatcher("/HTML/거래처관리.jsp").forward(request, response);
		
	}

}
