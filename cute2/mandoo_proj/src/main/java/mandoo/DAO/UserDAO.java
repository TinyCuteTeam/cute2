package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.UserDTO;
import mandoo.db.Database;

public class UserDAO {

    // 기존의 getUserById 메서드
    public UserDTO getUserById(String userId) throws Exception {
        UserDTO user = null;

        try (Connection conn = Database.getConnection()) {
            String sql = "SELECT * FROM users WHERE user_id = ?";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, userId);
                try (ResultSet rs = pstmt.executeQuery()) {
                    if (rs.next()) {
                        user = new UserDTO();
                        user.setUserId(rs.getString("user_id"));
                        user.setUserPw(rs.getString("user_pw"));
                        user.setUserAccess(rs.getInt("user_access"));
                        user.setUserName(rs.getString("user_name"));
                        user.setUserEmail(rs.getString("user_email"));
                    }
                }
            }
        }

        return user;
    }

    // 새로운 사용자 추가 메서드
    public void insertUser(UserDTO user) throws Exception {
        try (Connection conn = Database.getConnection()) {
            String sql = "INSERT INTO users (user_id, user_pw, user_access, user_name, user_email) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, user.getUserId());
                pstmt.setString(2, user.getUserPw());
                pstmt.setInt(3, user.getUserAccess());
                pstmt.setString(4, user.getUserName());
                pstmt.setString(5, user.getUserEmail());
                pstmt.executeUpdate();
            }
        }
    }

    // 새로운 사용자 업데이트 메서드
    public void updateUser(UserDTO user) throws Exception {
        try (Connection conn = Database.getConnection()) {
            String sql = "UPDATE users SET user_pw = ?, user_access = ?, user_name = ?, user_email = ? WHERE user_id = ?";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, user.getUserPw());
                pstmt.setInt(2, user.getUserAccess());
                pstmt.setString(3, user.getUserName());
                pstmt.setString(4, user.getUserEmail());
                pstmt.setString(5, user.getUserId());
                pstmt.executeUpdate();
            }
        }
    }

    // 새로운 사용자 삭제 메서드
    public void deleteUser(String userId) throws Exception {
        try (Connection conn = Database.getConnection()) {
            String sql = "DELETE FROM users WHERE user_id = ?";
            try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
                pstmt.setString(1, userId);
                pstmt.executeUpdate();
            }
        }
    }

    // 모든 사용자 가져오기 메서드
    public List<UserDTO> getAllUsers() throws Exception {
        List<UserDTO> users = new ArrayList<>();

        try (Connection conn = Database.getConnection()) {
            String sql = "SELECT * FROM users";
            try (PreparedStatement pstmt = conn.prepareStatement(sql);
                 ResultSet rs = pstmt.executeQuery()) {

                while (rs.next()) {
                    UserDTO user = new UserDTO();
                    user.setUserId(rs.getString("user_id"));
                    user.setUserPw(rs.getString("user_pw"));
                    user.setUserAccess(rs.getInt("user_access"));
                    user.setUserName(rs.getString("user_name"));
                    user.setUserEmail(rs.getString("user_email"));
                    users.add(user);
                }
            }
        }

        return users;
    }
}
