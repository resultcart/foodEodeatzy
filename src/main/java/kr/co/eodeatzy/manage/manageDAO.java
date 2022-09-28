package kr.co.eodeatzy.manage;

import java.util.List;


public interface manageDAO {
	//개인사용자정보 테이블_전체조회
	public List<userPDTO> userPList() throws Exception;
	//개인사용자 주소 테이블_전체조회
	public List<userPAdresDTO> tbUserPAdresList() throws Exception;
	//사업자정보 테이블_전체조회
	public List<userBDTO> tbUserbList() throws Exception;
	//사업장정보 테이블_전체조회
	public List<storeDTO> tbStoreList() throws Exception;
	//사업장주소_테이블_전체조회
	public List<storeAdresDTO> tbStoreAdresList() throws Exception;
	//찜목록_테이블_전체조회
	public List<zzimDTO> tbZzimList() throws Exception;
	//주문내역_테이블_전체조회
	public List<orderDTO> tbOrderList() throws Exception;
	//주문상세_테이블_전체조회
	public List<orderDetailDTO> tbOrderDtlList() throws Exception;
	//메뉴_테이블_전체조회
	public List<menuDTO> tbMenuList() throws Exception;
	//카테고리_테이블_전체조회
	public List<categoryDTO> tbCateList() throws Exception;
	//장바구니_테이블_전체조회
	public List<cartDTO> tbCartList() throws Exception;
	//게시판_테이블_전체조회
	public List<boardDTO> tbBoardList() throws Exception;
	//댓글_테이블_전체조회
	public List<commentDTO> tbCmtList() throws Exception;
	//콤보박스 리스트_전체조회
	public List<comboDTO> comboList() throws Exception;
	
	//게시판_테이블_단건조회
	public boardDTO tbBoardListOne(inputDTO inputDTO) throws Exception;
	//개인사용자정보 테이블_단건조회
	public userPDTO userPListOne(String u_p_id) throws Exception;
	
	//게시판테이블_insert
	public int tbBoardInsert(boardDTO boardDTO) throws Exception;
	//콤보테이블_insert
	public int tbComboInsert(comboDTO comboDTO) throws Exception;
}
