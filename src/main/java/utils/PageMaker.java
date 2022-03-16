package utils;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

// 화면에 표시할 페이지 버튼 정보 저장 클래스.
public class PageMaker {
	private Criteria criteria;				// 현재 페이지번호, 페이지당 항목 수 저장되어 있음. 
	private int totalCount;				// 전체 게시글의 수
	private int startPage;					// 시작 페이지 번호
	private int endPage;					// 끝 페이지 번호..
	private boolean prev;					// 이전 페이지 버튼 유무
	private boolean next;					// 다음 페이지 버튼 유무
	private int cntPageNum = 10;	// 한 페이지에 보이는 페이지 버튼의 수
	private int realEndPage;				// 전체 항목수에 따른 실제 끝페이지의 번호 
	
	
	// 전체 게시글 수 저장 및 멤버 변수 초기화 수행 
	public void setTotalCount(int totalCount) { //TODO: 이거 public 인지 확인 
		this.totalCount = totalCount;
		
		// 각 멤버 변수 초기화 호출 
		fieldInit();
	}
	
	// 멤버 변수 초기화
	public void fieldInit() {
		// 1) 표시할 끝페이지번호 계산
		endPage = (int)(Math.ceil(criteria.getPageNum() / (double)cntPageNum) * cntPageNum);			// double로 만들어 소수점 표시 -> ceil 로 올림 -> 다시 int로 변환 -_- 
		
		// 2) 시작 페이지번호 계산
		startPage = endPage - cntPageNum +1;
		
		
		// 3) 실제 끝 페이지번호 계산
		// 실제 끝페이지 번호 = Math.ceil(게시글의 총 항목수 / 페이지당 항목 수)
		realEndPage = (int)(Math.ceil(totalCount / (double)criteria.getRowsPerPage()));
		
		
		// 실제 끝페이지의 번호로 endPage 를 수정..
		if (endPage > realEndPage)
			endPage = realEndPage;
	
		// 이전버튼, 다음버튼 표시 여부 결정.
		prev = startPage ==1 ? false : true;					// 시작페이지가 1일 때 이전페이지 필요 x
		next = endPage * criteria.getRowsPerPage() < totalCount ? true : false;
	}
	
	
	
	// 화면에서 페이지 번호를 클릭하면 페이지 번호와 페이지당 항목 수를 이용하여 url의 QueryString 을 만들어주는 메소드..
	// 출력예: ~~~?pageNum=3&rowsPerPage=10 
	public String makeQuery(int page) {
		// 얘는 일케 쓰면 걍 자동으로 만들어주는듯 
		UriComponents uriComp = UriComponentsBuilder.newInstance().queryParam("pageNum", page).queryParam("rowsPerPage", criteria.getRowsPerPage()).build();
		
		return uriComp.toString();
	}
	
	 //카테고리 페이징....... 일단 보류 (3/4 수련)
	 // 카테고리의 kind 값을 가져와서 저장해주면 될거같은데 그걸 어떻게 하는지 모르겠다 
	public String makeKindQuery(int page, String kind) {
		System.out.printf("kind=%s, pageNum=%d, rowsPerPage=%d", kind, page, criteria.getRowsPerPage());
		UriComponents uriComp = UriComponentsBuilder.newInstance().
				queryParam("kind", kind).queryParam("pageNum", page).queryParam("rowsPerPage", criteria.getRowsPerPage()).build();
		
		return uriComp.toString();
	}
	
	// 멤버변수, Getters, Setters 생성
	public Criteria getCriteria() {
		return criteria;
	}

	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getCntPageNum() {
		return cntPageNum;
	}

	public void setCntPageNum(int cntPageNum) {
		this.cntPageNum = cntPageNum;
	}

	public int getRealEndPage() {
		return realEndPage;
	}

	public void setRealEndPage(int realEndPage) {
		this.realEndPage = realEndPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	@Override
	public String toString() {
		return "PageMaker [criteria=" + criteria + ", totalCount=" + totalCount + ", startPage=" + startPage
				+ ", endPage=" + endPage + ", prev=" + prev + ", next=" + next + ", cntPageNum=" + cntPageNum
				+ ", realEndPage=" + realEndPage + "]";
	}
	
	
	
}
