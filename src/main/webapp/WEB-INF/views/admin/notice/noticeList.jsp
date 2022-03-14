<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
function go_search() {
	$("#not_form").attr("action", "admin_notice_list").submit();
}

//공지 등록화면 출력
function go_wrt() {
	$("#not_form").attr("action", "admin_notice_write_form").submit();
}
</script>


<div class="container">
	<div class="row">
		<div class="col-3" style="margin-top: 54px;">
			<h4 style="margin: 10px 10px 10px 30px;">Category</h4>
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><a href="admin_notice_list">ALL</a></li>
				<li class="list-group-item"><a href="admin_notice_category?nkind=1">일반</a></li>
				<li class="list-group-item"><a href="admin_notice_category?nkind=2">배송</a></li>
				<li class="list-group-item"><a href="admin_notice_category?nkind=3">이벤트</a></li>
				<li class="list-group-item"><a href="admin_notice_category?nkind=4">기타</a></li>
			</ul>
		</div>


		<div class="col-9">
			<h3 style="margin: 10px;">공지사항 리스트</h3>
			<form name="frm" id="not_form" method="post">
				<div class="input-group" style="margin-bottom: 10px;">
					<input type="text" class="input-lg" placeholder="제목으로 검색" id="key" name="key"> 
					<input class="btn btn-outline-primary btn-sm" type="button" name="btn_search" value="검색" onClick="go_search()">
					<input class="btn btn-primary" type="button" value="공지 쓰기" name="btn_write" onClick="go_wrt()" style="margin-left: 420px;"> 
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">제목</th>
							<th scope="col">카테고리</th>
							<th scope="col">등록일</th>
						</tr>
					</thead>
					
				<c:choose>
				<c:when test="${noticeListSize<=0}">
					<tr>
						<td width="100%" colspan="7" align="center" height="23">등록된 공지가 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${noticeList }" var="noticeVO">
						<tr>
							<td>${noticeVO.nseq}</td>
							<td><a href="admin_notice_detail${pageMaker.makeQuery(pageMaker.criteria.pageNum)}&nseq=${noticeVO.nseq}">${noticeVO.subject}</a></td>
							<!-- <a href="admin_notice_detail?nseq=${noticeVO.nseq }">${noticeVO.subject }</a></td>  -->
							<td><c:choose>
									<c:when test='${noticeVO.nkind=="1"}'>일반</c:when>
									<c:when test='${noticeVO.nkind=="2" }'>배송</c:when>
									<c:when test='${noticeVO.nkind=="3" }'>이벤트</c:when>
									<c:when test='${noticeVO.nkind=="4" }'>기타</c:when>
								</c:choose></td>
							<td><fmt:formatDate value="${noticeVO.indate }" /></td>
						</tr>
					</c:forEach>
					</c:otherwise>
					</c:choose>

				</table>
			</form>
		</div>
		<!--  페이징 부분 -->

		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center" style="width: 1140px; margin-right: auto; margin-left: auto;">

				<c:if test="${pageMaker.prev}">
					<li class="page-item"><a class="page-link" href="admin_notice_list${pageMaker.makeQuery(pageMaker.startPage-1)}">이전</a></li>
				</c:if>

				<!-- [1][2][3]... 표시 부분 -->

				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
					<li class="page-item"><a class="page-link" href="admin_notice_list${pageMaker.makeQuery(index)}">${index}</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next}">
					<li class="page-item"><a class="page-link" href="admin_notice_list${pageMaker.makeQuery(pageMaker.endPage+1)}">다음</a></li>
				</c:if>
			</ul>
		</nav>

		<!--  페이징 끝 -->

	</div>
</div>

<%@ include file="../footer.jsp"%>
