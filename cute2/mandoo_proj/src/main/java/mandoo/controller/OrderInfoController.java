package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.OrderInfoDTO;
import mandoo.service.OrderInfoService;

@WebServlet("/OrderInfo")
public class OrderInfoController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private OrderInfoService orderInfoService = new OrderInfoService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html; charset=UTF-8");

        String pageParam = req.getParameter("page");
        int page = (pageParam != null) ? Integer.parseInt(pageParam) : 1;
        int pageSize = 5;

        try {
            int totalOrders = orderInfoService.getTotalOrders();
            int totalPages = (int) Math.ceil((double) totalOrders / pageSize);

            List<OrderInfoDTO> orders = orderInfoService.getOrdersByPage(page, pageSize);

            req.setAttribute("orders", orders);
            req.setAttribute("currentPage", page);
            req.setAttribute("totalPages", totalPages);

            req.getRequestDispatcher("/WEB-INF/발주확인.jsp").forward(req, resp);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
