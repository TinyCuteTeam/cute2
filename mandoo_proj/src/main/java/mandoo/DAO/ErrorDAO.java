package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ErrorDTO;
import mandoo.db.Database;

public class ErrorDAO {

    // 전체 에러 목록 가져오기
    public List<ErrorDTO> getAllErrors() throws Exception {
        List<ErrorDTO> errors = new ArrayList<>();
        String sql = "SELECT * FROM error";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
                ErrorDTO error = new ErrorDTO();
                error.setErrorId(rs.getString("error_id"));
                error.setErrorName(rs.getString("error_name"));
                error.setErrorContents(rs.getString("error_contents"));
                errors.add(error);
            }
        }
        return errors;
    }

    // 새로운 error_id 생성 메서드
    public String getNextErrorId() throws Exception {
        String sql = "SELECT MAX(error_id) FROM error";
        String nextId = "E001";  // 기본 시작 ID

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            if (rs.next()) {
                String lastId = rs.getString(1);
                if (lastId != null) {
                    int lastNum = Integer.parseInt(lastId.substring(1)); // "E" 뒤의 숫자 부분을 추출
                    nextId = "E" + String.format("%03d", lastNum + 1);  // 숫자 부분을 1 증가시켜 새로운 ID 생성
                }
            }
        }
        return nextId;
    }

    // 에러 추가
    public void addError(ErrorDTO error) throws Exception {
        String errorId = getNextErrorId();  // 새로운 ID 생성
        String sql = "INSERT INTO error (error_id, error_name, error_contents) VALUES (?, ?, ?)";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, errorId);
            pstmt.setString(2, error.getErrorName());
            pstmt.setString(3, error.getErrorContents());
            pstmt.executeUpdate();
        }
    }

    // 에러 수정
    public void updateError(ErrorDTO error) throws Exception {
        String sql = "UPDATE error SET error_name = ?, error_contents = ? WHERE error_id = ?";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, error.getErrorName());
            pstmt.setString(2, error.getErrorContents());
            pstmt.setString(3, error.getErrorId());
            pstmt.executeUpdate();
        }
    }

    // 에러 삭제
    public void deleteError(String errorId) throws Exception {
        String sql = "DELETE FROM error WHERE error_id = ?";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, errorId);
            pstmt.executeUpdate();
        }
    }
}
