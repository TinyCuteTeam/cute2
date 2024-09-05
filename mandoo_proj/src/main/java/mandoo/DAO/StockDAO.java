package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.StockDTO;
import mandoo.db.Database;

public class StockDAO {

	// 페이징을 고려한 재고 목록 조회
	public List<StockDTO> getStockList(int pageNumber, int pageSize, String searchKeyword) {
		List<StockDTO> stockList = new ArrayList<>();
		String query = "SELECT * FROM (SELECT ROWNUM rnum, stock_id, item_code, stock_name, stock_count, stock_location, stock_sort "
				+ "FROM (SELECT * FROM stock WHERE LOWER(stock_name) LIKE ? OR LOWER(item_code) LIKE ? ORDER BY stock_id) "
				+ "WHERE ROWNUM <= ?) WHERE rnum > ?";

		int startRow = (pageNumber - 1) * pageSize;
		int endRow = pageNumber * pageSize;

		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, "%" + searchKeyword.toLowerCase() + "%");
			ps.setString(2, "%" + searchKeyword.toLowerCase() + "%");
			ps.setInt(3, endRow);
			ps.setInt(4, startRow);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				StockDTO stock = new StockDTO();
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

	// 전체 재고 수 조회
	public int getTotalStockCount(String searchKeyword) {
		String query = "SELECT COUNT(*) FROM stock WHERE LOWER(stock_name) LIKE ? OR LOWER(item_code) LIKE ?";
		int totalCount = 0;

		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, "%" + searchKeyword.toLowerCase() + "%");
			ps.setString(2, "%" + searchKeyword.toLowerCase() + "%");
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				totalCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalCount;
	}

	// 재고 추가
	public void insertStock(StockDTO stock) {
		String query = "INSERT INTO stock (stock_id, item_code, stock_name, stock_count, stock_location, stock_sort) "
				+ "VALUES (?, ?, ?, ?, ?, ?)";
		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, stock.getStockId());
			ps.setString(2, stock.getItemCode());
			ps.setString(3, stock.getStockName());
			ps.setInt(4, stock.getStockCount());
			ps.setString(5, stock.getStockLocation());
			ps.setString(6, stock.getStockSort());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 재고 수정
	public void updateStock(StockDTO stock) {
		String query = "UPDATE stock SET item_code = ?, stock_name = ?, stock_count = ?, stock_location = ?, stock_sort = ? "
				+ "WHERE stock_id = ?";
		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, stock.getItemCode());
			ps.setString(2, stock.getStockName());
			ps.setInt(3, stock.getStockCount());
			ps.setString(4, stock.getStockLocation());
			ps.setString(5, stock.getStockSort());
			ps.setString(6, stock.getStockId());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 재고 삭제
	public void deleteStock(String stockId) {
		String query = "DELETE FROM stock WHERE stock_id = ?";
		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setString(1, stockId);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateStockCount(String stockId, int stockCount) {
        String query = "UPDATE stock SET stock_count = ? WHERE stock_id = ?";
        try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
        	ps.setInt(1, stockCount);
        	ps.setString(2, stockId);
        	ps.executeUpdate();
        } catch (Exception e) {
			e.printStackTrace();
		}
    }
}
