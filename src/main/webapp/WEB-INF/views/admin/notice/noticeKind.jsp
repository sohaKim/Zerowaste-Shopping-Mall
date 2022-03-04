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
					
					<c:forEach items="${adminNoticeKindList}" var="noticeVO">
						<tr>
							<td>${noticeVO.nseq}</td>
							<td><a href="admin_notice_detail?nseq=${noticeVO.nseq}">${noticeVO.subject}</a></td> 
							<td><c:choose>
									<c:when test='${noticeVO.nkind=="1"}'>일반</c:when>
									<c:when test='${noticeVO.nkind=="2" }'>배송</c:when>
									<c:when test='${noticeVO.nkind=="3" }'>이벤트</c:when>
									<c:when test='${noticeVO.nkind=="4" }'>기타</c:when>
								</c:choose></td>
							<td><fmt:formatDate value="${noticeVO.indate}" /></td>
						</tr>
					</c:forEach>

				</table>
			</form>
		</div>

	</div>
</div>

<%@ include file="../footer.jsp"%>
