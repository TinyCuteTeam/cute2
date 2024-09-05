package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

import mandoo.DTO.WorkDTO;
import mandoo.db.Database;

public class WorkDAO {

	// 작업을 '작업 중'으로 업데이트하고 라인 번호 설정
	public void updateWorkToInProgress(String workId, String lineNo) throws Exception {
		String sql = "UPDATE work SET work_do = '작업 중', line_no = ? WHERE work_id = ?";

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, lineNo);
			pstmt.setString(2, workId);
			pstmt.executeUpdate();
		}
	}

	// 특정 작업을 조회
	public WorkDTO getWorkById(String workId) throws Exception {
		String sql = "SELECT * FROM work WHERE work_id = ?";
		WorkDTO work = null;

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, workId);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				work = new WorkDTO();
				work.setWorkId(rs.getString("work_id"));
				work.setUserId(rs.getString("user_id"));
				work.setItemCode(rs.getString("item_code"));
				work.setWorkWrite(rs.getDate("work_write"));
				work.setWorkEndate(rs.getDate("work_endate"));
				work.setWorkName(rs.getString("work_name"));
				work.setWorkDo(rs.getString("work_do"));
				work.setProductionQty(rs.getInt("production_qty"));
				work.setProductionCompletedQty(rs.getInt("production_completed_qty"));
				work.setLineNo(rs.getString("line_no"));
			}
		}
		return work;
	}

	// 생산량 업데이트
	public void updateProductionCompletedQty(String workId, int newCompletedQty) throws Exception {
		String sql = "UPDATE work SET production_completed_qty = ? WHERE work_id = ?";

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, newCompletedQty);
			pstmt.setString(2, workId);
			pstmt.executeUpdate();
		}
	}

	// 작업 상태와 완료된 생산량을 업데이트
	public void updateWorkStatus(String workId, String newStatus, int finalCompletedQty) throws Exception {
		String sql = "UPDATE work SET work_do = ?, production_completed_qty = ? WHERE work_id = ?";

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, newStatus);
			pstmt.setInt(2, finalCompletedQty);
			pstmt.setString(3, workId);
			pstmt.executeUpdate();
		}
	}

	// 라인 번호가 사용 중인지 확인
	public boolean isLineNoInUse(String lineNo) throws Exception {
		String sql = "SELECT COUNT(*) FROM work WHERE line_no = ? AND work_do = '작업 중'";

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, lineNo);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) > 0;
			}
		}
		return false;
	}

	// 전체 작업 수를 조회하는 메서드
	public int getTotalWorks() throws Exception {
		String sql = "SELECT COUNT(*) FROM work";

		try (Connection conn = Database.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {
			if (rs.next()) {
				return rs.getInt(1);
			}
		}
		return 0;
	}

	// 특정 페이지의 작업 리스트 가져오기
	public List<WorkDTO> getWorksByPage(int page, int pageSize) throws Exception {
		List<WorkDTO> works = new ArrayList<>();
		String sql = "SELECT * FROM (SELECT A.*, ROWNUM R FROM work A WHERE ROWNUM <= ?) WHERE R >= ?";
		int end = page * pageSize;
		int start = end - pageSize + 1;

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, end);
			pstmt.setInt(2, start);
			ResultSet rs = pstmt.executeQuery();

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
				work.setLineNo(rs.getString("line_no"));

				works.add(work);
			}
		}

		return works;
	}

	// 작업을 데이터베이스에 추가하는 메서드
	public void addWork(WorkDTO work) throws Exception {
		String sql = "INSERT INTO work (work_id, user_id, item_code, work_write, work_endate, work_name, work_do, production_qty, production_completed_qty, line_no) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, work.getWorkId());
			pstmt.setString(2, work.getUserId());
			pstmt.setString(3, work.getItemCode());
			pstmt.setDate(4, new java.sql.Date(work.getWorkWrite().getTime()));
			pstmt.setDate(5, new java.sql.Date(work.getWorkEndate().getTime()));
			pstmt.setString(6, work.getWorkName());
			pstmt.setString(7, work.getWorkDo());
			pstmt.setInt(8, work.getProductionQty());
			pstmt.setInt(9, work.getProductionCompletedQty());
			pstmt.setString(10, work.getLineNo());

			pstmt.executeUpdate();
		}
	}
}
