package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ClientDTO;
import mandoo.db.Database;

public class ClientDAO {

    public List<ClientDTO> getAllClients() {
        List<ClientDTO> clients = new ArrayList<>();
        String query = "SELECT * FROM client";

        try (Connection con = Database.getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {
                ClientDTO client = new ClientDTO();
                client.setClientId(rs.getString("client_id"));
                client.setClientName(rs.getString("client_name"));
                client.setClientBoss(rs.getString("client_boss"));
                client.setClientTel(rs.getString("client_tel"));
                client.setClientAddress(rs.getString("client_address"));
                client.setClientEmail(rs.getString("client_email"));
                client.setClientNumber(rs.getString("client_number"));
                clients.add(client);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return clients;
    }

    public void addClient(ClientDTO client) {
        String query = "INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try (Connection con = Database.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, client.getClientId());
            ps.setString(2, client.getClientName());
            ps.setString(3, client.getClientBoss());
            ps.setString(4, client.getClientTel());
            ps.setString(5, client.getClientAddress());
            ps.setString(6, client.getClientEmail());
            ps.setString(7, client.getClientNumber());

            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteClient(String clientId) {
        String query = "DELETE FROM client WHERE client_id = ?";

        try (Connection con = Database.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {

            ps.setString(1, clientId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
