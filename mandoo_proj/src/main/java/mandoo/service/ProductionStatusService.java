package mandoo.service;

import java.util.List;

import mandoo.DAO.ProductionstatusDAO;
import mandoo.DTO.ProductionstatusDTO;

public class ProductionStatusService {

    private ProductionstatusDAO productionstatusDAO = new ProductionstatusDAO();

    public List<ProductionstatusDTO> ProductionstatusRead(int offset, int limit) {
    	
        return productionstatusDAO.ProductionstatusRead(offset, limit);
    }

    public int getTotalCount() {
        return productionstatusDAO.getTotalCount();
    }
}
