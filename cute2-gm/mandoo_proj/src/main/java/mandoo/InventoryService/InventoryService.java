package mandoo.InventoryService;

import java.util.List;

import mandoo.InventoryDAO.InventoryDAO;
import mandoo.InventoryDTO.InventoryDTO;

public class InventoryService {
	
	  private InventoryDAO InventoryDAO = new InventoryDAO();
	  
	  public List<InventoryDTO> selectInventory() {
		  
	        return InventoryDAO.selectInventory();
	  }
	  
	  public void addinventory(InventoryDTO IDTO) {
	    	
	    	InventoryDAO.addinventory(IDTO);
	  }
	  
	  public void deleteInventory(String InventoryId) {
		  
		  	InventoryDAO.deleteInventory(InventoryId);
	   }
	  
	  public void updateInventory(InventoryDTO IDTO) {
	        InventoryDAO.updateInventory(IDTO);
	        
	  }
	  


}
