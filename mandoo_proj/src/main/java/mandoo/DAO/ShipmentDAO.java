package mandoo.DAO;

import mandoo.DTO.ShipmentDTO;
import mandoo.db.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ShipmentDAO {

	// 출하 정보 목록 조회 - 페이징 지원
	public List<ShipmentDTO> getShipments(int page, int pageSize) throws Exception {
		List<ShipmentDTO> shipments = new ArrayList<>();
		String sql = "SELECT * FROM (SELECT a.*, ROWNUM rnum FROM (SELECT * FROM order_info ORDER BY ORDER_ID) a WHERE ROWNUM <= ?) WHERE rnum > ?";
		int startRow = (page - 1) * pageSize;
		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, startRow + pageSize);
			pstmt.setInt(2, startRow);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				ShipmentDTO shipment = new ShipmentDTO();
				shipment.setShipmentId(rs.getString("ORDER_ID"));
				shipment.setOrderId(rs.getString("ORDER_ID"));
				shipment.setClientId(rs.getString("CLIENT_ID"));
				shipment.setProductName(rs.getString("PRODUCT_NAME")); // 상품명 추가된 부분
				shipment.setShipmentDate(rs.getString("ORDER_ENDDATE"));
				shipment.setShipmentQuantity(rs.getInt("ORDER_COUNT"));

				shipments.add(shipment);
			}
		}
		return shipments;
	}

	// 총 출하 수 조회
	public int getTotalShipmentCount() throws Exception {
		String sql = "SELECT COUNT(*) FROM order_info";
		try (Connection conn = Database.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {
			if (rs.next()) {
				return rs.getInt(1);
			}
		}
		return 0;
	}

	// 여러 출하 정보 삭제
	// 하나의 출하 정보 삭제
	public void deleteShipment(String shipmentId) throws Exception {
		String sql = "DELETE FROM order_info WHERE ORDER_ID = ?";
		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, shipmentId); // ORDER_ID에 해당하는 출하 정보 삭제
			pstmt.executeUpdate(); // DELETE 쿼리 실행
		}
	}

	// 여러 출하 정보 삭제
	public void deleteShipments(String[] shipmentIds) throws Exception {
		String sql = "DELETE FROM order_info WHERE ORDER_ID = ?";
		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			for (String shipmentId : shipmentIds) {
				pstmt.setString(1, shipmentId);
				pstmt.addBatch(); // Batch로 여러 쿼리를 준비
			}
			pstmt.executeBatch(); // 준비된 쿼리 실행
		}
	}
}
