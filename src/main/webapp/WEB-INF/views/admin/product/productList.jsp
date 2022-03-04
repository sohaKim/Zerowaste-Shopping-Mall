<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript" src="admin/product/product.js"></script>
<style>
th, td {
	text-align: center;
}
</style>

<div class="container">
	<div class="row">
		<div class="col-3" style="margin-top: 54px;">
			<h4 style="margin: 10px 10px 10px 30px;">Category</h4>
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><a href="admin_product_list">ALL</a></li>
				<li class="list-group-item"><a href="admin_product_category?kind=1">LIVING</a></li>
				<li class="list-group-item"><a href="admin_product_category?kind=2">BATHROOM</a></li>
				<li class="list-group-item"><a href="admin_product_category?kind=3">KITCHEN</a></li>
				<li class="list-group-item"><a href="admin_product_category?kind=4">KIT</a></li>
				<li class="list-group-item"><a href="admin_product_category?kind=5">ETC</a></li>
			</ul>
		</div>


		<div class="col-9">
			<h3 style="margin: 10px;">상품 리스트</h3>
			<form name="frm" id="prod_form" method="post">
				<div class="input-group" style="margin-bottom: 10px;">
					<input type="text" class="input-lg" placeholder="상품명 입력" id="key" name="key"> 
					<input class="btn btn-outline-primary btn-sm" type="button" name="btn_search" value="검색" onClick="go_search()">
					<input class="btn btn-primary" type="button" value="상품 등록" name="btn_write" onClick="go_wrt()" style="margin-left: 420px;">
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col" >번호</th>
							<th scope="col" style="width: 350px;">상품명</th>
							<th scope="col">원가</th>
							<th scope="col">판매가</th>
							<th scope="col">등록일</th>
							<th scope="col">사용유무</th>
							<th scope="col">best</th>
						</tr>
					</thead>
					<c:choose>
						<c:when test="${productListSize<=0}">
							<tr>
								<td width="100%" colspan="7" align="center" height="23">등록된 상품이 없습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${productList }" var="productVO">
								<tr>
									<td>${productVO.pseq}</td>
									<td style="text-align: left;"><a href="admin_product_detail${pageMaker.makeQuery(pageMaker.criteria.pageNum)}&pseq=${productVO.pseq}">${productVO.name }</a></td>
									<!-- <td><a href="admin_product_detail?pseq=${productVO.pseq }">${productVO.name }</a></td>  페이징 기능 없는 것 -->
									<td><fmt:formatNumber value="${productVO.price1 }" /></td>
									<td><fmt:formatNumber value="${productVO.price2 }" /></td>
									<td><fmt:formatDate value="${productVO.regdate }" /></td>
									<td><c:choose>
											<c:when test='${productVO.useyn=="n"}'>-</c:when>
											<c:otherwise>사용</c:otherwise>
										</c:choose></td>
									<td><c:choose>
											<c:when test='${productVO.bestyn=="y" }'>Best</c:when>
											<c:otherwise>-</c:otherwise>
										</c:choose>
								</tr>
							</c:forEach>
							<!--  페이징.. -->
							<!-- <tr>
							<td>${paging}</td>
							</tr> -->
							<!--  페이징 끝 -->
						</c:otherwise>
					</c:choose>
				</table>
			</form>
		</div>
		<!--  페이징 부분 -->
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">

				<c:if test="${pageMaker.prev}">
					<li class="page-item"><a class="page-link" href="admin_product_list${pageMaker.makeQuery(pageMaker.startPage-1)}">이전</a></li>
				</c:if>

				<!-- [1][2][3]... 표시 부분 -->
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
					<li class="page-item"><a class="page-link" href="admin_product_list${pageMaker.makeQuery(index)}">${index}</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next}">
					<li class="page-item"><a class="page-link" href="admin_product_list${pageMaker.makeQuery(pageMaker.endPage+1)}">다음</a></li>
				</c:if>
			</ul>
		</nav>
		<!--  페이징 끝 -->
	</div>

</div>

<%@ include file="../footer.jsp"%>
