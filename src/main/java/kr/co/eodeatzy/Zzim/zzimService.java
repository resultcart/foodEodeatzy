package kr.co.eodeatzy.Zzim;

import java.util.List;
import java.util.Map;

public interface zzimService {
	//찜목록 전체 보기
		public List<zzimDTO>ListAll(String u_p_id) throws Exception;
		
		//찜 정보 상세보기
		public zzimDTO detailzzim(zzimDTO zzimdto)throws Exception;
		
		//찜 목록 추가
		public int addZzim(zzimDTO zzimdto)throws Exception;
		
		//찜 목록 수정
		public int updatezdesc(zzimDTO zzimdto)throws Exception;
		
		//찜 목록 삭제
		public int deleteZzim(zzimDTO zzimdto)throws Exception;

		//찜 추가시 중복확인
		public int zzimCheck(zzimDTO zzimdto)throws Exception;

		

		
		
		
}
