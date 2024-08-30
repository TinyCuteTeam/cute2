package mandoo.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.ClientDTO;
import mandoo.service.ClientService;

@WebServlet("/client")
public class ClientController extends HttpServlet {

    private ClientService clientService = new ClientService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 한글 깨짐 방지
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        int page = 1;
        int recordsPerPage = 6;

        if (request.getParameter("page") != null) {
            page = Integer.parseInt(request.getParameter("page"));
        }

        try {
            List<ClientDTO> clients = clientService.getClientsByPage(page, recordsPerPage);
            int totalRecords = clientService.getTotalRecords();
            int totalPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

            request.setAttribute("clients", clients);
            request.setAttribute("totalPages", totalPages);
            request.setAttribute("currentPage", page);

            request.getRequestDispatcher("/HTML/거래처관리.jsp").forward(request, response);
        } catch (Exception e) {
            throw new ServletException(e);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 한글 깨짐 방지
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");

        String action = request.getParameter("action");

        if ("add".equals(action)) {
            ClientDTO client = new ClientDTO();
            client.setClientName(request.getParameter("clientName"));
            client.setClientBoss(request.getParameter("clientBoss"));
            client.setClientTel(request.getParameter("clientTel"));
            client.setClientAddress(request.getParameter("clientAddress"));
            client.setClientEmail(request.getParameter("clientEmail"));
            client.setClientNumber(request.getParameter("clientNumber"));

            try {
                clientService.addClient(client);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if ("delete".equals(action)) {
            String[] clientIds = request.getParameterValues("clientId");
            try {
                if (clientIds != null) {
                    for (String clientId : clientIds) {
                        clientService.deleteClient(clientId);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        response.sendRedirect(request.getContextPath() + "/client");
    }
}
