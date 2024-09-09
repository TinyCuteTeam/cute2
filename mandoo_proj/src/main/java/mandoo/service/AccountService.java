package mandoo.service;

import java.sql.SQLException;
import java.util.List;

import mandoo.DAO.AccountDAO;
import mandoo.DAO.UserDAO;
import mandoo.DTO.AccountDTO;
import mandoo.DTO.UserDTO;

public class AccountService {
   private AccountDAO accountDAO = new AccountDAO();
   private UserDAO userDAO = new UserDAO();

   public boolean registerAccount(AccountDTO account) throws Exception {
      try {
         if (accountDAO.getAccountById(account.getAccountId()) != null) {
            return false; 
         }
         accountDAO.createAccount(account);
         return true;
      } catch (SQLException e) {
         e.printStackTrace();
         return false;
      }
   }

   public List<AccountDTO> getAllAccounts() throws Exception {
      return accountDAO.getAllAccounts();
   }

   public void approveAccount(String accountId) throws Exception {
      AccountDTO account = accountDAO.getAccountById(accountId);
      if (account != null) {
         UserDTO user = new UserDTO();
         user.setUserId(account.getAccountId());
         user.setUserPw(account.getAccountPw());
         user.setUserAccess(1);
         user.setUserName(account.getAccountName());
         user.setUserEmail(account.getAccountEmail());
         userDAO.insertUser(user);
         accountDAO.deleteAccount(accountId);
      }
   }

   public void rejectAccount(String accountId) throws Exception {
      accountDAO.deleteAccount(accountId);
   }

   public List<AccountDTO> getAccountsByPage(int page, int recordsPerPage) throws Exception {
      int start = (page - 1) * recordsPerPage;
      return accountDAO.getAccountsByPage(start, recordsPerPage);
   }

   public int getTotalRecords() throws Exception {
      return accountDAO.getTotalRecords();
   }

}
