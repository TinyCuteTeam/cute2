package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.InventoryDTO;
import mandoo.db.Database;

public class InventoryDAO {

	public List<InventoryDTO> selectInventory() {

		List<InventoryDTO> inventory = new ArrayList<>();
		String query = "SELECT * FROM stock";

		try {
			Connection con = Database.getConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				InventoryDTO IDTO = new InventoryDTO();
				IDTO.setInventoryId(rs.getString("stock_id"));
				IDTO.setItemCode(rs.getString("item_code"));
				IDTO.setInventoryName(rs.getString("stock_name"));
				IDTO.setInventoryCount(rs.getString("stock_count"));

				IDTO.setInventoryLocation(rs.getString("stock_location"));
				IDTO.setInventorySort(rs.getString("stock_sort"));

				inventory.add(IDTO);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		System.out.println(" 셀렉트 조회 : " + inventory);
		return inventory;

	}

	public void addinventory(InventoryDTO IDTO) {

		String query = "INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) VALUES (?, ?, ?, ?, ?, ?)";

		try {

			Connection con = Database.getConnection();
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, IDTO.getInventoryId());
			ps.setString(2, IDTO.getItemCode());
			ps.setString(3, IDTO.getInventoryName());
			ps.setString(4, IDTO.getInventoryCount());

			ps.setString(5, IDTO.getInventoryLocation());
			ps.setString(6, IDTO.getInventorySort());

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("insert 실행");
	}

	public void deleteInventory(String InventoryId) {

		String query = "DELETE FROM stock WHERE stock_id = ?";

		try {
			Connection con = Database.getConnection();
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, InventoryId);
			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("delete 실행" + InventoryId);
	}

	// Update method
	public void updateInventory(InventoryDTO IDTO) {
		String query = "UPDATE stock SET item_code = ?, stock_name = ?, stock_count = ?, stock_location = ?, stock_sort = ? WHERE stock_id = ?";

		try {
			Connection con = Database.getConnection();
			PreparedStatement ps = con.prepareStatement(query);

			ps.setString(1, IDTO.getItemCode());
			ps.setString(2, IDTO.getInventoryName());
			ps.setString(3, IDTO.getInventoryCount());
			ps.setString(4, IDTO.getInventoryLocation());
			ps.setString(5, IDTO.getInventorySort());
			ps.setString(6, IDTO.getInventoryId());

			ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("update 실행");
	}

}
