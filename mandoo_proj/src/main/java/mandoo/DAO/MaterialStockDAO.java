package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.MaterialStockDTO;
import mandoo.db.Database;

public class MaterialStockDAO {

	public List<MaterialStockDTO> getMaterialStocks(String searchKeyword, int pageNumber, int pageSize) {
		List<MaterialStockDTO> stockList = new ArrayList<>();
		String query = "SELECT * FROM (SELECT ROWNUM rnum, stock_id, item_code, stock_name, stock_count, stock_location, stock_sort "
				+ "FROM (SELECT * FROM stock WHERE stock_sort = '재료' AND (item_code LIKE ? OR stock_name LIKE ?) ORDER BY item_code) "
				+ "WHERE ROWNUM <= ?) WHERE rnum > ?";

		int startRow = (pageNumber - 1) * pageSize;
		int endRow = pageNumber * pageSize;

		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, "%" + searchKeyword + "%");
			ps.setString(2, "%" + searchKeyword + "%");
			ps.setInt(3, endRow);
			ps.setInt(4, startRow);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				MaterialStockDTO stock = new MaterialStockDTO();
				stock.setStockId(rs.getString("stock_id"));
				stock.setItemCode(rs.getString("item_code"));
				stock.setStockName(rs.getString("stock_name"));
				stock.setStockCount(rs.getInt("stock_count"));
				stock.setStockLocation(rs.getString("stock_location"));
				stock.setStockSort(rs.getString("stock_sort"));
				stockList.add(stock);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return stockList;
	}

	public int getTotalCount(String searchKeyword) {
		String query = "SELECT COUNT(*) FROM stock WHERE stock_sort = '재료' AND (item_code LIKE ? OR stock_name LIKE ?)";
		int totalCount = 0;

		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, "%" + searchKeyword + "%");
			ps.setString(2, "%" + searchKeyword + "%");
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				totalCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalCount;
	}
}
