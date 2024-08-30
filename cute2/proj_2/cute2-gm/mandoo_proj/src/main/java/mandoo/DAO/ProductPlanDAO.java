package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ProductPlanDTO;
import mandoo.db.Database;

public class ProductPlanDAO {
	public List<ProductPlanDTO> getallPlan() {
		List<ProductPlanDTO> plan = new ArrayList<>();
		String query = "SELECT * FROM production_plan";

		try (Connection con = Database.getConnection();
			 PreparedStatement ps = con.prepareStatement(query);
			 ResultSet rs = ps.executeQuery();) {

			while (rs.next()) {
				ProductPlanDTO dto = new ProductPlanDTO();
				dto.setPlanid(rs.getString("plan_id"));
				dto.setPlancontents(rs.getString("plan_contents"));
				dto.setPlandate(rs.getString("plan_date"));
				dto.setPlancount(rs.getString("plan_count"));
				dto.setPlanname(rs.getString("plan_name"));
				plan.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return plan;
	}

	public void planInsert(ProductPlanDTO plan) {
		String query = " INSERT INTO production_plan (plan_id, plan_contents, plan_date, plan_count, plan_name)";
			   query += " VALUES (?, ?, ?, ?, ?)";

		try (Connection con = Database.getConnection(); 
			 PreparedStatement ps = con.prepareStatement(query);) {

			ps.setString(1, plan.getPlanid());
			ps.setString(2, plan.getPlancontents());
			ps.setString(3, plan.getPlandate());
			ps.setString(4, plan.getPlancount());
			ps.setString(5, plan.getPlanname());

			ps.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();
		}

	}

}