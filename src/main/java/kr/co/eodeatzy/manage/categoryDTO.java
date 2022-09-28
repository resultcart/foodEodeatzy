package kr.co.eodeatzy.manage;

public class categoryDTO{

	private int c_id;
	private String c_name;
	private int c_use;
	public int getC_id() {
		return c_id;
	}
	public void setC_id(int c_id) {
		this.c_id = c_id;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public int getC_use() {
		return c_use;
	}
	public void setC_use(int c_use) {
		this.c_use = c_use;
	}
	@Override
	public String toString() {
		return "categoryDTO [c_id=" + c_id + ", c_name=" + c_name + ", c_use=" + c_use + "]";
	}
	
	
}


