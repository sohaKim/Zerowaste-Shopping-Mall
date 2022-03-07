<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<style>
div .input-group {
	margin-bottom: 10px;
}
</style>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-8">
			<h3>상품 등록</h3>
			<div class="border border-2" style="padding: 10px;">
				<form class="form-floating" name="frm" id="write_form" method="post" enctype="multipart/form-data">

					<div class="input-group d-flex justify-content-between">
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">상품명</span>
							<input type="text" class="input-sm" size="25" placeholder="상품명" id="name" name="name">
						</div>
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">카테고리</span> 
							<select name="kind" id="kind">
								<ul class="dropdown-menu">
									<c:forEach items="${kindList}" var="kind" varStatus="status">
										<option value="${status.count}">${kind}</option>
									</c:forEach>
								</ul>
							</select>
						</div>
					</div>

					<div class="input-group d-flex justify-content-between">
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">원가[A]</span> 
							<input type="text" class="input-sm" placeholder="원가" id="price1" name="price1" size="10" onKeyUp='NumFormat(this)'>
						</div>

						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">판매가[B]</span> 
							<input type="text" class="input-sm" placeholder="판매가" id="price2" name="price2" size="10" onBlur="go_ab()" onKeyUp='NumFormat(this)'
							>
						</div>
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px; width: 90px; padding-left: 30px;">B-A</span>
							<input type="text" class="input-sm" placeholder="B-A" id="price3" name="price3" size="10" readonly onKeyUp='NumFormat(this)'
							>
						</div>
					</div>

					<div class="input-group mb-3">
						<label class="input-group-text" for="product_image" style="margin-right: 2px;">이미지</label> 
						<input type="file" class="form-control" name="product_image" id="product_image">
					</div>

					<div class="input-group">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">상세<br>정보</span>
						<textarea class="form-control" name="content" id="content" aria-label="상세 정보" style="height: 120px;"></textarea>
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