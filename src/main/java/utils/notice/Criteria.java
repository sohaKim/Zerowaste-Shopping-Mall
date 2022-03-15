package utils.notice;

 /* 페이징 기능
 현재 페이지와 관련한 정보를 저장하는 클래스
 - 현재 페이지 번호
 - 페이지당 출력 항목 수
 - 각 페이지의 시작 게시글 번호
 */
public class Criteria {
	private int pageNum;				// 현재 페이지번호
	private int rowsPerPage;		// 페이지당 출력 행의 개수
	
	
	// 생성자
	public Criteria() { 
		// 기본값: 페이지번호 1, 페이지당 항목수 6
		this(1, 6);
	}
	
	public Criteria(int pageNum, int rowsPerPage) {
		this.pageNum = pageNum;
		this.rowsPerPage = rowsPerPage;
	}

	
	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {		// 음수 나오면 안돼서 처리
		if (pageNum <= 0) {
			this.pageNum = 1;
		} else {
			this.pageNum = pageNum;			
		}
	}

	public int getRowsPerPage() {
		return rowsPerPage;
	}

	// 페이지당 항목의 수를 개로 제한.. 
	public void setRowsPerPage(int rowsPerPage) {
		if (rowsPerPage < 0 || rowsPerPage > 20) 
			this.rowsPerPage = 20;
		else 
			this.rowsPerPage = rowsPerPage;
	}

	// 각 페이지에서 시작하는 항목 번호를 반환
	// ex. 예: 1페이지는 1, 2페이지는 11, ....  (각 페이지가 10개일 때)
	public int getPageStart() {
		return (pageNum -1) * rowsPerPage +1;
	}

	@Override
	public String toString() {
		return "Criteria [pageNum=" + pageNum + ", rowsPerPage=" + rowsPerPage + "]";
	}
	
}
