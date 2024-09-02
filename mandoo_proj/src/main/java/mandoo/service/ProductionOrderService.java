package mandoo.service;

import java.util.List;

import mandoo.DAO.ProductionOrderDAO;
import mandoo.DTO.ProductionOrderDTO;

public class ProductionOrderService {

    // 월별 생산량 데이터를 가져오는 메서드
    public List<ProductionOrderDTO> getMonthlyProductionData() throws Exception {
        ProductionOrderDAO productionOrderDAO = new ProductionOrderDAO();
        try {
            return productionOrderDAO.getMonthlyProductionData();
        } finally {
            productionOrderDAO.close();
        }
    }
}
