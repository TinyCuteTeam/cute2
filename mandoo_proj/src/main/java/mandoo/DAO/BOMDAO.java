package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.BOMDTO;
import mandoo.db.Database;

public class BOMDAO {

	// BOM ID로 BOM 리스트 조회
	public List<BOMDTO> getBOMsByBomId(String bomId) throws Exception {
		List<BOMDTO> bomList = new ArrayList<>();
		String sql = "SELECT b.bom_id, b.item_code, b.bom_count, b.bom_unit, i.item_name FROM bom b JOIN item i ON b.item_code = i.item_code WHERE b.bom_id = ?";
		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
			ps.setString(1, bomId);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				BOMDTO bom = new BOMDTO();
				bom.setBomId(rs.getString("bom_id"));
				bom.setItemCode(rs.getString("item_code"));
				bom.setItemName(rs.getString("item_name"));
				bom.setBomCount(rs.getInt("bom_count"));
				bom.setBomUnit(rs.getString("bom_unit"));
				bomList.add(bom);
			}
		}
		return bomList;
	}

	// 모든 BOM ID 조회
	public List<String> getAllBOMIds() throws Exception {
		List<String> bomIds = new ArrayList<>();
		String sql = "SELECT DISTINCT bom_id FROM bom";
		try (Connection con = Database.getConnection();
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery()) {
			while (rs.next()) {
				bomIds.add(rs.getString("bom_id"));
			}
		}
		return bomIds;
	}

	// BOM 추가
	public void addBOM(BOMDTO bom) throws Exception {
		String sql = "INSERT INTO bom (bom_id, item_code, bom_count, bom_unit) VALUES (?, ?, ?, ?)";
		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
			ps.setString(1, bom.getBomId());
			ps.setString(2, bom.getItemCode());
			ps.setInt(3, bom.getBomCount());
			ps.setString(4, bom.getBomUnit());
			ps.executeUpdate();
		}
	}

	// BOM 수정
	public void updateBOM(BOMDTO bom) throws Exception {
		String sql = "UPDATE bom SET bom_count = ?, bom_unit = ?, bom_etc = ? WHERE bom_id = ? AND item_code = ?";
		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
			ps.setInt(1, bom.getBomCount());
			ps.setString(2, bom.getBomUnit());
			ps.setString(3, bom.getBomId());
			ps.setString(4, bom.getItemCode());
			ps.executeUpdate();
		}
	}

	// BOM 삭제
	public void deleteBOM(String bomId, String itemCode) throws Exception {
		String sql = "DELETE FROM bom WHERE bom_id = ? AND item_code = ?";
		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {
			ps.setString(1, bomId);
			ps.setString(2, itemCode);
			ps.executeUpdate();
		}
	}

	public String getMaxBomId() throws Exception {
		String maxBomId = null;
		String sql = "SELECT MAX(bom_id) FROM bom";

		try (Connection conn = Database.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {

			if (rs.next()) {
				maxBomId = rs.getString(1);
			}
		}

		return maxBomId;
	}
}
