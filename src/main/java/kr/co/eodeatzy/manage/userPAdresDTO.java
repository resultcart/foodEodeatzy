package kr.co.eodeatzy.manage;

public class userPAdresDTO{

	private String u_p_id;
	private String u_p_add_id;
	private String u_p_address;
	private int u_p_flag;
	public String getU_p_id() {
		return u_p_id;
	}
	public void setU_p_id(String u_p_id) {
		this.u_p_id = u_p_id;
	}
	public String getU_p_add_id() {
		return u_p_add_id;
	}
	public void setU_p_add_id(String u_p_add_id) {
		this.u_p_add_id = u_p_add_id;
	}
	public String getU_p_address() {
		return u_p_address;
	}
	public void setU_p_address(String u_p_address) {
		this.u_p_address = u_p_address;
	}
	public int getU_p_flag() {
		return u_p_flag;
	}
	public void setU_p_flag(int u_p_flag) {
		this.u_p_flag = u_p_flag;
	}
	@Override
	public String toString() {
		return "userPAdresDTO [u_p_id=" + u_p_id + ", u_p_add_id=" + u_p_add_id + ", u_p_address=" + u_p_address
				+ ", u_p_flag=" + u_p_flag + "]";
	}
	
	
}


