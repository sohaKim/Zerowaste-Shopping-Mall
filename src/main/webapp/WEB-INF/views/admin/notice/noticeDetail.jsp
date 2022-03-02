<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
// 공지 수정 페이지 열기
function go_mod(nseq) {
	$("#notice_detail").attr("action", "admin_notice_update_form?nseq=" + nseq).submit();
}
</script>

<style>
div .input-group {
	margin-bottom: 10px;
}
</style>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-8">
			<h3>공지 등록</h3>
			<div class="border border-2" style="padding: 10px;">
				<form class="form-floating" name="notice_detail" id="notice_detail" method="post" enctype="multipart/form-data">

					<div class="input-group d-flex justify-content-between">
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px; width:75px; padding-left: 20px;">제목</span>
							<input type="text" class="input-sm" size="25" placeholder="제목" id="subject" name="subject" value="${noticeVO.subject }" disabled>
						</div>
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">카테고리</span> 
							<input type="text" class="input-sm" id="kind" name="kind" value="${kind }" disabled>
						</div>
					</div>

					<div class="input-group mb-3">
						<label class="input-group-text" for="notice_image" style="margin-right: 2px;">이미지</label> 
						<img src="notice_images/${noticeVO.notimg }" width="200pt">
						<!-- <input type="file" class="form-control" name="notice_image" id="notice_image"> -->
					</div>

					<div class="input-group">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">내용</span>
						<textarea class="form-control" name="content" id="content" aria-label="상세 정보" style="height: 120px;">
<c:out value="${noticeVO.content }" /></textarea>
					</div>

					<div class="d-flex justify-content-center" style="margin-bottom: 0;">
						<input class="btn btn-primary" type="button" value="수정" onClick="go_mod('${noticeVO.nseq}')" style="margin-right: 15px;">
						<a href="admin_notice_list"><button type="button" class="btn btn-outline-secondary">목록</button></a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>