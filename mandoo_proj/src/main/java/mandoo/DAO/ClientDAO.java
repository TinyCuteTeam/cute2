package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ClientDTO;
import mandoo.db.Database;

public class ClientDAO {

    // 다음 클라이언트 ID를 생성하는 메서드
    private String generateNextClientId() throws Exception {
        String lastClientId = "C020"; // 시작값 
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT MAX(client_id) FROM client")) {
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next() && rs.getString(1) != null) {
                    lastClientId = rs.getString(1);
                }
            }
        }

        // C020, C021, ... 형식으로 증가
        int nextIdNum = Integer.parseInt(lastClientId.substring(1)) + 1;
        return "C" + String.format("%03d", nextIdNum);
    }

    // 클라이언트 추가
    public void addClient(ClientDTO client) throws Exception {
        String nextClientId = generateNextClientId(); // 새로운 client_id 생성
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(
                "INSERT INTO client (client_id, client_name, client_boss, client_tel, client_address, client_email, client_number) VALUES (?, ?, ?, ?, ?, ?, ?)")) {

            pstmt.setString(1, nextClientId); // 새로운 client_id 설정
            pstmt.setString(2, client.getClientName());
            pstmt.setString(3, client.getClientBoss());
            pstmt.setString(4, client.getClientTel());
            pstmt.setString(5, client.getClientAddress());
            pstmt.setString(6, client.getClientEmail());
            pstmt.setString(7, client.getClientNumber());

            pstmt.executeUpdate();
        }
    }

    // 페이징 처리된 클라이언트 목록 조회
    public List<ClientDTO> getClientsByPage(int start, int limit) throws Exception {
        List<ClientDTO> clients = new ArrayList<>();
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(
                "SELECT * FROM (SELECT a.*, ROWNUM rnum FROM (SELECT * FROM client ORDER BY client_id) a WHERE ROWNUM <= ?) WHERE rnum > ?")) {

            pstmt.setInt(1, start + limit);
            pstmt.setInt(2, start);

            try (ResultSet rs = pstmt.executeQuery()) {
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
            }
        }
        return clients;
    }

    // 총 레코드 수 조회
    public int getTotalRecords() throws Exception {
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("SELECT COUNT(*) FROM client")) {

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt(1);
                }
            }
        }
        return 0;
    }

    // 클라이언트 삭제
    public void deleteClient(String clientId) throws Exception {
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement("DELETE FROM client WHERE client_id = ?")) {

            pstmt.setString(1, clientId);
            pstmt.executeUpdate();
        }
    }
}
