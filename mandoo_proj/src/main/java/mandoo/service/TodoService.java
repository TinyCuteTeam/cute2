package mandoo.service;

import java.util.List;
import mandoo.DAO.TodoDAO;
import mandoo.DTO.TodoDTO;

public class TodoService {
	private TodoDAO todoDao;

	public TodoService() {
		todoDao = new TodoDAO();
	}

	// 일정 추가
	public void addTodo(TodoDTO todo) throws Exception {
		todoDao.addTodo(todo);
	}

	// 모든 일정 가져오기
	public List<TodoDTO> getAllTodos() throws Exception {
		return todoDao.getAllTodos();
	}

	// 일정 수정 및 삭제 추가 가능
}
