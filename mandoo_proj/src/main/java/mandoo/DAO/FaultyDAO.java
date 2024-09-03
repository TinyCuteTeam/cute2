package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.FaultyDTO;
import mandoo.db.Database;

public class FaultyDAO {

	public List<FaultyDTO> readFaulty(int pageNumber, int pageSize) {
		List<FaultyDTO> faulty = new ArrayList<>();
		String query = "SELECT * FROM (SELECT ROWNUM rnum, faulty_id, item_code, error_id, work_id, faulty_count "
				+ "FROM (SELECT * FROM faulty) WHERE ROWNUM <= ?) WHERE rnum > ?";

		int startRow = (pageNumber - 1) * pageSize;
		int endRow = pageNumber * pageSize;

		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {
			ps.setInt(1, endRow);
			ps.setInt(2, startRow);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				FaultyDTO faultyDTO = new FaultyDTO();
				faultyDTO.setFaultyid(rs.getString("faulty_id"));
				faultyDTO.setItemcode(rs.getString("item_code"));
				faultyDTO.setErrorid(rs.getString("error_id"));
				faultyDTO.setWorkid(rs.getString("work_id"));
				faultyDTO.setFaultycount(rs.getString("faulty_count"));
				faulty.add(faultyDTO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return faulty;
	}

	public int getTotalCount() {
		String query = "SELECT COUNT(*) FROM faulty";
		int totalCount = 0;

		try (Connection con = Database.getConnection();
				PreparedStatement ps = con.prepareStatement(query);
				ResultSet rs = ps.executeQuery()) {
			if (rs.next()) {
				totalCount = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return totalCount;
	}

	public List<FaultyDTO> getMonthlyDefectRates() {
		List<FaultyDTO> defectRates = new ArrayList<>();
		String query = "SELECT TO_CHAR(w.work_endate, 'YYYY-MM') AS month, "
				+ "SUM(TO_NUMBER(f.faulty_count)) AS defect_rate " + "FROM faulty f "
				+ "JOIN work w ON f.work_id = w.work_id " + "GROUP BY TO_CHAR(w.work_endate, 'YYYY-MM') "
				+ "ORDER BY month";

		try (Connection con = Database.getConnection();
				PreparedStatement ps = con.prepareStatement(query);
				ResultSet rs = ps.executeQuery()) {

			while (rs.next()) {
				FaultyDTO faultyDTO = new FaultyDTO();
				faultyDTO.setFaultyid(rs.getString("month"));
				faultyDTO.setFaultycount(rs.getString("defect_rate"));
				defectRates.add(faultyDTO);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return defectRates;
	}
}
