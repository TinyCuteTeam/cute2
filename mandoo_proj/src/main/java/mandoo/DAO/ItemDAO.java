package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ItemDTO;
import mandoo.db.Database;

public class ItemDAO {

	// 페이지에 맞는 품목 리스트 가져오기
	public List<ItemDTO> getItemsByPage(int page, int itemsPerPage) throws Exception {
		List<ItemDTO> itemList = new ArrayList<>();
		String query = "SELECT * FROM ( "
				+ "SELECT item_code, item_name, ROW_NUMBER() OVER (ORDER BY item_code) AS row_num " + "FROM item "
				+ ") WHERE row_num BETWEEN ? AND ?";

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(query)) {

			int startRow = (page - 1) * itemsPerPage + 1;
			int endRow = page * itemsPerPage;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				ItemDTO item = new ItemDTO(rs.getString("item_code"), rs.getString("item_name"));
				itemList.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return itemList;
	}

	// 총 품목 개수 가져오기
	public int getTotalItemsCount() throws Exception {
		String query = "SELECT COUNT(*) FROM item";
		try (Connection conn = Database.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery()) {
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	// 품목 추가
	public void addItem(ItemDTO item) throws Exception {
		String query = "INSERT INTO item (item_code, item_name) VALUES (?, ?)";
		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(query)) {

			pstmt.setString(1, item.getItemCode());
			pstmt.setString(2, item.getItemName());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw e; // 예외를 던져 호출한 쪽에서 처리할 수 있도록 함
		}
	}

	// 품목 수정
	public void updateItem(ItemDTO item) throws Exception {
		String query = "UPDATE item SET item_name = ? WHERE item_code = ?";
		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(query)) {

			pstmt.setString(1, item.getItemName());
			pstmt.setString(2, item.getItemCode());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw e; // 예외를 던져 호출한 쪽에서 처리할 수 있도록 함
		}
	}

	// 품목 삭제
	public void deleteItem(String itemCode) throws Exception {
		String query = "DELETE FROM item WHERE item_code = ?";
		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(query)) {

			pstmt.setString(1, itemCode);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw e; // 예외를 던져 호출한 쪽에서 처리할 수 있도록 함
		}
	}

	public List<ItemDTO> getAllItems() throws Exception {
		List<ItemDTO> itemList = new ArrayList<>();
		String query = "SELECT item_code, item_name FROM item";

		try (Connection conn = Database.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery()) {

			while (rs.next()) {
				ItemDTO item = new ItemDTO(rs.getString("item_code"), rs.getString("item_name"));
				itemList.add(item);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw e; // 예외를 던져 호출한 쪽에서 처리할 수 있도록 함
		}
		return itemList;
	}
}
