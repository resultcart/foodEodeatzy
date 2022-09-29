package kr.co.eodeatzy.business;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class businessDAOImpl implements businessDAO {
	
		@Inject
		private SqlSession sqlSession;
		private static final String namespace = "kr.co.eodeatzy.businessMapper"; // 네임스페이스 경로 확인 필요

		// 1-1) 사업자 정보 조회
		@Override
		public businessUserDTO b_userInfo(String u_b_id) throws Exception {
			return sqlSession.selectOne(namespace + ".b_userInfo", u_b_id);
					
		}
		
		// 1-2) 사업자 정보 수정
		@Override
		public int businessUpdate(Map<String, Object> buupmap) throws Exception {
			return sqlSession.update(namespace + ".businessUpdate", buupmap);
		}
		
		// 1-3) 사업자 탈퇴
		@Override
		public int b_unregister(String u_b_id) throws Exception {
			return sqlSession.update(namespace + ".b_unregister", u_b_id);
		}
		
		
		// 2-1) 메뉴 관리 
		@Override
		public List<businessMenuDTO> selectmenu() throws Exception {
			return sqlSession.selectList(namespace + ".selectMenu");
		}
		
		// 2-2) 메뉴 수정
		@Override
		public int updatemenu(Map<String, Object> upmap) throws Exception {
			return sqlSession.update(namespace + ".updatemenu", upmap);
		}
		
		// 2-3) 메뉴 삭제
		@Override
		public int menudelete(Map<String, Object> deleteMenumap) throws Exception {
			return sqlSession.delete(namespace + ".menudelete", deleteMenumap);
		}
		
		// 2-4) 메뉴 상세 조회
		@Override
		public Map menudetail(Map<String, Object> demap) throws Exception {
			return sqlSession.selectOne(namespace + ".menudetail", demap);
		}

		// 2-5) 메뉴 추가
		@Override
		public int insertmenu(Map<String, Object> inmap) throws Exception {
			return sqlSession.insert(namespace + ".insertmenu", inmap);
		}
		
		// 3-1) 가게 정보 조회
		@Override
		public businessStoreDTO storeList(String u_b_id) throws Exception {
			return sqlSession.selectOne(namespace + ".storeList", u_b_id);
		}
				
		// 3-2) 가게 정보 수정
		@Override
		public int storeNameUpdate(Map<String, Object> stupmap) throws Exception {
			return sqlSession.update(namespace + ".storeNameUpdate", stupmap);
		}

		// 4-1) 주문 확인
		@Override
		public List<businessOrderDTO> orderCheck() throws Exception {
			return sqlSession.selectList(namespace + ".orderCheck");
		}
		
		// 4-2) 주문 상세
		@Override
		public  List<businessOrderDTO> orderdetail(String o_number) throws Exception {
			return sqlSession.selectList(namespace + ".orderdetail", o_number);
		}

		// 4-3) 주문 메모 확인		
		@Override
		public Map orderMemo(Map<String, Object> memap) throws Exception {
			return sqlSession.selectOne(namespace + ".orderMemo", memap);
		}

		// 4-4) 고객 메모 수정 
		@Override
		public int updateMemo(Map<String, Object> upmemap) throws Exception {
			return sqlSession.update(namespace + ".updateMemo", upmemap);
		}

		

		



}
