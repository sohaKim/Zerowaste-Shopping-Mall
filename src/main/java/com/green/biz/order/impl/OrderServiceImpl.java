package com.green.biz.order.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.green.biz.dao.OrderDAO;
import com.green.biz.dto.CartVO;
import com.green.biz.dto.OrderVO;
import com.green.biz.order.CartService;
import com.green.biz.order.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO oDao;
	@Autowired
	private CartService cartService;
	
	// 주문번호(oseq)생성 
	@Override
	public int selectMaxOseq() {
		
		return oDao.selectMaxOseq();
	}

	
	/*
	 * 주문 저장후 주문번호를 받는다.
	 */
	@Override
	public int insertOrder(OrderVO vo) {
		//(1)주문번호를 할당 받는다.
		int oseq = selectMaxOseq();
		
		//(2)위의 주문번호를 가지고 주문을 생성
		vo.setOseq(oseq);
		oDao.insertOrder(vo);
		
		//(3)장바구니 목록을 읽어서 주문상세 내역을 저장
		//(3-1)장바구니 목록을 읽어온다.				
		List<CartVO> cartList = cartService.listCart(vo.getId());
				
		
		//(3-2)장바구니 내역을 주문 상세 테이블에 저장
		for (CartVO cartVO: cartList) {
			OrderVO order = new OrderVO();
			order.setOseq(oseq);
			order.setPseq(cartVO.getPseq());	    
			order.setQuantity(cartVO.getQuantity());
			order.setPseq(cartVO.getPseq());order.setPname(cartVO.getPname());
			

			order.setPrice2(cartVO.getPrice2());
 
			order.setEmail(vo.getEmail());
			order.setMname(vo.getMname());
			order.setRoadaddr(vo.getRoadaddr());
			order.setDetailaddr(vo.getDetailaddr());
			order.setZonecode(vo.getZonecode());
			order.setPhone(vo.getPhone());
			order.setShiprequest(vo.getShiprequest());						
					
			
			insertOrderDetail(order);
			
			//장바구니 테이블 업데이트(처리결과를 '처리완료'로)
			cartService.updateCart(cartVO.getCseq());
		}
		
		return oseq;
	}	

	
	//  장바구니에서 결제하기 버튼 클릭시,  주문진행 페이지(checkout.jsp)에서  oseq외  회원, 상품정보 삽입하기
	@Override
	public void insertOrderDetail(OrderVO vo) {
		
		oDao.insertOrderDetail(vo);		
	}

	// ▶ 주문진행 페이지(checkout.jsp)에 oseq외 상품,결제,배송정보 가져오기
	// ▶  김소연 신규추가 03.07 
	@Override
	public List<OrderVO> orderProcess(String id) {
		
		return oDao.orderProcess(id);
	}	

	// ▶ 주문테이블에 삽입 완료 후 인보이스 호출 / 상품정보 --by oseq주문번호
	// ▶  김소연 신규추가 03.08
	@Override
	public List<OrderVO> orderDetailInvoice(OrderVO vo) {
		
		return oDao.orderDetailInvoice(vo);
	}

	// ▶ 주문테이블에 삽입 완료 후 인보이스 호출 / 인적정보 --by oseq주문번호
	// ▶  김소연 신규추가 03.10
	public List<OrderVO> deliverInfo(OrderVO vo) {
		return oDao.deliverInfo(vo);
	}


	@Override
	public List<OrderVO> listOrderById(OrderVO vo) {
		
		return oDao.listOrderById(vo);
	}

	@Override
	public List<Integer> selectSeqOrdering(OrderVO vo) {

		return oDao.selectSeqOrdering(vo);
	}

	//  ▶Admin 관리자 페이지 작성시 추가 부분	
	@Override
	public List<OrderVO> listOrder(String key) {
		
		return oDao.listOrder(key);
	}

	//  ▶Admin 관리자 페이지 작성시 추가 부분	
	@Override
	public void updateOrderResult(int odseq) {
		
		oDao.updateOrderResult(odseq);
	}
	
	//  ▶Admin 관리자 페이지 작성시 추가 부분	
	@Override
	public List<OrderVO> selectOrderByResult(OrderVO vo) {
		
		return oDao.selectOrderByResult(vo);
	}


}


