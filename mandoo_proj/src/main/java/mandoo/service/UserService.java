package mandoo.service;

import mandoo.DAO.UserDAO;
import mandoo.DTO.UserDTO;

public class UserService {
    private UserDAO userDAO = new UserDAO();

    // 기존 로그인 인증 메서드
    public UserDTO authenticate(String userId, String userPw) throws Exception {
        UserDTO user = userDAO.getUserById(userId);
        if (user != null && user.getUserPw().equals(userPw)) {
            return user; // 인증 성공
        }
        return null; // 인증 실패
    }

    // 새로운 유저 정보 조회 메서드
    public UserDTO getUserById(String userId) throws Exception {
        return userDAO.getUserById(userId);
    }

}
