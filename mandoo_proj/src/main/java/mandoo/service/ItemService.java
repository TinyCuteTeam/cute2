package mandoo.service;

import java.util.List;

import mandoo.DAO.ItemDAO;
import mandoo.DTO.ItemDTO;

public class ItemService {
    private ItemDAO itemDAO = new ItemDAO();

    public List<ItemDTO> getAllItems() {
        return itemDAO.getAllItems();
    }

    public void addItem(ItemDTO item) {
        itemDAO.addItem(item);
    }

    public void updateItem(ItemDTO item) {
        itemDAO.updateItem(item);
    }

    public void deleteItem(String itemCode) {
        itemDAO.deleteItem(itemCode);
    }
}
