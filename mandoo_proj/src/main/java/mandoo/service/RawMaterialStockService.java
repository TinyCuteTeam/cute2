package mandoo.service;

import java.util.List;

import mandoo.DAO.RawMaterialStockDAO;
import mandoo.DTO.RawMaterialStockDTO;

public class RawMaterialStockService {
	private RawMaterialStockDAO rawMaterialStockDAO = new RawMaterialStockDAO();

	public List<RawMaterialStockDTO> getRawMaterialStocks(String searchKeyword, int pageNumber, int pageSize) {
		return rawMaterialStockDAO.getRawMaterialStocks(searchKeyword, pageNumber, pageSize);
	}

	public int getTotalCount(String searchKeyword) {
		return rawMaterialStockDAO.getTotalCount(searchKeyword);
	}
}
