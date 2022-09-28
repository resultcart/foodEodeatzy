package kr.co.eodeatzy.manage;

public class menuDTO{

	private String u_s_id;
	private int m_id;
	private String m_name;
	private double m_price;
	private int m_stock;
	private int m_ltime;
	private int m_state;
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
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public double getM_price() {
		return m_price;
	}
	public void setM_price(double m_price) {
		this.m_price = m_price;
	}
	public int getM_stock() {
		return m_stock;
	}
	public void setM_stock(int m_stock) {
		this.m_stock = m_stock;
	}
	public int getM_ltime() {
		return m_ltime;
	}
	public void setM_ltime(int m_ltime) {
		this.m_ltime = m_ltime;
	}
	public int getM_state() {
		return m_state;
	}
	public void setM_state(int m_state) {
		this.m_state = m_state;
	}
	@Override
	public String toString() {
		return "menuDTO [u_s_id=" + u_s_id + ", m_id=" + m_id + ", m_name=" + m_name + ", m_price=" + m_price
				+ ", m_stock=" + m_stock + ", m_ltime=" + m_ltime + ", m_state=" + m_state + "]";
	}
	
	
}


