package kr.co.eodeatzy.manage;

public class cartDTO{

	private String u_p_id;
	private String u_s_id;
	private int m_id;
	private int ct_count;
	public String getU_p_id() {
		return u_p_id;
	}
	public void setU_p_id(String u_p_id) {
		this.u_p_id = u_p_id;
	}
	public String getU_s_id() {
		return u_s_id;
	}
	public void setU_s_id(String u_s_id) {
		this.u_s_id = u_s_id;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public int getCt_count() {
		return ct_count;
	}
	public void setCt_count(int ct_count) {
		this.ct_count = ct_count;
	}
	@Override
	public String toString() {
		return "cartDTO [u_p_id=" + u_p_id + ", u_s_id=" + u_s_id + ", m_id=" + m_id + ", ct_count=" + ct_count + "]";
	}
	
	
}


