package mandoo.service;

import java.util.List;
import mandoo.DAO.ErrorDAO;
import mandoo.DTO.ErrorDTO;

public class ErrorService {

	private ErrorDAO errorDAO = new ErrorDAO();

	// 페이징된 에러 목록 가져오기
	public List<ErrorDTO> getErrorsByPage(int page, int recordsPerPage) throws Exception {
		return errorDAO.getErrorsByPage(page, recordsPerPage);
	}

	// 전체 에러 수 가져오기
	public int getErrorCount() throws Exception {
		return errorDAO.getErrorCount();
	}

	// 에러 추가
	public void addError(ErrorDTO error) throws Exception {
		errorDAO.addError(error);
	}

	// 에러 수정
	public void updateError(ErrorDTO error) throws Exception {
		errorDAO.updateError(error);
	}

	// 에러 삭제
	public void deleteError(String errorId) throws Exception {
		errorDAO.deleteError(errorId);
	}
}
