<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
	
		<c:if test="${pageMaker.prev}">
			<li class="page-item">
				<a class="page-link" href="admin_product_list${pageMaker.makeQuery(pageMaker.startPage-1)}">이전</a>
			</li>
		</c:if>
				
		<!-- [1][2][3]... 표시 부분 -->
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
		<li class="page-item">
			<a class="page-link" href="admin_product_list${pageMaker.makeQuery(index)}">${index}</a>
		</li>
		</c:forEach>
		
		<c:if test="${pageMaker.next}">
			<li class="page-item">
				<a class="page-link" href="admin_product_list${pageMaker.makeQuery(pageMaker.endPage+1)}">다음</a>
			</li>
		</c:if>	
			
	</ul>
	</nav>





