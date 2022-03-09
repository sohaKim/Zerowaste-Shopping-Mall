package com.green.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.OrderVO;

@Repository
public class OrderDAO {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 주문번호(oseq)생성   (21쇼핑몰 버전 )
	public int selectMaxOseq() {
		return mybatis.selectOne("mappings.order-mapping.selectMaxOseq");
	}
	
	// 새로운 주문 생성 (21쇼핑몰 버전)
	public void insertOrder(OrderVO vo) {
		mybatis.insert("mappings.order-mapping.insertOrder",vo);
	}
	
	//  장바구니에서 결제하기 버튼 클릭시,  주문진행 페이지(checkout.jsp)에서  oseq외  회원, 상품정보 삽입하기
	public void insertOrderDetail(OrderVO vo) {
		mybatis.insert("mappings.order-mapping.insertOrderDetail",vo);
	}
	
	// ▶ 주문진행 페이지(checkout.jsp)에 oseq외 상품,결제,배송정보 가져오기
	// ▶  김소연 신규추가 03.07 
	public List<OrderVO> orderProcess(String id) {
		
		return mybatis.selectList("mappings.order-mapping.OrderProcess", id);
	}

	// ▶ 주문테이블에 삽입 완료 후 인보이스 호출 --by oseq주문번호
	// ▶  김소연 신규추가 03.08
	// selectOne인지 selectList인지 잘 모르겠음...
	public List<OrderVO> orderDetailInvoice(OrderVO vo) {
		
		return mybatis.selectList("mappings.order-mapping.orderDetailInvoice", vo);
				
	}	
	
	// 주문내역 조회 (조건: oseq/id가 같으면서, 주문처리결과가{}이면서, order_view에서 조회)
	public List<OrderVO> listOrderById(OrderVO vo){
		return mybatis.selectList("mappings.order-mapping.listOrderById",vo);
	}
	
	// 사용자별(id별) 주문번호 목록 조회
	public List<Integer> selectSeqOrdering(OrderVO vo){
		return mybatis.selectList("mappings.order-mapping.selectSeqOrdering",vo);
	}
	
	// ▶Admin구현시 필요한 부분
	// 전체 주문내역 조회, 회원명(mname)조건으로 검색
	public List<OrderVO> listOrder(String key){
		
		return mybatis.selectList("mappings.order-mapping.listOrder",key);
	}
	
	// ▶Admin구현시 필요한 부분
	// 주문완료 처리 result 1->2로 변경
	public void updateOrderResult(int odseq) {
		
		mybatis.update("mappings.order-mapping.updateOrderResult",odseq);
	}
	
	// ▶Admin구현시 필요한 부분
	// 주문처리상태별 보기, order_view에서 result확인, odseq순서로
	public List<OrderVO> selectOrderByResult(OrderVO vo) {
		
		return mybatis.selectList("mappings.order-mapping.selectOrderByResult", vo);
	}

}
