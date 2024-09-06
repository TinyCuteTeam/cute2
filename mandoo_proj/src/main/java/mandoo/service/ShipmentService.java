package mandoo.service;

import mandoo.DAO.ShipmentDAO;
import mandoo.DTO.ShipmentDTO;

import java.util.List;

public class ShipmentService {
	private ShipmentDAO shipmentDAO;

	public ShipmentService(ShipmentDAO shipmentDAO) {
		this.shipmentDAO = shipmentDAO;
	}

	// 페이징된 출하 목록 조회
	public List<ShipmentDTO> getShipmentsByPage(int page, int pageSize) throws Exception {
		return shipmentDAO.getShipments(page, pageSize);
	}

	// 총 출하 수 조회
	public int getTotalShipmentCount() throws Exception {
		return shipmentDAO.getTotalShipmentCount();
	}

	// 하나의 출하 정보 삭제
	public void deleteShipment(String shipmentId) throws Exception {
		shipmentDAO.deleteShipment(shipmentId);
	}

	// 여러 출하 정보 삭제
	public void deleteShipments(String[] shipmentIds) throws Exception {
		shipmentDAO.deleteShipments(shipmentIds);
	}
}
