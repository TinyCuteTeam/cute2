package mandoo.service;

import mandoo.DAO.BomAddDAO;
import mandoo.DTO.BomAddDTO;

public class BomAddService {

	private BomAddDAO bomAddDAO = new BomAddDAO();

	public void addBom(BomAddDTO bom) throws Exception {
		bomAddDAO.addBom(bom);
	}
}
