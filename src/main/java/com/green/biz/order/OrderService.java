package com.green.biz.order;

import java.util.List;

import com.green.biz.dto.CartVO;
import com.green.biz.dto.OrderVO;

public interface OrderService {

	int selectMaxOseq();

	int insertOrder(OrderVO vo);
	
	// ▶  장바구니에서 결제하기 버튼 클릭시,  주문진행 페이지(checkout.jsp)에서  oseq외  회원, 상품정보 삽입하기
	public void insertOrderDetail(OrderVO vo);
	
	// ▶ 주문진행 페이지(checkout.jsp)에 oseq외 상품,결제,배송정보 가져오기
	// ▶  김소연 신규추가 03.07 
	public List<OrderVO> orderProcess(String id);
	
	// ▶ 주문테이블에 삽입 완료 후 인보이스 호출 --by oseq주문번호
	// ▶  김소연 신규추가 03.08
	public List<OrderVO> orderDetailInvoice(OrderVO vo);
	
	// ▶ 주문테이블에 삽입 완료 후 인보이스 호출 / 인적정보 --by oseq주문번호
	// ▶  김소연 신규추가 03.10
	public List<OrderVO> deliverInfo(OrderVO vo);
		
	public List<OrderVO> listOrderById(OrderVO vo);
	
	public List<Integer> selectSeqOrdering(OrderVO vo);
	
	//  ▶Admin 관리자 페이지 작성시 추가 부분	
	public List<OrderVO> listOrder(String key);

	//  ▶Admin 관리자 페이지 작성시 추가 부분
	public void updateOrderResult(int odseq);
	
	//  ▶Admin 관리자 페이지 작성시 추가 부분
	List<OrderVO> selectOrderByResult(OrderVO vo);

}