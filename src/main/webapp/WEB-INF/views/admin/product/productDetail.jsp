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
			<h3>상품 상세 보기</h3>
			<div class="border border-2" style="padding: 10px;">
				<form class="form-floating" name="frm" id="detail_form" method="post" enctype="multipart/form-data">

					<div class="input-group d-flex justify-content-between">
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">상품명</span>
							<input type="text" class="input-sm" size="25" placeholder="상품명" id="name" name="name" value="${productVO.name}"  disabled>
						</div>
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">카테고리</span> 
							<input type="text" class="input-sm" id="kind" name="kind" value="${kind }" disabled>
						</div>
					</div>

					<div class="input-group d-flex justify-content-between">
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">원가[A]</span> 
							<input type="text" class="input-sm" placeholder="원가" id="price1" name="price1" size="10" value="${productVO.price1 }" disabled>
						</div>

						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">판매가[B]</span> 
							<input type="text" class="input-sm" placeholder="판매가" id="price2" name="price2" size="10" value="${productVO.price2 }" disabled>
						</div>
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px; width: 90px; padding-left: 30px;">B-A</span>
							<input type="text" class="input-sm" placeholder="B-A" id="price3" name="price3" size="10" value="${productVO.price3 }" disabled>
						</div>
					</div>
					
					<div class="input-group">
						<div class="d-inline-flex">
							<span class="input-group-text" style="width: 75px; margin-right: 25px; padding-left: 20px;"> 사용 </span>
							</div><br>
							<div>
							<c:choose>
        						<c:when test='${productVO.useyn=="y"}'>
          							<input type="checkbox" class="form-check-input" name="useyn" id="useyn" value="y" checked="checked" style="vertical-align: middle;" disabled>
        						</c:when>
      							<c:otherwise>
	      							<input type="checkbox" class="form-check-input" name="useyn" id="useyn" value="n" disabled>
		        				</c:otherwise>
    						</c:choose>
    						</div>
    						
    						<div class="d-inline-flex" style="margin-left: 143px;">
							<span class="input-group-text" style="width: 75px; margin-right: 25px; padding-left: 20px;">BEST </span>
							</div><br>
							<div>
							<c:choose>
        						<c:when test='${productVO.bestyn=="y"}'>
          							<input type="checkbox" class="form-check-input" name="bestyn" id="bestyn" value="y" checked="checked" style="vertical-align: middle;" disabled>
        						</c:when>
      							<c:otherwise>
	      							<input type="checkbox" class="form-check-input" name="bestyn" id="bestyn" value="n" disabled>
		        				</c:otherwise>
    						</c:choose>
    						</div>
						</div>

					<div class="input-group mb-3">
						<label class="input-group-text" for="product_image" style="margin-right: 2px;">이미지</label>
						<img src="product_images/${productVO.image }" width="200pt">
						<!-- <input type="file" class="form-control" name="product_image" id="product_image" readonly> -->
					</div>

					<div class="input-group">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">상세<br>정보</span>
						<textarea class="form-control" name="content" id="content" aria-label="상세 정보"  style="height: 400px;" >
<c:out value="${productVO.content }" /></textarea>
					</div>

					<div class="d-flex justify-content-center" style="margin-bottom: 0;">
						<input class="btn btn-primary" type="button" value="수정" style="margin-right: 15px;" onClick="go_mod('${productVO.pseq}')">
						<button type="button" name="delete" class="btn btn-danger" style="margin-right: 15px;">상품 삭제</button>
						<a href="admin_product_list"><button type="button" class="btn btn-outline-secondary">목록</button></a>		
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>