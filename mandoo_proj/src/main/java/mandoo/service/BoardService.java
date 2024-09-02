package mandoo.service;

import java.util.List;

import mandoo.DAO.BoardDAO;
import mandoo.DTO.BoardDTO;

public class BoardService {
	private BoardDAO boardDAO = new BoardDAO();

	public List<BoardDTO> getAllPosts(int page, int postsPerPage) {
		try {
			return boardDAO.getAllPosts(page, postsPerPage);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public int getTotalPostsCount() {
		try {
			return boardDAO.getTotalPostsCount();
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}

	public void createPost(BoardDTO boardDTO) {
		try {
			boardDAO.savePost(boardDTO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
