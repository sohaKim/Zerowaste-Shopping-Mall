<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
function go_save() {
	if ($("#subject").val =="") {
		alert("제목을 입력하세요.")
		$("#subject").focus();
	} else if ($("#content").val()=="") {
	      alert("공지 내용을 입력하세요.");
	      $("#content").focus();		
	} else {
		$("#notice_write").attr("encoding", "multipart/form-data");
		$("#notice_write").attr("action", "admin_notice_write").submit();
	}
}
// 취소하고 다시 목록으로 돌아가는거 
function go_write_list() {
	$("#notice_write").attr("action", "admin_notice_list").submit();
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
				<form class="form-floating" name="notice_write" id="notice_write" method="post" enctype="multipart/form-data">

					<div class="input-group">
						<span class="input-group-text" style="margin-right: 2px; width:75px; padding-left: 20px;">제목</span>
						<input type="text" class="form-control"  placeholder="제목" id="subject" name="subject">
					</div>

					<div class="input-group mb-3">
						<label class="input-group-text" for="notice_image" style="margin-right: 2px;">이미지</label> 
						<input type="file" class="form-control" name="notice_image" id="notice_image">
					</div>
					
					<div class="input-group">
						<span class="input-group-text" style="width: 75px; margin-right: 2px; padding-left:4px;">카테고리</span> 
						<select name="nkind" id="nkind">
							<ul class="dropdown-menu">
								<c:forEach items="${nkindList}" var="nkind" varStatus="status">
									<option value="${status.count}">${nkind}</option>
								</c:forEach>
							</ul>
						</select>
					</div>

					<div class="input-group">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">내용</span>
						<textarea class="form-control" name="content" id="content" aria-label="상세 정보" style="height: 400px;"></textarea>
					</div>

					<div class="d-flex justify-content-center" style="margin-bottom: 0;">
						<input class="btn btn-primary" type="button" value="등록" onClick="go_save()" style="margin-right: 15px;">
						<input class="btn btn-outline-secondary" type="button" value="취소" onClick="go_write_list()">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>