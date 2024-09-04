package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ProductionstatusDTO;
import mandoo.db.Database;

public class ProductionstatusDAO {

    public List<ProductionstatusDTO> ProductionstatusRead(int offset, int limit) {
        List<ProductionstatusDTO> productionstatusDTOList = new ArrayList<>();
        String query = "SELECT * " +
                "FROM ( " +
                "    SELECT ROWNUM rnum, work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do " +
                "    FROM ( " +
                "        SELECT work_id, user_id, plan_id, item_code, work_write, work_endate, work_name, work_do " +
                "        FROM work " +
                "        ORDER BY work_id " +
                "    ) " +
                "    WHERE ROWNUM <= ? " +
                ") " +
                "WHERE rnum > ?";
        
        try (Connection con = Database.getConnection();
             PreparedStatement ps = con.prepareStatement(query)) {
            
            ps.setInt(1, offset + limit);
            ps.setInt(2, offset);
            ResultSet rs = ps.executeQuery();
            
            while (rs.next()) {
                ProductionstatusDTO PDTO = new ProductionstatusDTO();
                PDTO.setWorkId(rs.getString("work_id"));
                PDTO.setUserId(rs.getString("user_id"));
                PDTO.setPlanId(rs.getString("plan_id"));
                PDTO.setItemCode(rs.getString("item_code"));
                PDTO.setWorkWrite(rs.getDate("work_write"));
                PDTO.setWorkEndate(rs.getDate("work_endate"));
                PDTO.setWorkName(rs.getString("work_name"));
                PDTO.setWorkDo(rs.getString("work_do"));
                
                productionstatusDTOList.add(PDTO);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return productionstatusDTOList;
    }

    public int getTotalCount() {
        int count = 0;
        String query = "SELECT COUNT(*) FROM work";
        
        try (Connection con = Database.getConnection();
             PreparedStatement ps = con.prepareStatement(query);
             ResultSet rs = ps.executeQuery()) {
            
            if (rs.next()) {
                count = rs.getInt(1);
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return count;
    }
}
