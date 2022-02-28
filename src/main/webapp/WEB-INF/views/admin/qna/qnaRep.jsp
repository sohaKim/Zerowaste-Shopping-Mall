<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
  function go_search(content)
  {
     //document.frm.action="admin_qna_list?key="+content;
     document.frm.action="admin_qna_list";
     document.frm.submit();
  }
  
 function go_view(qseq) {
    var theForm = document.frm;
    theForm.qseq.value = qseq;
    theForm.action = "admin_qna_detail";
    theForm.submit();
}
</script>

	<div class="container">
		<div class="row">
			<div class="col-3" style="margin-top: 54px;">
				<h4 style="margin: 10px 10px 10px 30px;">답변상태</h4>
				<ul class="list-group list-group-flush">
					<li class="list-group-item"><a href="rep?rep=1">미답변</a></li>
					<li class="list-group-item"><a href="rep?rep=2">답변완료</a></li>
				</ul>
			</div>


			<div class="col-9">
				<h3 style="margin: 10px;">Q&amp;A 리스트</h3>
				<form name="frm" id="prod_form" method="post">	
					<div class="input-group" style="margin-bottom: 10px;">
						<input type="text" class="input-lg" placeholder="검색할 내용 입력" id="key" name="key">
						<input class="btn btn-outline-primary btn-sm" type="button" name="btn_search" value="검색" onClick="go_search(this.key)"> 	
					</div>
				<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">답변완료</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
					</tr>
					</thead>
						<c:forEach items="${qnaRepList }" var="qnaVO">
							<tr>
								<td>${qnaVO.qseq}</td>
								<td>
									<c:choose>
										<c:when test='${qnaVO.rep=="1"}'><input class="form-check-input" type="checkbox"> 미답변</c:when>
										<c:otherwise><input class="form-check-input" type="checkbox" checked disabled> 답변완료</c:otherwise>
									</c:choose>
								<td><a href="#" onClick="javascript:go_view(${qnaVO.subject})">${qnaVO.subject }</a></td>
								<td>${qnaVO.id }</td>
								<td><fmt:formatDate value="${qnaVO.indate }" /></td>
							</tr>
						</c:forEach>
				</table>
			</form>
			</div>

		</div>
	</div>


	<%@ include file="../footer.jsp"%>
