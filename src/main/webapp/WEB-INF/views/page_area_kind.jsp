<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div>
	<ul class="pagination pagination-md justify-content-center" >
	
		<c:if test="${pageMaker.prev}">
			<li class="page-item">
				<a class="page-link" style="color:#7fad39;" href="all${pageMaker.makeKindQuery(pageMaker.startPage-1, javascript:document.getElementById('order').value)}">[이전]</a>
			</li>
		</c:if>
				
		<!-- [1][2][3]... 표시 부분 -->
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index" >
		 <c:choose>
		 	<c:when test="${pageMaker.criteria.pageNum==index}" >
		 		<li class="page-item active" >
		 			<a class="page-link" style="color:#FFFFFF; background-color:green;" href="all${pageMaker.makeKindQuery(index, javascript:document.getElementById('order').value)}">[${index}]</a>
		 		</li>
            </c:when>
            <c:otherwise>
            	<li class="page-item"><a class="page-link" style="color:#7fad39;" href="all${pageMaker.makeKindQuery(index, javascript:document.getElementById('order').value)}">${index}</a></li>
            </c:otherwise>
          </c:choose>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li class="page-item">
				<a class="page-link" style="color:#7fad39;" href="all${pageMaker.makeKindQuery(pageMaker.endPage+1)}">[다음]</a>
			</li>
		</c:if>	
			
	</ul>
</div>




