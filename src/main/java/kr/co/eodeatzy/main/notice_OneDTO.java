package kr.co.eodeatzy.main;

import lombok.Data;

@Data
public class notice_OneDTO {

	// 공지사항 하나 보기 tb_board
	private int b_id;
	private String b_writer;
	private String b_type;
	private String b_title;
	private String b_content;
	private String b_img_upload; 
	private int b_state;
	private String b_datetime;
	
}
