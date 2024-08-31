package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ItemDTO;
import mandoo.db.Database;

public class ItemDAO {

    public List<ItemDTO> getAllItems() {
        List<ItemDTO> itemList = new ArrayList<>();
        String query = "SELECT * FROM item";
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                ItemDTO item = new ItemDTO(rs.getString("item_code"), rs.getString("item_name"));
                itemList.add(item);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return itemList;
    }

    public void addItem(ItemDTO item) {
        String query = "INSERT INTO item (item_code, item_name) VALUES (?, ?)";
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, item.getItemCode());
            pstmt.setString(2, item.getItemName());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void updateItem(ItemDTO item) {
        String query = "UPDATE item SET item_name = ? WHERE item_code = ?";
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, item.getItemName());
            pstmt.setString(2, item.getItemCode());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteItem(String itemCode) {
        String query = "DELETE FROM item WHERE item_code = ?";
        try (Connection conn = Database.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(query)) {

            pstmt.setString(1, itemCode);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
