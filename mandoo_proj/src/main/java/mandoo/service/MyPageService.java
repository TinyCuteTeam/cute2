package mandoo.service;

import mandoo.DAO.MyPageDAO;
import mandoo.DTO.MyPageDTO;

public class MyPageService {
    private MyPageDAO myPageDAO = new MyPageDAO();

    public MyPageDTO getMyPageByUserId(String userId) throws Exception {
        return myPageDAO.getMyPageByUserId(userId);
    }
}