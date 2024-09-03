package mandoo.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.ProductionPlanDTO;
import mandoo.service.ProductionPlanService;

@WebServlet("/ProductPlan")
public class ProductPlanController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProductionPlanService planService = new ProductionPlanService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");  // 요청 데이터 인코딩 설정
        resp.setContentType("text/html; charset=UTF-8");  // 응답 데이터 인코딩 설정

        String pageParam = req.getParameter("page");
        int page = pageParam != null ? Integer.parseInt(pageParam) : 1;
        int pageSize = 4;

        try {
            List<ProductionPlanDTO> plans = planService.getPlans(page, pageSize);
            int totalPlans = planService.getTotalPlans();
            int totalPages = (int) Math.ceil((double) totalPlans / pageSize);

            req.setAttribute("plan", plans);
            req.setAttribute("currentPage", page);
            req.setAttribute("totalPages", totalPages);

            req.getRequestDispatcher("/WEB-INF/생산계획.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");  // 요청 데이터 인코딩 설정
        resp.setContentType("text/html; charset=UTF-8");  // 응답 데이터 인코딩 설정

        String action = req.getParameter("action");

        if ("add".equals(action)) {
            handleAdd(req, resp);
        } else if ("delete".equals(action)) {
            handleDelete(req, resp);
        } else {
            resp.sendRedirect("/mandoo/ProductPlan");
        }
    }

    private void handleAdd(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 폼 데이터 가져오기
        String planId = req.getParameter("plan-number");
        String planContents = req.getParameter("item-name");
        String planDateStr = req.getParameter("plan-date");
        String planEndDateStr = req.getParameter("plan-end-date");
        String planCountStr = req.getParameter("production-quantity");
        String planName = req.getParameter("status");

        // 데이터 유효성 검사 (간단히)
        if (planId == null || planId.isEmpty() ||
            planContents == null || planContents.isEmpty() ||
            planDateStr == null || planDateStr.isEmpty() ||
            planEndDateStr == null || planEndDateStr.isEmpty() ||
            planCountStr == null || planCountStr.isEmpty() ||
            planName == null || planName.isEmpty()) {
            resp.sendRedirect("/mandoo/ProductPlan?error=Missing+Fields");
            return;
        }

        try {
            java.sql.Date planDate = java.sql.Date.valueOf(planDateStr);
            java.sql.Date planEndDate = java.sql.Date.valueOf(planEndDateStr);
            int planCount = Integer.parseInt(planCountStr);

            ProductionPlanDTO plan = new ProductionPlanDTO();
            plan.setPlanId(planId);
            plan.setPlanContents(planContents);
            plan.setPlanDate(planDate);
            plan.setPlanEndDate(planEndDate);
            plan.setPlanCount(planCount);
            plan.setPlanName(planName);

            planService.addPlan(plan);

            resp.sendRedirect("/mandoo/ProductPlan?success=Plan+Added");
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    private void handleDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] selectedPlanIds = req.getParameterValues("selectedPlans");

        if (selectedPlanIds != null && selectedPlanIds.length > 0) {
            List<String> planIds = new ArrayList<>();
            for (String id : selectedPlanIds) {
                planIds.add(id);
            }

            try {
                planService.deletePlans(planIds);
                resp.sendRedirect("/mandoo/ProductPlan?success=Plans+Deleted");
            } catch (Exception e) {
                throw new ServletException(e);
            }
        } else {
            resp.sendRedirect("/mandoo/ProductPlan?error=No+Plans+Selected");
        }
    }
}
