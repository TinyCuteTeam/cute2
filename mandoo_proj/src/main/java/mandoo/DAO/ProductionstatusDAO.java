package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ProductionstatusDTO;
import mandoo.DTO.WorkDTO;
import mandoo.db.Database;

public class ProductionstatusDAO {

	public List<ProductionstatusDTO> getProductionStatusByLine() {
		List<ProductionstatusDTO> productionLines = new ArrayList<>();
		String query = "SELECT line_no, work_id, work_name, SUM(production_completed_qty) AS total_completed_qty, "
				+ "SUM(production_qty) AS total_qty, work_do FROM work WHERE line_no IS NOT NULL "
				+ "GROUP BY line_no, work_id, work_name, work_do ORDER BY line_no";

		try (Connection con = Database.getConnection();
				PreparedStatement ps = con.prepareStatement(query);
				ResultSet rs = ps.executeQuery()) {

			while (rs.next()) {
				ProductionstatusDTO line = new ProductionstatusDTO();
				line.setLineNo(rs.getString("line_no"));
				line.setWorkId(rs.getString("work_id"));
				line.setWorkName(rs.getString("work_name"));
				line.setProductionCompletedQty(rs.getInt("total_completed_qty"));
				line.setProductionQty(rs.getInt("total_qty"));
				line.setWorkDo(rs.getString("work_do"));

				// 라인별 작업을 추가하는 부분
				List<WorkDTO> works = getWorksByLine(rs.getString("line_no"));
				line.setWorks(works);

				productionLines.add(line);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return productionLines;
	}

	// 특정 라인에 대한 작업 목록을 가져오는 메서드
	private List<WorkDTO> getWorksByLine(String lineNo) {
		List<WorkDTO> works = new ArrayList<>();
		String query = "SELECT work_id, user_id, item_code, work_write, work_endate, work_name, work_do, production_qty, production_completed_qty "
				+ "FROM work WHERE line_no = ?";

		try (Connection con = Database.getConnection(); PreparedStatement ps = con.prepareStatement(query)) {

			ps.setString(1, lineNo);
			try (ResultSet rs = ps.executeQuery()) {
				while (rs.next()) {
					WorkDTO work = new WorkDTO();
					work.setWorkId(rs.getString("work_id"));
					work.setUserId(rs.getString("user_id"));
					work.setItemCode(rs.getString("item_code"));
					work.setWorkWrite(rs.getDate("work_write"));
					work.setWorkEndate(rs.getDate("work_endate"));
					work.setWorkName(rs.getString("work_name"));
					work.setWorkDo(rs.getString("work_do"));
					work.setProductionQty(rs.getInt("production_qty"));
					work.setProductionCompletedQty(rs.getInt("production_completed_qty"));

					works.add(work);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return works;
	}
}
