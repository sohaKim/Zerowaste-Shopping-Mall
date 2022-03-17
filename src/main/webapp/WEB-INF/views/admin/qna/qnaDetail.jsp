<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
div .input-group {
	margin-bottom: 10px;
}

input[readonly] {
	background-color: #fff;
	/* any other styles */
}
</style>
<script type="text/javascript">
	function go_list() {
		var theForm = document.frm;
		theForm.action = "admin_qna_list";
		theForm.submit();
	}

	function go_rep(qseq) {
		var theForm = document.frm;
		//theForm.qseq.value=qseq;
		theForm.action = "admin_qna_repsave";
		theForm.submit();
	}
</script>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-8">
			<h3>Q&amp;A 상세 보기</h3>
			<div class="border border-2" style="padding: 10px;">
				<form class="form-floating" name="frm" method="post">
					<input type="hidden" name="qseq" value="${qnaVO.qseq }">

					<div class="input-group d-flex justify-content-between">
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">카테고리</span> <input type="text" class="input-sm" id="qkind" name="qkind"
								value="${qkind }" disabled
							>
						</div>
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">등록일</span> <input type="text" class="input-sm" id="indate" name="indate"
								value="${qnaVO.indate}" disabled
							>
						</div>
					</div>


					<div class="input-group">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">제목</span> <input type="text"
							class="form-control" id="name" name="name" value="${qnaVO.subject}" disabled
						>
					</div>

					<div class="input-group">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">문의<br>내용
						</span>
						<textarea class="form-control" name="content" id="content" aria-label="문의 내용" style="height: 200px;" readonly>
<c:out value="${qnaVO.content }" /></textarea>
					</div>

					<div class="input-group mb-3">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 10px;">첨부<br>이미지</span>
						<img src="qna_images/${qnaVO.image}" width="200pt">
					</div>

					<c:choose>
						<c:when test='${qnaVO.rep=="1" }'>
							<div class="input-group">
								<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">답변<br>내용
								</span>
								<textarea class="form-control" name="reply" id="reply" aria-label="답변 내용" style="height: 200px;">
</textarea>
							</div>
						</c:when>
						<c:otherwise>
							<div class="input-group">
								<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">답변<br>내용
								</span>
								<textarea class="form-control" name="reply" id="reply" aria-label="답변 내용" style="height: 200px;" disabled>
<c:out value="${qnaVO.reply }" /></textarea>
							</div>
						</c:otherwise>
					</c:choose>

					<c:choose>
						<c:when test='${qnaVO.rep=="1"}'>
							<div class="d-flex justify-content-center" style="margin-bottom: 0;">
								<input type="button" class="btn btn-primary" value="저장" onClick="go_rep('${qnaVO.qseq}')" style="margin-right: 15px;"> <input
									type="button" class="btn btn-outline-secondary" value="목록" onClick="go_list()"
								>
							</div>
						</c:when>
						<c:otherwise>
							<div class="d-flex justify-content-center" style="margin-bottom: 0;">
								<input type="button" class="btn btn-outline-secondary" value="목록" onClick="go_list()">
							</div>
						</c:otherwise>
					</c:choose>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>