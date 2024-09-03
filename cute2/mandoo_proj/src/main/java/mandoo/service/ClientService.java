package mandoo.service;

import java.util.List;

import mandoo.DAO.ClientDAO;
import mandoo.DTO.ClientDTO;

public class ClientService {

    private ClientDAO clientDAO = new ClientDAO();

    public List<ClientDTO> getClientsByPage(int page, int recordsPerPage) throws Exception {
        int start = (page - 1) * recordsPerPage;
        return clientDAO.getClientsByPage(start, recordsPerPage);
    }

    public int getTotalRecords() throws Exception {
        return clientDAO.getTotalRecords();
    }

    public void addClient(ClientDTO client) throws Exception {
        clientDAO.addClient(client);
    }

    public void deleteClient(String clientId) throws Exception {
        clientDAO.deleteClient(clientId);
    }
}
