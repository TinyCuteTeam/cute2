package mandoo.service;

import java.util.List;

import mandoo.DAO.OrderInfoDAO;
import mandoo.DTO.OrderInfoDTO;

public class OrderInfoService {
    private OrderInfoDAO orderInfoDAO = new OrderInfoDAO();

    public int getTotalOrders() throws Exception {
        return orderInfoDAO.getTotalOrders();
    }

    public List<OrderInfoDTO> getOrdersByPage(int page, int pageSize) throws Exception {
        return orderInfoDAO.getOrdersByPage(page, pageSize);
    }
}
