package mandoo.service;

import java.util.List;

import mandoo.DAO.FaultyDAO;
import mandoo.DTO.FaultyDTO;

public class FaultyService {
	private FaultyDAO faultyDAO = new FaultyDAO();

	public List<FaultyDTO> readFaulty(int pageNumber, int pageSize) {
		return faultyDAO.readFaulty(pageNumber, pageSize);
	}

	public int getTotalCount() {
		return faultyDAO.getTotalCount();
	}

	public List<FaultyDTO> getMonthlyDefectRates() {
		return faultyDAO.getMonthlyDefectRates();
	}
}
