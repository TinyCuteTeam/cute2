package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ProductionOrderDTO;
import mandoo.db.Database;

public class ProductionOrderDAO {
    private Connection conn;

    public ProductionOrderDAO() throws Exception {
        this.conn = Database.getConnection();
    }

    // 월별 생산량을 가져오는 메서드
    public List<ProductionOrderDTO> getMonthlyProductionData() throws SQLException {
        String sql = "SELECT TO_CHAR(WORK_ENDATE, 'YYYY-MM') AS month, SUM(production_qty) AS total_production " +
                     "FROM work " +
                     "GROUP BY TO_CHAR(WORK_ENDATE, 'YYYY-MM') " +
                     "ORDER BY TO_CHAR(WORK_ENDATE, 'YYYY-MM')";

        List<ProductionOrderDTO> productionOrderList = new ArrayList<>();

        try (PreparedStatement pstmt = conn.prepareStatement(sql); 
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                ProductionOrderDTO order = new ProductionOrderDTO();
                order.setOrderMonth(rs.getString("month"));
                order.setProductionQty(rs.getInt("total_production"));
                productionOrderList.add(order);
            }
        }
        return productionOrderList;
    }

    public void close() {
        if (conn != null) {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
