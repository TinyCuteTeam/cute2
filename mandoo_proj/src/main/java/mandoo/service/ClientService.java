package mandoo.service;

import java.util.List;

import mandoo.DAO.ClientDAO;
import mandoo.DTO.ClientDTO;

public class ClientService {

    private ClientDAO clientDAO = new ClientDAO();

    public List<ClientDTO> getAllClients() {
        return clientDAO.getAllClients();
    }

    public void addClient(ClientDTO client) {
        clientDAO.addClient(client);
    }

    public void deleteClient(String clientId) {
        clientDAO.deleteClient(clientId);
    }
}
