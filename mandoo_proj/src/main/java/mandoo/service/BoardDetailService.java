package mandoo.service;

import mandoo.DAO.BoardDetailDAO;
import mandoo.DTO.BoardDetailDTO;

public class BoardDetailService {
	private BoardDetailDAO boardDetailDAO = new BoardDetailDAO();

	public BoardDetailDTO getPostDetail(String boardId) {
		try {
			return boardDetailDAO.getPostDetail(boardId);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
