<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<script type="text/javascript">
  function go_search(name)
  {
     //document.frm.action="admin_member_list?key="+name;
     document.frm.action="admin_member_list";
     document.frm.submit();
  }
</script>

	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-8">
				<h3 style="margin: 10px;">회원 리스트</h3>
				<form name="frm" id="prod_form" method="post">	
					<div class="input-group" style="margin-bottom: 10px;">
						<input type="text" class="input-lg" placeholder="회원 이름 입력" id="key" name="key">
						<input class="btn btn-outline-primary btn-sm" type="button" name="btn_search" value="검색" onClick="go_search(this.key)"> 
					</div>
				<table class="table table-hover">
				<thead>
					<tr>
						<th scope="col">아이디</th>
						<th scope="col">이름</th>
						<th scope="col">이메일</th>
						<th scope="col">가입일</th>
					</tr>
					</thead>
						<c:forEach items="${memberList }" var="memberVO">
							<tr>
								<td>${memberVO.id}</td>
								<td>${memberVO.name }</td>
								<td>${memberVO.email }</td>
								<td><fmt:formatDate value="${memberVO.regdate }" /></td>
							</tr>
						</c:forEach>
					</table>
				</form>
			</div>
		</div>
	</div>


	<%@ include file="../footer.jsp"%>
