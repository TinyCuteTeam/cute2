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

	public String getNextBomId() throws Exception {
		String maxBomId = bomDao.getMaxBomId();
		if (maxBomId == null || maxBomId.isEmpty()) {
			return "A00001"; // 초기 값 설정 (BOM ID가 없는 경우)
		}

		// BOM ID가 "A00001", "A00002" 형식이라고 가정하고, 숫자 부분을 증가시킴
		int idNum = Integer.parseInt(maxBomId.substring(1)); // "00001" -> 1
		idNum++; // 다음 번호로 증가
		return String.format("A%05d", idNum); // "A00002" 형식으로 반환
	}
}
