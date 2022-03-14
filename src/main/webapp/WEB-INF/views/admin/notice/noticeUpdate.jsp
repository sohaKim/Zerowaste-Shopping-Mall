<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
// 공지 수정
function go_mod_save(nseq) {
		 $("#notice_update").attr("encoding", "multipart/form-data");
		 $("#notice_update").attr("action", "admin_notice_update?nseq=" +nseq).submit();
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
			<h3>공지 수정</h3>
			<div class="border border-2" style="padding: 10px;">
				<form class="form-floating" name="notice_update" id="notice_update" method="post" enctype="multipart/form-data">
					<input type="hidden" name="nseq" value="${noticeVO.nseq}">
					<input type="hidden" name="code"> 
					<input type="hidden" name="nonmakeImg" value="${noticeVO.notimg}">
					
					<div class="input-group">
						<span class="input-group-text" style="margin-right: 2px; width:75px; padding-left: 20px;">제목</span>
						<input type="text" class="form-control" placeholder="제목" id="subject" name="subject" value="${noticeVO.subject }" >
					</div>
					
					<div class="input-group mb-3">
						<label class="input-group-text" for="notice_image" style="margin-right: 2px;">이미지</label>
						<div> 
							<img src="notice_images/${noticeVO.notimg }" width="200pt" style="margin-bottom: 10px;">
							<input type="file" class="form-control" name="notice_image" id="notice_image" >
						</div>
					</div>
					
					<div class="input-group">
						<span class="input-group-text" style="width: 75px; margin-right: 2px; padding-left:4px;">카테고리</span> 
						<select name="nkind" id="nkind">
							<ul class="dropdown-menu">
								<c:forEach items="${kindList}" var="nkind" varStatus="status">
									<c:choose>
										<c:when test="${noticeVO.nkind==status.count}">
											<option value="${status.count}" selected="selected">${nkind}</option>
										</c:when>
										<c:otherwise>
											<option value="${status.count}">${nkind}</option>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</ul>
						</select>
					</div>

					<div class="input-group">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">내용</span>
						<textarea class="form-control" name="content" id="content" aria-label="상세 정보" style="height: 400px;">
<c:out value="${noticeVO.content }" /></textarea>
					</div>

					<div class="d-flex justify-content-center" style="margin-bottom: 0;">
						<input class="btn btn-primary" type="button" value="수정" onClick="go_mod_save('${noticeVO.nseq}')" style="margin-right: 15px;">
						<a href="admin_notice_list"><button type="button" class="btn btn-outline-secondary">목록</button></a>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>