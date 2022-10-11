package kr.co.eodeatzy.business;

import lombok.Data;

@Data
public class AttachImageVO {
	
	// 이미지 경로
	private String uploadPath;
	
	// uuid 
	private String uuid;
	
	// 파일 이름
	private String fileName;
	
	// 상품 id
	private int bookId;
	

}
