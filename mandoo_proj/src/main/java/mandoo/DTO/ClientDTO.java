package mandoo.DTO;

public class ClientDTO {
//Database Transfer Object 포장한다고 생각 

	private String clientId;
	private String clientName;
	private String clientBoss;
	private String clientTel;
	private String clientAddress;
	private String clientEmail;
	private String clientNumber;
	//저장하고 불러오기
	
	//private 으로 저장한 변수를 사용하기 위하여 public getter, setter 를 만들었다
	// set이 저장
	// get이 저장한 것을 불러오는 것
	// 보안을 위해 getter, setter를 쓴다
	public String getClientId() {
		return clientId;
	}
	public void setClientId(String clientId) {
		this.clientId = clientId;
	}
	
	public String getClientName() {
		return clientName;
	}
	public void setClientName(String clientName) {
		this.clientName = clientName;
	}
	public String getClientBoss() {
		return clientBoss;
	}
	public void setClientBoss(String clientBoss) {
		this.clientBoss = clientBoss;
	}
	public String getClientTel() {
		return clientTel;
	}
	public void setClientTel(String clientTel) {
		this.clientTel = clientTel;
	}
	public String getClientAddress() {
		return clientAddress;
	}
	public void setClientAddress(String clientAddress) {
		this.clientAddress = clientAddress;
	}
	public String getClientEmail() {
		return clientEmail;
	}
	public void setClientEmail(String clientEmail) {
		this.clientEmail = clientEmail;
	}
	public String getClientNumber() {
		return clientNumber;
	}
	public void setClientNumber(String clientNumber) {
		this.clientNumber = clientNumber;
	}
	
	
}
