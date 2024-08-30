package mandoo.Service;

import java.util.List;

import mandoo.DAO.ProductPlanDAO;
import mandoo.DTO.ProductPlanDTO;

public class ProductPlanService {

	private ProductPlanDAO planDAO = new ProductPlanDAO();

	public List<ProductPlanDTO> getallPlan() {
		return planDAO.getallPlan();
	}

	
	public void productplan(ProductPlanDTO plan) {
		planDAO.planInsert(plan);
	}
	
	
}
