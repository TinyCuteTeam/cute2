package mandoo.service;

import java.util.List;
import mandoo.DAO.StockDAO;
import mandoo.DTO.StockDTO;

public class StockService {
	private StockDAO stockDAO = new StockDAO();

	public List<StockDTO> getStockList(int pageNumber, int pageSize, String searchKeyword) {
		return stockDAO.getStockList(pageNumber, pageSize, searchKeyword);
	}

	public int getTotalStockCount(String searchKeyword) {
		return stockDAO.getTotalStockCount(searchKeyword);
	}

	public void insertStock(StockDTO stock) {
		stockDAO.insertStock(stock);
	}

	public void updateStock(StockDTO stock) {
		stockDAO.updateStock(stock);
	}

	public void deleteStock(String stockId) {
		stockDAO.deleteStock(stockId);
	}
	
	public void updateStockCount(String stockId, int stockCount) {
        stockDAO.updateStockCount(stockId, stockCount);
    }
}
