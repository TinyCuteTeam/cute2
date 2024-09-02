package mandoo.DAO;

import mandoo.DTO.BoardDetailDTO;
import mandoo.db.Database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BoardDetailDAO {

    public BoardDetailDTO getPostDetail(String boardId) throws Exception {
        BoardDetailDTO post = null;
        String sql = "SELECT b.bord_id, b.user_id, b.board_title, b.board_contents, b.board_date, u.user_name " +
                     "FROM board b " +
                     "JOIN users u ON b.user_id = u.user_id " +
                     "WHERE b.bord_id = ?";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, boardId);

            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    post = new BoardDetailDTO();
                    post.setBoardId(rs.getString("bord_id"));
                    post.setUserId(rs.getString("user_id"));
                    post.setBoardTitle(rs.getString("board_title"));
                    post.setBoardContents(rs.getString("board_contents"));
                    post.setBoardDate(rs.getDate("board_date"));  // 이 부분에서 날짜를 가져옴
                    post.setUserName(rs.getString("user_name"));  // 작성자 이름 설정
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("게시글 상세 정보를 불러오는 중 오류가 발생했습니다.");
        }
        return post;
    }
}
