package mandoo.controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import mandoo.DTO.TodoDTO;
import mandoo.DTO.UserDTO;
import mandoo.service.TodoService;

import java.io.IOException;
import java.util.List;

@WebServlet("/todo")
public class TodoController extends HttpServlet {
	private TodoService todoService;

	@Override
	public void init() throws ServletException {
		todoService = new TodoService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<TodoDTO> todos = null;
		try {
			todos = todoService.getAllTodos();
		} catch (Exception e) {
			e.printStackTrace();
		}
		request.setAttribute("todos", todos);
		request.getRequestDispatcher("/WEB-INF/Todo.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		UserDTO user = (UserDTO) session.getAttribute("user");

		if (user == null) {
			response.sendRedirect("login");
			return;
		}

		String userId = user.getUserId();
		String date = request.getParameter("date");
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");

		// 콘솔에 출력하여 확인
		System.out.println("userId: " + userId);
		System.out.println("date: " + date);
		System.out.println("title: " + title);
		System.out.println("contents: " + contents);

		TodoDTO todo = new TodoDTO();
		todo.setUserId(userId);
		todo.setDate(date);
		todo.setTitle(title);
		todo.setContents(contents);

		try {
			todoService.addTodo(todo);
			System.out.println("일정 추가 성공");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("일정 추가 실패");
		}

		response.sendRedirect("todo");
	}
}
