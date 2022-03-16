<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- link rel="stylesheet" href="css/bootstrap.min.css"> -->
    <style>
    #cCnt {
    	border-radius: 3px;
    	border: 1px solid #000;
    	padding: 5px;
    }
    
    #reply {
    	margin-top: 8px;
    	border-radius: 3px;
    	border: 1px solid #ccc;
    	padding: 5px;
    }
    table#rep_input td{
    	border: 0px dotted;
    }
    .btn {
    	border: 1px solid #ccc;
    	border-radius: 3px;
    	background: #f00;
    	color: #fff;
    	padding: 5px;
    	margin: 0 5px;
    }
    #commentList {
    	background-color: rgba(235, 249, 213, .5);
    	border-radius: 3px;
    }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
<div class="col-lg-8">
<div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <!-- <span><h3>상품 리뷰</h3></span> --> <span id="cCnt"></span>
            </div>
			<!--<br>-->
            <div id="reply">
                <table id="rep_input" style="width: 650px">                    
                    <tr>
                        <td style="width:70%;">
                            <textarea  rows="3" cols="75" id="content" name="content" placeholder="댓글을 입력하세요"></textarea>
                        </td>
                        <td style="width:20%;"> 
                            <a href='#' onClick="save_comment('${productVO.pseq }')" class="btn" style="background-color:#7fad39; color:white;">등록</a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="pseq" name="pseq" value="${productVO.pseq }" />        
    </form>

</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
	<!-- 페이지 처리 영역 -->
    <div>
		<ul id="pagination">
			<c:if test="${pageMaker.prev}">
			<li class="paginate_button previous">
				<a href="comments/list${pageMaker.makeQuery(pageMaker.startPage-1)}">[이전]</a>
			</li>
			</c:if>
				
		<!-- [1][2][3]... 표시 부분 -->
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="index">
			<a href="comments/list${pageMaker.makeQuery(index)}">[${index}]</a>
		</c:forEach>
		
			<c:if test="${pageMaker.next}">
			<li class="paginate_button next">
				<a href="comments/list${pageMaker.makeQuery(pageMaker.endPage+1)}">[다음]</a>
			</li>
			</c:if>	
		</ul>
	</div>
 </div>
</div>

<script>
/*
 * 초기 로딩시 상품평 목록 불러오기
 * $(document).ready(function(){ }); 와 $(function(){ }); 는 동일한 의미
 */
$(function(){
	getCommentList();
});

/*
 * 상품평 등록
 */
function save_comment(pseq) {
	
	$.ajax({
		type:'POST',
		url:'comments/save',
		data:$("#commentForm").serialize(),		// form 내의 입력 데이터 전송
		success: function(data) {
			if (data=="success") {	// 상품평 등록 성공
				getCommentList();	// 상품평 목록 요청함수 호출
				$("#content").val("");
			} else if (data=="fail"){
				alert("상품평 등록이 실패하였습니다. 다시 시도해 주세요.");
			} else if (data="not_logedin") {
				alert("상품평 등록은 로그인이 필요합니다!");
			}
		},
		error: function(request, status, error) {
			alert("error:"+error);
		}
	});
}

/*
 * 상품평 목록 불러오기
 */
function getCommentList() {
	
	$.ajax({
		type:'GET',
		url:'comments/list',
		dataType:"json",
		data:$("#commentForm").serialize(),	
		contentType: "application/x-www-form-urlencoded; charset=UTF-8",
		success: function(data) {
			var totalCount = data.total;
			var pageMaker = data.pageinfo;
			var commentList = data.comments; 
	
			console.log(totalCount);
			console.log(commentList);
			console.log(pageMaker);
			console.log("상품평 정보 길이="+commentList.length);
			
			showHtml(pageMaker, commentList, totalCount);	
		},
		error: function(request, status, error) {
			alert("상품평 목록을 조회하지 못했습니다.");
		}
	});
}

function getList(param, callback, error) {
	var pseq = param.pseq;
	var page = param.page || 1;
	
	$.getJSON("/comments/pages/" + bno + "/" + page + ".json",
		function(data) {
			if (callback) {
				callback(data.totalCount, data.comments);
			}	
		}).fail(function(xhr, status, err){
			if (error) {
				error();
			}
		}) ;
}

function showHtml(pageMaker, commentList, totalCount) {
	var html="";
	var p_html = "";
	
	if (commentList.length > 0) {
		$.each(commentList, function(index, item) {
			//console.log(item.content);
			
			html += "<div>";
	        html += "<div id=\"comment_item\"> <strong>작성자: " + item.writer+"</strong>&nbsp;&nbsp;&nbsp;"
	        html += "<span id=\"write_date\">" + displayTime(item.regDate) + "</span><br>"
	        
	        html += item.content+"<br></div>"
	        html += "</div>";
		});
		
		if (pageMaker.prev == true) {
			p_html += "<li class=\"paginate_button previous\">";
			p_html += "<a href=\"comment_paging?pageNum="+pageMaker.startPage-1+
						"&rowsPerPage="+pageMaker.cri.rowsPerPage;
						"&pseq=${productVO.pseq}\">[이전]</a>";
		}
		
		for(var i=pageMaker.startPage; i<pageMaker.endPage; i++) {
			p_html += "<a href='comment_paging?pageNum="+i+
					"&rowsPerPage="+pageMaker.cri.rowsPerPage+
					"&pseq=${productVO.pseq}'>[" + i + "]</a>";
		}
		
		if (pageMaker.next == true) {
			p_html += "<li class=\"paginate_button nextx\">";
			p_html += "<a href=\"comment_paging?pageNum="+(pageMaker.endPage+1)+
						"&rowsPerPage="+pageMaker.cri.rowsPerPage;
						"&pseq=${productVO.pseq}\">[다음]</a>";
		}
	} else {
		html += "<div>";
		html += "<div><h6>등록된 상품평이 없습니다.</h6></div>";
		html += "</div>";
	}
	
	$("#cCnt").html("댓글"+"<span style='color:#7fad39;'>"+totalCount+"</span><br>");	// 상품평의 갯수 출력
	$("#commentList").html(html);
	$("#pagination").html(p_html);	// 페이지 부분 출력
}

/*
 * 작성일 출력 함수
 */
function displayTime(timeValue) {
	var today = new Date();
	
	// 24시간 이내인지 계산하기 위함
	var gap = today.getTime() - timeValue;
	
	var dateObj = new Date(timeValue);
	var str = "";
	
	// 24시간 이내일 경우 시,분,초만 표시
	if (gap < (1000 * 60 * 60 * 24)) {
		var hh = dateObj.getHours();
		var mi = dateObj.getMinutes();
		var ss = dateObj.getSeconds();
		
		return [ (hh>9 ? '' : '0') + hh, ':', (mi>9 ? '' : '0') + mi, ':',
				(ss>9 ? '' : '0') + ss].join('');
	} else {
		var yy = dateObj.getFullYear();
		var mm = dateObj.getMonth() + 1;
		var dd = dateObj.getDate();
		
		return [ yy, '/', (mm>9 ? '':'0') + mm, '/',
				(dd>9 ? '':'0') + dd].join('');
	}
}

</script>
</body>
</html>







