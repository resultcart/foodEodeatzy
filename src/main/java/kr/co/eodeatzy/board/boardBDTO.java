package kr.co.eodeatzy.board;

public class boardBDTO{

	private int b_id;
	private String b_writer;
	private String b_type;
	private String b_title;
	private String b_content;
	private String b_img_upload;
	private int b_state;
	private String b_datetime;
	public int getB_id() {
		return b_id;
	}
	public void setB_id(int b_id) {
		this.b_id = b_id;
	}
	public String getB_writer() {
		return b_writer;
	}
	public void setB_writer(String b_writer) {
		this.b_writer = b_writer;
	}
	public String getB_type() {
		return b_type;
	}
	public void setB_type(String b_type) {
		this.b_type = b_type;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public String getB_img_upload() {
		return b_img_upload;
	}
	public void setB_img_upload(String b_img_upload) {
		this.b_img_upload = b_img_upload;
	}
	public int getB_state() {
		return b_state;
	}
	public void setB_state(int b_state) {
		this.b_state = b_state;
	}
	public String getB_datetime() {
		return b_datetime;
	}
	public void setB_datetime(String b_datetime) {
		this.b_datetime = b_datetime;
	}
	@Override
	public String toString() {
		return "boardDTO [b_id=" + b_id + ", b_writer=" + b_writer + ", b_type=" + b_type + ", b_title=" + b_title
				+ ", b_content=" + b_content + ", b_img_upload=" + b_img_upload + ", b_state=" + b_state
				+ ", b_datetime=" + b_datetime + "]";
	}
	
	
}


