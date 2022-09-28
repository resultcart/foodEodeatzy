package kr.co.eodeatzy.manage;

public class storeAdresDTO{
	
	private String u_s_id;
	private String u_s_add_id;
	private String u_s_address;
	private int u_s_flag;
	public String getU_s_id() {
		return u_s_id;
	}
	public void setU_s_id(String u_s_id) {
		this.u_s_id = u_s_id;
	}
	public String getU_s_add_id() {
		return u_s_add_id;
	}
	public void setU_s_add_id(String u_s_add_id) {
		this.u_s_add_id = u_s_add_id;
	}
	public String getU_s_address() {
		return u_s_address;
	}
	public void setU_s_address(String u_s_address) {
		this.u_s_address = u_s_address;
	}
	public int getU_s_flag() {
		return u_s_flag;
	}
	public void setU_s_flag(int u_s_flag) {
		this.u_s_flag = u_s_flag;
	}
	@Override
	public String toString() {
		return "storeAdresDTO [u_s_id=" + u_s_id + ", u_s_add_id=" + u_s_add_id + ", u_s_address=" + u_s_address
				+ ", u_s_flag=" + u_s_flag + "]";
	}
	
	
}


