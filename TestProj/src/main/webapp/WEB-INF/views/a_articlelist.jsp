<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시판 관리</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
#sidebar {
	float: left;
}

#sidebar:before, #sidebar:after {
	clear: both;
	content: "";
}
</style>
</head>
<body>
	<div id="header">
		<%@ include file="adminheader.jsp"%>
	</div>
	<div id="sidebar">
		<%@ include file="adminsidebar.jsp"%>
	</div>
	<div id="content">
		<div class="well text-center">
			<h2 style="font-weight: bold;">${selectBoardName}&nbsp;관리</h2>
		</div>

		<div class="col-sm-10">
			<div class="well" style="height: 100%; background: white;">
				<div class="container-fluid">
					<h4 style="font-weight: bold;">${selectBoardName}&nbsp;관리</h4>
					<br>
					<div class="">
						<select id="searchWay" class="form-control col-md-6"
							style="width: 150px">
							<option>아이디</option>
							<option>닉네임</option>
							<option>제목</option>
							<option>내용</option>
						</select> <input type="text" id="keyword" class="form-control col-md-4"
							style="width: 200px" />
						<button type="button" class="btn btn-info" onclick="location.href='/a_articlelist/search'">검색</button>
					</div>
					<br>
					<table class="table table-striped active" id="tb">
						<thead>
							<tr>
								<th><input type="checkbox" id="checkall"></th>
								<th>글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일자</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${articlelist}" var="articleVO">
									<tr>
										<!-- no -->
										<td>${articleVO.articleCode}</td>
										<!-- 제목 -->
										<td>${articleVO.articleTitle}</td>
										<!-- 작성자 -->
										<td>${articleVO.memberNickname}</td>
										<!-- 작성일 -->
										<td>${articleVO.articleDate}</td>
										<!-- 조회수-->
										<td><span class="badge bg-red">${articleVO.articleHits }</span></td>
									</tr>
								</c:forEach>
						</tbody>
					</table>
					<hr />
					<div class="text-center">
						<ul class="pagination">
							<li><a href="#">◀</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">▶</a></li>
						</ul>
					</div>
					<button class="btn btn-danger pull-right">삭제</button>
					<a href="./addarticle.jsp" class="btn btn-success pull-right">글쓰기</a>
					<a href="./theme.jsp" class="btn btn-warning pull-left">테마 변경</a> <a
						href="./editboard.jsp" class="btn btn-primary pull-left">게시판수정</a>
				</div>
			</div>
		</div>

	</div>
</body>
<script>
	$(document).ready(function() {
		$("#checkall").click(function() {
			$(".checkthis").prop('checked', $(this).prop('checked'));
		});

		$('#tb td').click(function() {
			var href = "./article.jsp";
			window.location.href = href;
		});
	});
</script>
</html>