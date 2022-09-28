package kr.co.eodeatzy.board;

public class commentBDTO{

	private int bc_id;
	private String bc_writer;
	private int b_id;
	private String bc_content;
	private String bc_datetime;
	private int bc_use;
	public int getBc_id() {
		return bc_id;
	}
	public void setBc_id(int bc_id) {
		this.bc_id = bc_id;
	}
	public String getBc_writer() {
		return bc_writer;
	}
	public void setBc_writer(String bc_writer) {
		this.bc_writer = bc_writer;
	}
	public int getB_id() {
		return b_id;
	}
	public void setB_id(int b_id) {
		this.b_id = b_id;
	}
	public String getBc_content() {
		return bc_content;
	}
	public void setBc_content(String bc_content) {
		this.bc_content = bc_content;
	}
	public String getBc_datetime() {
		return bc_datetime;
	}
	public void setBc_datetime(String bc_datetime) {
		this.bc_datetime = bc_datetime;
	}
	public int getBc_use() {
		return bc_use;
	}
	public void setBc_use(int bc_use) {
		this.bc_use = bc_use;
	}
	@Override
	public String toString() {
		return "commentDTO [bc_id=" + bc_id + ", bc_writer=" + bc_writer + ", b_id=" + b_id + ", bc_content="
				+ bc_content + ", bc_datetime=" + bc_datetime + ", bc_use=" + bc_use + "]";
	}
	
	
}


