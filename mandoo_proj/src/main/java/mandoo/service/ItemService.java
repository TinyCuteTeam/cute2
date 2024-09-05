package mandoo.service;

import mandoo.DAO.ItemDAO;
import mandoo.DTO.ItemDTO;

import java.util.List;

public class ItemService {
	private ItemDAO itemDAO = new ItemDAO();

	// 품목 목록 페이징 처리
	public List<ItemDTO> getItemsByPage(int page, int itemsPerPage) throws Exception {
		return itemDAO.getItemsByPage(page, itemsPerPage);
	}

	// 총 품목 개수 가져오기
	public int getTotalItemsCount() throws Exception {
		return itemDAO.getTotalItemsCount();
	}

	// 품목 추가
	public void addItem(ItemDTO item) throws Exception {
		itemDAO.addItem(item);
	}

	// 품목 수정
	public void updateItem(ItemDTO item) throws Exception {
		itemDAO.updateItem(item);
	}

	// 품목 삭제
	public void deleteItem(String itemCode) throws Exception {
		itemDAO.deleteItem(itemCode);
	}
}
