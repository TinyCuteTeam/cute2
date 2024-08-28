package mandoo.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import mandoo.DTO.ClientDTO;
import mandoo.db.Database;
// Database Access Object
// DB에 접근하기 위해서
public class ClientDAO { // select

	public List<ClientDTO> getAllClients(){
		List<ClientDTO> clients = new ArrayList<>();
		String query = " SELECT * FROM client";
		//DB조회 
		try(Connection con = Database.getConnection(); //DB 접속
				PreparedStatement ps = con.prepareStatement(query); //SQL준비, prepareStatement:쿼리 준비상태 
				ResultSet rs = ps.executeQuery()) { //SQL 결과 실행 , executeQuery(): 쿼리실행함수 
				
			while(rs.next()) { //다음 내용이 없을 때까지 rs를 DTO에 set하는거 반복
				ClientDTO dto = new ClientDTO();
				//set-변수에 저장
				dto.setClientId(rs.getString("client_id")); //dto에 설정한 변수 ClientId에 저장 
				dto.setClientName(rs.getString("client_name"));
				dto.setClientBoss(rs.getString("client_boss"));
				dto.setClientTel(rs.getString("client_tel"));
				dto.setClientAddress(rs.getString("client_address"));
				dto.setClientEmail(rs.getString("client_email"));
				dto.setClientNumber(rs.getString("client_number"));
				clients.add(dto); // clients에 dto 추가, clients는 list타입의 변수  
				//clients에 우리가 작성하는 query의 겷과값을 저장하고 return해준다
			}
		} catch(Exception e) {
			e.printStackTrace(); //에러 발생하면 무슨 에러인지 보여주기 
		}
		
		return clients; //저장한 값을 돌려주기
	}
	
	public void clientInsert(ClientDTO client) {
		String query =" INSERT INTO client values(client_id,client_name,client_boss, client_tel, client_address, client_email, client_number)"; 
			   query+= " VALUES (?,?,?,?,?,?,?)";
			   
			   try(Connection con = Database.getConnection();
					   PreparedStatement ps = con.prepareStatement(query)){
				   
				   ps.setString(1, client.getClientId()); //client는 DTO, 숫자는 첫번째 물음표-client_id
				   ps.setString(2, client.getClientName()); 
				   ps.setString(3, client.getClientBoss());
				   ps.setString(4, client.getClientTel());
				   ps.setString(5, client.getClientAddress());
				   ps.setString(6, client.getClientEmail());
				   ps.setString(7, client.getClientNumber());
				   
				   ps.executeUpdate(); //executeUpdate 실행 
			   }catch(Exception e) {
				   e.printStackTrace();
			   }
	}
	
	public void deleteClient(String clientId) {
		String query = " DELETE FROM client WHERE client_id=?";
		
		try(Connection con = Database.getConnection();
				PreparedStatement ps = con.prepareStatement(query)){
			
			ps.setString(1, clientId);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
