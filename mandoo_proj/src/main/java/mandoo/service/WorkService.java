package mandoo.service;

import java.util.List;
import mandoo.DAO.WorkDAO;
import mandoo.DTO.WorkDTO;

public class WorkService {
	private WorkDAO workDAO = new WorkDAO();

	public void startWork(String workId, String lineNo) throws Exception {
		// 라인 번호가 사용 중인지 확인
		if (workDAO.isLineNoInUse(lineNo)) {
			throw new Exception("해당 라인 번호는 이미 사용 중입니다.");
		}

		// 라인 번호가 사용 중이 아니면 작업 시작
		workDAO.updateWorkToInProgress(workId, lineNo);
	}

	public List<WorkDTO> getWorksByPage(int page, int pageSize) throws Exception {
		return workDAO.getWorksByPage(page, pageSize);
	}

	public int getTotalWorks() throws Exception {
		return workDAO.getTotalWorks();
	}

	public void addWork(WorkDTO work) throws Exception {
		workDAO.addWork(work);
	}
}
