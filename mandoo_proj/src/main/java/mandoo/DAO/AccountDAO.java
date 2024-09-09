package mandoo.DAO;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import mandoo.DTO.AccountDTO;
import mandoo.db.Database;

public class AccountDAO {

   public AccountDTO getAccountById(String accountId) throws Exception {
      AccountDTO account = null;
      try (Connection conn = Database.getConnection()) {
         String sql = "SELECT * FROM account WHERE account_id = ?";
         try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, accountId);
            try (ResultSet rs = pstmt.executeQuery()) {
               if (rs.next()) {
                  account = new AccountDTO();
                  account.setAccountId(rs.getString("account_id"));
                  account.setAccountPw(rs.getString("account_pw"));
                  account.setAccountName(rs.getString("account_name"));
                  account.setAccountEmail(rs.getString("account_email"));
               }
            }
         }
      }
      return account;
   }

   public void createAccount(AccountDTO account) throws Exception {
      try (Connection conn = Database.getConnection()) {
         String sql = "INSERT INTO account (account_id, account_pw, account_name, account_email) VALUES (?, ?, ?, ?)";
         try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, account.getAccountId());
            pstmt.setString(2, account.getAccountPw());
            pstmt.setString(3, account.getAccountName());
            pstmt.setString(4, account.getAccountEmail());
            pstmt.executeUpdate();
         }
      }
   }

   public List<AccountDTO> getAllAccounts() throws Exception {
      List<AccountDTO> accounts = new ArrayList<>();
      try (Connection conn = Database.getConnection()) {
         String sql = "SELECT * FROM account";
         try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
            while (rs.next()) {
               AccountDTO account = new AccountDTO();
               account.setAccountId(rs.getString("account_id"));
               account.setAccountPw(rs.getString("account_pw"));
               account.setAccountName(rs.getString("account_name"));
               account.setAccountEmail(rs.getString("account_email"));
               accounts.add(account);
            }
         }
      }
      return accounts;
   }

   public void deleteAccount(String accountId) throws Exception {
      try (Connection conn = Database.getConnection()) {
         String sql = "DELETE FROM account WHERE account_id = ?";
         try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, accountId);
            pstmt.executeUpdate();
         }
      }
   }

   public List<AccountDTO> getAccountsByPage(int start, int limit) throws Exception {
       List<AccountDTO> accounts = new ArrayList<>();
       try (Connection conn = Database.getConnection()) {
           String sql = "SELECT * FROM (" +
                        "SELECT a.*, ROWNUM rnum FROM (" +
                        "SELECT * FROM account ORDER BY account_id) a " +
                        "WHERE ROWNUM <= ? ) " +
                        "WHERE rnum > ?";
           try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
               pstmt.setInt(1, start + limit);
               pstmt.setInt(2, start);
               try (ResultSet rs = pstmt.executeQuery()) {
                   while (rs.next()) {
                       AccountDTO account = new AccountDTO();
                       account.setAccountId(rs.getString("account_id"));
                       account.setAccountPw(rs.getString("account_pw"));
                       account.setAccountName(rs.getString("account_name"));
                       account.setAccountEmail(rs.getString("account_email"));
                       accounts.add(account);
                   }
               }
           }
       }
       return accounts;
   }

   public int getTotalRecords() throws Exception {
      try (Connection conn = Database.getConnection()) {
         String sql = "SELECT COUNT(*) FROM account";
         try (PreparedStatement pstmt = conn.prepareStatement(sql); ResultSet rs = pstmt.executeQuery()) {
            if (rs.next()) {
               return rs.getInt(1);
            }
         }
      }
      return 0;
   }

   

}
