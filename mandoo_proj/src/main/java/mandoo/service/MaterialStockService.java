package mandoo.service;

import java.util.List;

import mandoo.DAO.MaterialStockDAO;
import mandoo.DTO.MaterialStockDTO;

public class MaterialStockService {
	private MaterialStockDAO materialStockDAO = new MaterialStockDAO();

	public List<MaterialStockDTO> getMaterialStocks(String searchKeyword, int pageNumber, int pageSize) {
		return materialStockDAO.getMaterialStocks(searchKeyword, pageNumber, pageSize);
	}

	public int getTotalCount(String searchKeyword) {
		return materialStockDAO.getTotalCount(searchKeyword);
	}
}
