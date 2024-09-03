package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.WorkDTO;
import mandoo.db.Database;

public class WorkDAO {

    // 특정 페이지의 작업 리스트 가져오기
    public List<WorkDTO> getWorksByPage(int page, int pageSize) throws Exception {
        List<WorkDTO> works = new ArrayList<>();
        String sql = "SELECT * FROM (SELECT A.*, ROWNUM R FROM work A WHERE ROWNUM <= ?) WHERE R >= ?";
        int end = page * pageSize;
        int start = end - pageSize + 1;

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, end);
            pstmt.setInt(2, start);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                WorkDTO work = new WorkDTO();
                work.setWorkId(rs.getString("work_id"));
                work.setUserId(rs.getString("user_id"));
                work.setPlanId(rs.getString("plan_id"));
                work.setItemCode(rs.getString("item_code"));
                work.setWorkWrite(rs.getDate("work_write"));
                work.setWorkEndate(rs.getDate("work_endate"));
                work.setWorkName(rs.getString("work_name"));
                work.setWorkDo(rs.getString("work_do"));

                works.add(work);
            }
        }

        return works;
    }

    // 전체 작업 수 조회
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

    // 작업 등록
    public void addWork(WorkDTO work) throws Exception {
        String sql = "INSERT INTO work (work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, work.getWorkId());
            pstmt.setString(2, work.getUserId());
            pstmt.setString(3, work.getPlanId());
            pstmt.setString(4, work.getItemCode());
            pstmt.setDate(5, new java.sql.Date(work.getWorkWrite().getTime()));
            pstmt.setDate(6, new java.sql.Date(work.getWorkEndate().getTime()));
            pstmt.setString(7, work.getWorkName());
            pstmt.setString(8, work.getWorkDo());

            pstmt.executeUpdate();
        }
    }
}
