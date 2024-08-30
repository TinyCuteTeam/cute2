package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import mandoo.DTO.MyPageDTO;
import mandoo.db.Database;

public class MyPageDAO {

    public MyPageDTO getMyPageByUserId(String userId) throws Exception {
        MyPageDTO mypage = null;

        String query = "SELECT * FROM mypage WHERE user_id = ?";
        
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, userId);
            try (ResultSet rs = pstmt.executeQuery()) {
                if (rs.next()) {
                    mypage = new MyPageDTO();
                    mypage.setMypageId(rs.getString("mypage_id"));
                    mypage.setUserId(rs.getString("user_id"));
                    mypage.setMypageName(rs.getString("mypage_name"));
                    mypage.setMypageAffiliation(rs.getString("mypage_affiliation"));
                    mypage.setMypageIntel(rs.getString("mypage_intel"));
                    mypage.setMypagePhone(rs.getString("mypage_phone"));
                    mypage.setMypagePosition(rs.getString("mypage_position"));
                    mypage.setMypageMainnum(rs.getString("mypage_mainnum"));
                    mypage.setMypageAddress(rs.getString("mypage_address"));
                    mypage.setMypageBirth(rs.getString("mypage_birth"));
                    mypage.setMypageLog(rs.getString("mypage_log"));
                }
            }
        }

        return mypage;
    }
}
