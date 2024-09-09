package mandoo.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.AccountDTO;
import mandoo.service.AccountService;

@WebServlet("/account")
public class AccountController extends HttpServlet {

   private AccountService accountService = new AccountService();

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      
      response.setContentType("text/html; charset=UTF-8");
      response.setCharacterEncoding("UTF-8");
      
      String action = request.getParameter("action");
      String[] selectedAccounts = request.getParameterValues("selectedAccounts");

      if (selectedAccounts != null && selectedAccounts.length > 0) {
         try {
            for (String accountId : selectedAccounts) {
               if ("approve".equals(action)) {
                  try {
                     accountService.approveAccount(accountId);
                  } catch (Exception e) {
                     e.printStackTrace();
                  }
               } else if ("reject".equals(action)) {
                  try {
                     accountService.rejectAccount(accountId);
                  } catch (Exception e) {
                     e.printStackTrace();
                  }
               }
            }
            
            response.sendRedirect(request.getContextPath() + "/account"); 
         } catch (Exception e) {
            throw new ServletException(e);
         }
      } else {
         response.getWriter().println("<script>alert('계정을 선택하세요'); window.location.href='" + request.getContextPath() + "/account';</script>");
      }
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
           throws ServletException, IOException {
       
       response.setContentType("text/html; charset=UTF-8");
       response.setCharacterEncoding("UTF-8");
       
       try {
           int page = 1; // 기본 페이지 번호
           int recordsPerPage = 4; // 한 페이지에 표시할 레코드 수

           if (request.getParameter("page") != null) {
               page = Integer.parseInt(request.getParameter("page"));
           }

           List<AccountDTO> accounts = accountService.getAccountsByPage(page, recordsPerPage);
           int totalRecords = accountService.getTotalRecords();
           int totalPages = (int) Math.ceil(totalRecords * 1.0 / recordsPerPage);

           request.setAttribute("accounts", accounts);
           request.setAttribute("totalPages", totalPages);
           request.setAttribute("currentPage", page);
           request.getRequestDispatcher("/WEB-INF/계정관리.jsp").forward(request, response);
       } catch (Exception e) {
           throw new ServletException(e);
       }
   }
}
