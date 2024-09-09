package mandoo.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import mandoo.db.Database;
import mandoo.DTO.TodoDTO;

public class TodoDAO {

	Database db = new Database();

	public void addTodo(TodoDTO todo) throws Exception {
		String sql = "INSERT INTO todo (todo_id, user_id, todo_date, todo_title, todo_contents) VALUES (todo_seq.NEXTVAL, ?, TO_DATE(?, 'YYYY-MM-DD'), ?, ?)";
		try (Connection conn = db.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, todo.getUserId());
			pstmt.setString(2, todo.getDate());
			pstmt.setString(3, todo.getTitle());
			pstmt.setString(4, todo.getContents());

			int rowsAffected = pstmt.executeUpdate();

			// 삽입 성공 여부 확인
			if (rowsAffected > 0) {
				System.out.println("일정 삽입 성공: " + rowsAffected + "행 삽입됨");
			} else {
				System.out.println("일정 삽입 실패: 0행 삽입됨");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("SQL 오류 발생");
		}
	}

	// 모든 일정 가져오기
	public List<TodoDTO> getAllTodos() throws Exception {
		List<TodoDTO> todos = new ArrayList<>();
		String sql = "SELECT * FROM todo";
		try (Connection conn = db.getConnection();
				Statement stmt = conn.createStatement();
				ResultSet rs = stmt.executeQuery(sql)) {
			while (rs.next()) {
				TodoDTO todo = new TodoDTO(rs.getInt("todo_id"), rs.getString("user_id"), rs.getString("todo_date"),
						rs.getString("todo_title"), rs.getString("todo_contents"));
				todos.add(todo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return todos;
	}

	// 일정 수정
	public void updateTodo(TodoDTO todo) throws Exception {
		String sql = "UPDATE todo SET todo_title = ?, todo_contents = ?, todo_date = TO_DATE(?, 'YYYY-MM-DD') WHERE todo_id = ?";
		try (Connection conn = db.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setString(1, todo.getTitle());
			pstmt.setString(2, todo.getContents());
			pstmt.setString(3, todo.getDate());
			pstmt.setInt(4, todo.getTodoId());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// 일정 삭제
	public void deleteTodo(int todoId) throws Exception {
		String sql = "DELETE FROM todo WHERE todo_id = ?";
		try (Connection conn = db.getConnection(); PreparedStatement pstmt = conn.prepareStatement(sql)) {
			pstmt.setInt(1, todoId);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
