<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript" src="admin/product/product.js"></script>
<style>
div .input-group {
	margin-bottom: 10px;
}
</style>

<div class="container">
	<div class="row justify-content-md-center">
		<div class="col-8">
			<h3>상품 수정</h3>
			<div class="border border-2" style="padding: 10px;">
				<form class="form-floating" name="frm" id="update_form" method="post" enctype="multipart/form-data">
					<input type="hidden" name="pseq" value="${productVO.pseq}">
					<!--  기존 이미지 저장. 이미지 업데이트 안했을 때 사용  -->
					<input type="hidden" name="nonmakeImg" value="${productVO.image}">
					<input type="hidden" name="nonmakeProdNotice" value="${productVO.prodNotice}">
					<div class="input-group d-flex justify-content-between">
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">상품명</span> 
							<input type="text" class="input-sm" size="25" placeholder="상품명" id="name"
								name="name" value="${productVO.name }"	>
						</div>
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">카테고리</span> 
							<select name="kind" id="kind">
								<ul class="dropdown-menu">
									<c:forEach items="${kindList}" var="kind" varStatus="status">
										<c:choose>
											<c:when test="${productVO.kind==status.count}">
												<option value="${status.count}" selected="selected">${kind}</option>
											</c:when>
											<c:otherwise>
												<option value="${status.count}">${kind}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</ul>
							</select>
						</div>
					</div>

					<div class="input-group d-flex justify-content-between">
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">원가[A]</span> 
							<input type="text" class="input-sm" placeholder="원가" id="price1" name="price1" size="10" value="${productVO.price1}">
						</div>

						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px;">판매가[B]</span> 
							<input type="text" class="input-sm" placeholder="판매가" id="price2" name="price2" size="10" onBlur="go_ab()"  value="${productVO.price2}">
						</div>
						
						<div class="d-inline-flex">
							<span class="input-group-text" style="margin-right: 2px; width: 90px; padding-left: 30px;">B-A</span> 
							<input type="text" class="input-sm" placeholder="B-A" id="price3" name="price3" size="10" readonly>
						</div>
					</div>
					
					<div class="input-group">
						<div class="d-inline-flex">
							<span class="input-group-text" style="width: 75px; margin-right: 25px; padding-left: 20px;"> 사용 </span>
							</div><br>
							<div>
							<c:choose>
        						<c:when test='${productVO.useyn=="y"}'>
          							<input type="checkbox" class="form-check-input" name="useyn" id="useyn" value="y" checked="checked" style="vertical-align: middle;">
        						</c:when>
      							<c:otherwise>
	      							<input type="checkbox" class="form-check-input" name="useyn" id="useyn" value="n">
		        				</c:otherwise>
    						</c:choose>
    						</div>
    						
    						<div class="d-inline-flex" style="margin-left: 143px;">
							<span class="input-group-text" style="width: 75px; margin-right: 25px; padding-left: 20px;">BEST </span>
							</div><br>
							<div>
							<c:choose>
        						<c:when test='${productVO.bestyn=="y"}'>
          							<input type="checkbox" class="form-check-input" name="bestyn" id="bestyn" value="y" checked="checked" style="vertical-align: middle;">
        						</c:when>
      							<c:otherwise>
	      							<input type="checkbox" class="form-check-input" name="bestyn" id="bestyn" value="n">
		        				</c:otherwise>
    						</c:choose>
    						</div>
						</div>

					<div class="input-group">
						<label class="input-group-text" for="product_image" style="margin-right: 2px;">이미지</label>
						<div>
							<img src="product_images/${productVO.image}" width="200pt"><br>
							<input type="file" class="form-control" name="product_image" id="product_image">
						</div>
					</div>
					
					<div class="input-group">
						<label class="input-group-text" for="prodNotice" style="width: 75px; margin-right: 2px; padding-left: 20px;">배송<br>안내</label>
						<div> 
							<span>등록된 파일: ${productVO.prodNotice }</span>
							<input multiple ="multiple" type="file" class="form-control" name="prod_Notice" id="prod_Notice">
						</div>
					</div>

					<div class="input-group">
						<span class="input-group-text text-wrap" style="width: 75px; margin-right: 2px; padding-left: 20px;">상세<br>정보</span>
						<textarea class="form-control" name="content" id="content" aria-label="상세 정보"  style="height: 400px;">
<c:out value="${productVO.content }" /></textarea>
					</div>

					<div class="d-flex justify-content-center" style="margin-bottom: 0;">
						<input class="btn btn-primary" type="button" value="수정" onClick="go_prod_mod_save('${productVO.pseq}')" style="margin-right: 15px;">
						<input class="btn btn-outline-secondary" type="button" value="목록" onClick="go_update_list()">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<%@ include file="../footer.jsp"%>