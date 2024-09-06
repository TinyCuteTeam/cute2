package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.OrderInfoDTO;
import mandoo.db.Database;

public class OrderInfoDAO {

    // 전체 주문 수 조회
    public int getTotalOrders() throws Exception {
        String sql = "SELECT COUNT(*) FROM order_info";
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {
            if (rs.next()) {
                return rs.getInt(1);
            }
        }
        return 0;
    }

 // 특정 페이지의 주문 목록 가져오기
    public List<OrderInfoDTO> getOrdersByPage(int page, int pageSize) throws Exception {
        List<OrderInfoDTO> orders = new ArrayList<>();
        String sql = "SELECT * FROM (SELECT A.*, ROWNUM R FROM order_info A WHERE ROWNUM <= ?) WHERE R >= ?";
        int end = page * pageSize;
        int start = end - pageSize + 1;

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, end);
            pstmt.setInt(2, start);
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                OrderInfoDTO order = new OrderInfoDTO();
                order.setOrderId(rs.getString("order_id"));
                order.setClientId(rs.getString("client_id"));
                order.setOrderDate(rs.getString("order_date"));
                order.setOrderEndDate(rs.getString("order_enddate"));
                order.setProductName(rs.getString("product_name"));  // 변경된 부분
                order.setOrderCount(rs.getInt("order_count"));
                order.setOrderPrice(rs.getString("order_price"));

                orders.add(order);
            }
        }

        return orders;
    }

}
