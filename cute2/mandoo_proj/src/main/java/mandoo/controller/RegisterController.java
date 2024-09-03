package mandoo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mandoo.DTO.AccountDTO;
import mandoo.service.AccountService;

@WebServlet("/register")
public class RegisterController extends HttpServlet {

    private AccountService accountService = new AccountService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
        request.setCharacterEncoding("UTF-8");  // 요청 인코딩 설정
        response.setContentType("text/html; charset=UTF-8");  // 응답 인코딩 설정
        
        String accountId = request.getParameter("user_id");
        String accountPw = request.getParameter("user_pw");
        String accountPwCheck = request.getParameter("user_pw_check");
        String accountName = request.getParameter("user_name");
        String accountEmail = request.getParameter("user_email");

        response.setContentType("text/html; charset=UTF-8");

        boolean isRegistered = false; // 변수를 초기화

        if (accountPw.equals(accountPwCheck)) {
            AccountDTO account = new AccountDTO();
            account.setAccountId(accountId);
            account.setAccountPw(accountPw);
            account.setAccountName(accountName);
            account.setAccountEmail(accountEmail);

            try {
                isRegistered = accountService.registerAccount(account);
            } catch (Exception e) {
                e.printStackTrace();
                // 예외 발생 시 실패 처리
                isRegistered = false;
            }

            response.getWriter().println("<html><head>");
            response.getWriter().println("<meta charset='UTF-8'>");
            response.getWriter().println("<style>");
            response.getWriter().println(".modal { display: block; position: fixed; z-index: 1; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: rgba(0, 0, 0, 0.4);}");
            response.getWriter().println(".modal-content { background-color: #fff; margin: 15% auto; padding: 20px; border: 1px solid #888; width: 80%; max-width: 300px; text-align: center; border-radius: 8px;}");
            response.getWriter().println("</style>");
            response.getWriter().println("</head><body>");

            if (isRegistered) {
                response.getWriter().println("<div id='successModal' class='modal'>");
                response.getWriter().println("<div class='modal-content'>");
                response.getWriter().println("<h2>회원가입이 성공적으로 완료되었습니다!</h2>");
                response.getWriter().println("<p>3초 후에 로그인 페이지로 이동합니다...</p>");
                response.getWriter().println("</div></div>");
                response.getWriter().println("<script>");
                response.getWriter().println("setTimeout(function(){ window.location.href = 'mandoo/login'; }, 3000);");
                response.getWriter().println("</script>");
            } else {
                response.getWriter().println("<div id='failModal' class='modal'>");
                response.getWriter().println("<div class='modal-content'>");
                response.getWriter().println("<h2>회원가입에 실패했습니다.</h2>");
                response.getWriter().println("<p>이미 존재하는 아이디이거나 시스템 오류가 발생했습니다. 3초 후에 다시 시도할 수 있습니다.</p>");
                response.getWriter().println("</div></div>");
                response.getWriter().println("<script>");
                response.getWriter().println("setTimeout(function(){ window.location.href = 'mandoo/login'; }, 3000);");
                response.getWriter().println("</script>");
            }

            response.getWriter().println("</body></html>");
        } else {
            response.getWriter().println("<html><head>");
            response.getWriter().println("<meta charset='UTF-8'>");
            response.getWriter().println("<style>");
            response.getWriter().println(".modal { display: block; position: fixed; z-index: 1; left: 0; top: 0; width: 100%; height: 100%; overflow: auto; background-color: rgba(0, 0, 0, 0.4);}");
            response.getWriter().println(".modal-content { background-color: #fff; margin: 15% auto; padding: 20px; border: 1px solid #888; width: 80%; max-width: 300px; text-align: center; border-radius: 8px;}");
            response.getWriter().println("</style>");
            response.getWriter().println("</head><body>");

            response.getWriter().println("<div id='failModal' class='modal'>");
            response.getWriter().println("<div class='modal-content'>");
            response.getWriter().println("<h2>회원가입에 실패했습니다.</h2>");
            response.getWriter().println("<p>비밀번호가 일치하지 않습니다. 3초 후에 다시 시도할 수 있습니다.</p>");
            response.getWriter().println("</div></div>");
            response.getWriter().println("<script>");
            response.getWriter().println("setTimeout(function(){ window.location.href = 'mandoo/login'; }, 3000);");
            response.getWriter().println("</script>");
            response.getWriter().println("</body></html>");
        }
    }
}
