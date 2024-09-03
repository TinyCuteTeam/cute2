package mandoo.service;

import java.util.List;

import mandoo.DAO.ProductionPlanDAO;
import mandoo.DTO.ProductionPlanDTO;

public class ProductionPlanService {
    private ProductionPlanDAO planDAO = new ProductionPlanDAO();

    public List<ProductionPlanDTO> getPlans(int page, int pageSize) throws Exception {
        return planDAO.getPlans(page, pageSize);
    }

    public int getTotalPlans() throws Exception {
        return planDAO.getTotalPlans();
    }

    public void addPlan(ProductionPlanDTO plan) throws Exception {
        planDAO.addPlan(plan);
    }

    public void deletePlans(List<String> planIds) throws Exception {
        planDAO.deletePlans(planIds);
    }
}
