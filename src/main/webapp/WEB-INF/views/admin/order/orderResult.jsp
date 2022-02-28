<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
	function go_order_save() {
		var count = 0;
		if (document.frm.result.length == undefined) {
			if (document.frm.result.checked == true) {
				count++;
			}
		} else {
			for (var i = 0; i < document.frm.result.length; i++) {
				if (document.frm.result[i].checked == true) {
					count++;
				}
			}
		}
		if (count == 0) {
			alert("주문처리할 항목을 선택해 주세요.");
		} else {
			document.frm.action = "admin_order_save";
			document.frm.submit();
		}
	}

	function go_search() {
		var theForm = document.frm;
		theForm.action = "admin_order_list";
		theForm.submit();
	}
</script>



<div class="container">
	<div class="row">
		<div class="col-3" style="margin-top: 54px;">
			<h4 style="margin: 10px 10px 10px 30px;">처리상태</h4>
			<ul class="list-group list-group-flush">
				<li class="list-group-item"><a href="result?result=1">미처리</a></li>
				<li class="list-group-item"><a href="result?result=2">처리완료</a></li>
			</ul>
		</div>


		<div class="col-9">
			<h3 style="margin: 10px;">주문 리스트</h3>
			<form name="frm" method="post">
				<div class="input-group" style="margin-bottom: 10px;">
					<input type="text" class="input-lg" placeholder="주문자 이름" id="key" name="key"> 
					<input class="btn btn-outline-primary btn-sm"  type="button" name="btn_search" value="검색" onClick="go_search()">
					<input class="btn btn-primary" type="button" value="주문처리" name="btn_write" onClick="go_order_save()" style="margin-left: 420px;">
				</div>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">주문번호</th>
							<th scope="col">처리여부</th>
							<th scope="col">주문자</th>
							<th scope="col">상품명</th>
							<th scope="col">수량</th>
							<th scope="col">주문일</th>
						</tr>
					</thead>

					<c:forEach items="${OrderByResult}" var="orderVO">
						<tr>
							<c:choose>
								<c:when test='${orderVO.result == "1" }'>
									<td><span style="font-color: blue">${orderVO.odseq}</span></td>
									<td><input type="checkbox" name="result"> 미처리</td>
								</c:when>
								<c:otherwise>
									<td><span style="font-color: red">${orderVO.odseq}</span></td>
									<td><input type="checkbox" checked="checked"	disabled="disabled">처리완료</td>
								</c:otherwise>
							</c:choose>
							<td>${orderVO.mname }</td>
							<td>${orderVO.pname }</td>
							<td>${orderVO.quantity }</td>
							<td><fmt:formatDate value="${orderVO.indate }" /></td>
						</tr>
					</c:forEach>
				</table>
			</form>
		</div>

	</div>
</div>


<%@ include file="../footer.jsp"%>
