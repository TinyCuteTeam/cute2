package mandoo.service;

import java.util.List;

import mandoo.DAO.BOMDAO;
import mandoo.DTO.BOMDTO;

public class BOMService {
    private BOMDAO bomDao = new BOMDAO();

    public List<BOMDTO> getBOMsByBomId(String bomId) throws Exception {
        return bomDao.getBOMsByBomId(bomId);
    }

    public List<String> getAllBOMIds() throws Exception {
        return bomDao.getAllBOMIds();
    }

    public void addBOM(BOMDTO bom) throws Exception {
        bomDao.addBOM(bom);
    }

    public void updateBOM(BOMDTO bom) throws Exception {
        bomDao.updateBOM(bom);
    }

    public void deleteBOM(String bomId, String itemCode) throws Exception {
        bomDao.deleteBOM(bomId, itemCode);
    }
}
