package mandoo.service;

import java.util.List;

import mandoo.DAO.ClientDAO;
import mandoo.DTO.ClientDTO;

public class ClientService {
	// DAO를 호출하여 데이터를 가져오거나 저장하는 역할 (생략가능)
	// 비즈니스 로직을 하나의 계층에 모아둠으로써 코드의 가독성을 높이고, 변경이 용이해집니다
	
	ClientDAO clientDAO = new ClientDAO();
	
	public List<ClientDTO> getAllClients(){
		
		return clientDAO.getAllClients();
	}
	
	// insert
	public void clientInsert(ClientDTO client) {
		clientDAO.clientInsert(client); 
	}

}
