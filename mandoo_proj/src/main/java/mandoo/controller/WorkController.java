package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.WorkDTO;
import mandoo.service.WorkService;

@WebServlet("/Work")
public class WorkController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private WorkService workService = new WorkService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        String pageParam = req.getParameter("page");
        int page = (pageParam != null) ? Integer.parseInt(pageParam) : 1;
        int pageSize = 4;

        try {
            int totalWorks = workService.getTotalWorks();
            int totalPages = (int) Math.ceil((double) totalWorks / pageSize);

            List<WorkDTO> works = workService.getWorksByPage(page, pageSize);

            req.setAttribute("works", works);
            req.setAttribute("currentPage", page);
            req.setAttribute("totalPages", totalPages);

            req.getRequestDispatcher("/WEB-INF/작업지시서(작업자용).jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        String action = req.getParameter("action");

        if ("add".equals(action)) {
            handleAdd(req, resp);
        } else {
            resp.sendRedirect("/mandoo/Work");
        }
    }

    private void handleAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String workId = req.getParameter("workId");
        String userId = req.getParameter("userId");
        String planId = req.getParameter("planId");
        String itemCode = req.getParameter("itemCode");
        String workWriteStr = req.getParameter("workWrite");
        String workEndateStr = req.getParameter("workEndate");
        String workName = req.getParameter("workName");
        String workDo = req.getParameter("workDo");

        if (workId == null || workId.isEmpty() ||
            userId == null || userId.isEmpty() ||
            planId == null || planId.isEmpty() ||
            itemCode == null || itemCode.isEmpty() ||
            workWriteStr == null || workWriteStr.isEmpty() ||
            workEndateStr == null || workEndateStr.isEmpty() ||
            workName == null || workName.isEmpty() ||
            workDo == null || workDo.isEmpty()) {
            resp.sendRedirect("/mandoo/Work?error=Missing+Fields");
            return;
        }

        try {
            java.sql.Date workWrite = java.sql.Date.valueOf(workWriteStr);
            java.sql.Date workEndate = java.sql.Date.valueOf(workEndateStr);

            WorkDTO work = new WorkDTO();
            work.setWorkId(workId);
            work.setUserId(userId);
            work.setPlanId(planId);
            work.setItemCode(itemCode);
            work.setWorkWrite(workWrite);
            work.setWorkEndate(workEndate);
            work.setWorkName(workName);
            work.setWorkDo(workDo);

            workService.addWork(work);

            resp.sendRedirect("/mandoo/Work?success=Work+Added");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
