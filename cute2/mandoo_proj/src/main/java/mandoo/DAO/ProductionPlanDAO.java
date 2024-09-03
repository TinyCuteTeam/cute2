package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ProductionPlanDTO;
import mandoo.db.Database;

public class ProductionPlanDAO {

    // 생산 계획 목록 가져오기 (페이징 적용)
    public List<ProductionPlanDTO> getPlans(int page, int pageSize) throws Exception {
        List<ProductionPlanDTO> plans = new ArrayList<>();
        String sql = "SELECT * FROM (SELECT A.*, ROWNUM R FROM production_plan A WHERE ROWNUM <= ?) WHERE R >= ?";
        int end = page * pageSize;
        int start = end - pageSize + 1;

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, end);
            pstmt.setInt(2, start);
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                ProductionPlanDTO plan = new ProductionPlanDTO();
                plan.setPlanId(rs.getString("plan_id"));
                plan.setPlanContents(rs.getString("plan_contents"));
                plan.setPlanDate(rs.getDate("plan_date"));
                plan.setPlanEndDate(rs.getDate("plan_end_date"));
                plan.setPlanCount(rs.getInt("plan_count"));
                plan.setPlanName(rs.getString("plan_name"));
                plans.add(plan);
            }
        }
        return plans;
    }

    // 전체 생산 계획 수 가져오기
    public int getTotalPlans() throws Exception {
        String sql = "SELECT COUNT(*) FROM production_plan";
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        }
        return 0;
    }

    // 생산 계획 추가
    public void addPlan(ProductionPlanDTO plan) throws Exception {
        String sql = "INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_end_date, plan_count, plan_name) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, plan.getPlanId());
            pstmt.setString(2, plan.getPlanContents());
            pstmt.setDate(3, new java.sql.Date(plan.getPlanDate().getTime()));
            pstmt.setDate(4, new java.sql.Date(plan.getPlanEndDate().getTime()));
            pstmt.setInt(5, plan.getPlanCount());
            pstmt.setString(6, plan.getPlanName());

            pstmt.executeUpdate();
        }
    }

    // 생산 계획 삭제
    public void deletePlans(List<String> planIds) throws Exception {
        if (planIds == null || planIds.isEmpty()) {
            return;
        }

        StringBuilder sql = new StringBuilder("DELETE FROM production_plan WHERE plan_id IN (");
        for (int i = 0; i < planIds.size(); i++) {
            sql.append("?");
            if (i < planIds.size() - 1) {
                sql.append(", ");
            }
        }
        sql.append(")");

        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql.toString())) {
            for (int i = 0; i < planIds.size(); i++) {
                pstmt.setString(i + 1, planIds.get(i));
            }
            pstmt.executeUpdate();
        }
    }
}
