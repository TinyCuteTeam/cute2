package mandoo.controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.ErrorDTO;
import mandoo.service.ErrorService;

@WebServlet("/Error")
public class ErrorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ErrorService errorService = new ErrorService();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		try {
			// 페이징 처리용 파라미터 받기
			int currentPage = 1;
			if (req.getParameter("page") != null) {
				currentPage = Integer.parseInt(req.getParameter("page"));
			}

			int recordsPerPage = 8; // 페이지당 6개씩
			ErrorService errorService = new ErrorService();

			// 페이징 처리된 에러 목록 가져오기
			List<ErrorDTO> errors = errorService.getErrorsByPage(currentPage, recordsPerPage);
			int totalRecords = errorService.getErrorCount();
			int totalPages = (int) Math.ceil((double) totalRecords / recordsPerPage);

			// JSP로 전달할 데이터 설정
			req.setAttribute("errors", errors);
			req.setAttribute("currentPage", currentPage);
			req.setAttribute("totalPages", totalPages);

			req.getRequestDispatcher("/WEB-INF/에러코드.jsp").forward(req, resp);
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");

		String action = req.getParameter("action");

		try {
			if ("add".equals(action)) {
				handleAdd(req, resp);
			} else if ("update".equals(action)) {
				handleUpdate(req, resp);
			} else if ("delete".equals(action)) {
				handleDelete(req, resp);
			} else {
				resp.sendRedirect("/mandoo/Error");
			}
		} catch (Exception e) {
			throw new ServletException(e);
		}
	}

	private void handleAdd(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String errorName = req.getParameter("errorName");
		String errorContents = req.getParameter("errorContents");

		ErrorDTO error = new ErrorDTO();
		error.setErrorName(errorName);
		error.setErrorContents(errorContents);

		errorService.addError(error);
		resp.sendRedirect("/mandoo/Error");
	}

	private void handleUpdate(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String errorId = req.getParameter("errorId");
		String errorName = req.getParameter("errorName");
		String errorContents = req.getParameter("errorContents");

		ErrorDTO error = new ErrorDTO();
		error.setErrorId(errorId);
		error.setErrorName(errorName);
		error.setErrorContents(errorContents);

		errorService.updateError(error);
		resp.sendRedirect("/mandoo/Error");
	}

	private void handleDelete(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String errorId = req.getParameter("errorId");
		errorService.deleteError(errorId);
		resp.sendRedirect("/mandoo/Error");
	}
}
