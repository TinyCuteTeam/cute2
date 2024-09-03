package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import mandoo.DTO.BomAddDTO;
import mandoo.db.Database;

public class BomAddDAO {

	public void addBom(BomAddDTO bom) throws Exception {
		// Use sequence to generate BOM_ID in Oracle
		String sql = "INSERT INTO BOM (BOM_ID, ITEM_CODE, BOM_COUNT, BOM_UNIT) VALUES (BOM_SEQ.NEXTVAL, ?, ?, ?)";

		try (Connection con = Database.getConnection();
				PreparedStatement ps = con.prepareStatement(sql, new String[] { "BOM_ID" })) {

			ps.setString(1, bom.getItemCode());
			ps.setInt(2, bom.getBomCount());
			ps.setString(3, bom.getBomUnit());

			ps.executeUpdate();

			// Retrieve the generated BOM_ID
			try (ResultSet rs = ps.getGeneratedKeys()) {
				if (rs.next()) {
					String generatedBomId = rs.getString(1);
					bom.setBomId(generatedBomId);
				}
			}
		}
	}
}
