package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.BoardDTO;
import mandoo.db.Database;

public class BoardDAO {

	// 페이지 번호와 페이지당 게시글 수를 받아오는 메서드
	public List<BoardDTO> getAllPosts(int page, int postsPerPage) throws Exception {
		List<BoardDTO> posts = new ArrayList<>();
		int start = (page - 1) * postsPerPage + 1;
		int end = page * postsPerPage;

		String sql = "SELECT * FROM (" + "SELECT rownum AS rnum, A.* FROM (" + "SELECT "
				+ "CAST(SUBSTR(b.bord_id, 2) AS NUMBER) AS bord_id_num, "
				+ "b.bord_id, b.user_id, b.board_title, b.board_contents, b.board_date, u.user_name " + "FROM board b "
				+ "JOIN users u ON b.user_id = u.user_id " + "ORDER BY bord_id_num DESC) A WHERE rownum <= ?) "
				+ "WHERE rnum >= ?";

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

			pstmt.setInt(1, end);
			pstmt.setInt(2, start);

			try (ResultSet rs = pstmt.executeQuery()) {
				while (rs.next()) {
					BoardDTO post = new BoardDTO();
					post.setBoardId(rs.getString("bord_id"));
					post.setUserId(rs.getString("user_id"));
					post.setBoardTitle(rs.getString("board_title"));
					post.setBoardContents(rs.getString("board_contents"));
					post.setBoardDate(rs.getDate("board_date"));
					post.setUserName(rs.getString("user_name")); // 작성자 이름 설정
					posts.add(post);
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("게시글을 불러오는 중 오류가 발생했습니다.");
		}
		return posts;
	}

	// 전체 게시글 수를 가져오는 메서드
	public int getTotalPostsCount() throws Exception {
		String sql = "SELECT COUNT(*) AS count FROM board";

		try (Connection conn = Database.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {

			if (rs.next()) {
				return rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception("게시글 수를 가져오는 중 오류가 발생했습니다.");
		}
		return 0;
	}

	// 새로운 보드 아이디 생성 메서드
	private String generateNewBoardId() throws Exception {
		String sql = "SELECT MAX(CAST(SUBSTR(bord_id, 2) AS NUMBER)) AS max_id FROM board";
		try (Connection conn = Database.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery()) {

			if (rs.next()) {
				int maxId = rs.getInt("max_id");
				// 새 보드 아이디 생성
				return String.format("B%03d", maxId + 1);
			} else {
				// 첫 번째 보드 아이디인 경우
				return "B001";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new SQLException("새 보드 아이디를 생성하는 중 오류가 발생했습니다.");
		}
	}

	// 게시글을 데이터베이스에 저장하는 메서드
	public void savePost(BoardDTO boardDTO) throws Exception {
		String newBoardId = generateNewBoardId(); // 새로운 보드 아이디 생성
		String sql = "INSERT INTO board (bord_id, user_id, board_title, board_contents, board_date) "
				+ "VALUES (?, ?, ?, ?, SYSDATE)";

		try (Connection conn = Database.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {

			pstmt.setString(1, newBoardId);
			pstmt.setString(2, boardDTO.getUserId());
			pstmt.setString(3, boardDTO.getBoardTitle());
			pstmt.setString(4, boardDTO.getBoardContents());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw new SQLException("게시글을 저장하는 중 오류가 발생했습니다.");
		}
	}
}
