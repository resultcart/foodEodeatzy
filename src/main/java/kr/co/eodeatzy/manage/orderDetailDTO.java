package kr.co.eodeatzy.manage;

public class orderDetailDTO{

	private String o_number;
	private int m_id;
	private int o_cnt;
	public String getO_number() {
		return o_number;
	}
	public void setO_number(String o_number) {
		this.o_number = o_number;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public int getO_cnt() {
		return o_cnt;
	}
	public void setO_cnt(int o_cnt) {
		this.o_cnt = o_cnt;
	}
	@Override
	public String toString() {
		return "orderDetailDTO [o_number=" + o_number + ", m_id=" + m_id + ", o_cnt=" + o_cnt + "]";
	}
	
	
}


