<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<nav aria-label="Page navigation example">
	<div>
		<ul class="pagination pagination-lg justify-content-center">
		
			<c:if test="${pageMaker.prev}">
				<li class="page-item">
					<a class="page-link" href="notice_list${pageMaker.makeQuery(pageMaker.startPage-1)}">[이전]</a>
				</li>
			</c:if>
					
			<!-- [1][2][3]... 표시 부분 -->
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
				<a href="notice_list${pageMaker.makeQuery(index)}">[${index}]</a>
			</c:forEach>
			
			<c:if test="${pageMaker.next}">
				<li class="page-item">
					<a class="page-link" style="color: #7fad39;" href="notice_list${pageMaker.makeQuery(pageMaker.endPage+1)}">[다음]</a>
				</li>
			</c:if>					
		</ul>
	</div>
</nav>





