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
			<h2 style="font-weight: bold;">${boardName}자유게시판 관리</h2>
		</div>

		<div class="col-sm-10">
			<div class="well" style="height: 100%; background: white;">
				<div class="container-fluid">
					<h4 style="font-weight: bold;">자유 게시판 관리</h4>
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
						<button type="button" class="btn btn-info" onclick="location.href='./managearticles_.jsp'">검색</button>
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
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step2" scope="row">3284</td>
								<td class="step3">렉토피아 전문가 과정 16기 화이팅!!<span class="comment"></span></td>
								<td class="step4">포워드</td>
								<td class="step5">2018-07-19</td>
								<td class="step6">0</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step2" scope="row">3283</td>
								<td class="step3">힘냅시다!!! 꾸역꾸역
										승점은 땁니다.<span class="comment">[4]</span></td>
								<td class="step4">한민욱</td>
								<td class="step5">2018-07-15</td>
								<td class="step6">182</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3282</td>
								<td class="step2">오,~~~~~~~~~~~~~!!!!!!</td>
								<td class="step3">권혁담</td>
								<td class="step4">2018-07-13</td>
								<td class="step5">171</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3281</td>
								<td class="step2">메시선수 공백이 느껴지는 2경기네요<span
									class="comment">[1]</span></td>
								<td class="step3">이강욱</td>
								<td class="step4">2018-07-12</td>
								<td class="step5">210</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3280</td>
								<td class="step2">수비..<span
									class="comment">[2]</span></td>
								<td class="step3">박재윤</td>
								<td class="step4">2018-07-11</td>
								<td class="step5">289</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3279</td>
								<td class="step2">호날두 선수는 왜 경기에 안나옵니까?<span
									class="comment">[3]</span></td>
								<td class="step3">정민수</td>
								<td class="step4">2018-07-11</td>
								<td class="step5">280</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3278</td>
								<td class="step2">의류..</td>
								<td class="step3">김성래</td>
								<td class="step4">2018-07-10</td>
								<td class="step5">228</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3277</td>
								<td class="step2">기성용 선수 고마버요<span
									class="comment">[1]</span></td>
								<td class="step3">김영란</td>
								<td class="step4">2018-07-09</td>
								<td class="step5">253</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3276</td>
								<td class="step2">한용수 선수
										응원해요!!!!!!!!!!!!!!!!!!!!!!<span class="comment">[4]</span></td>
								<td class="step3">yellowmint</td>
								<td class="step4">2018-07-09</td>
								<td class="step5">271</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3275</td>
								<td class="step2">선수들에게 상처 주지맙시다!!!<span
									class="comment">[6]</span></td>
								<td class="step3">이강욱</td>
								<td class="step4">2018-07-09</td>
								<td class="step5">337</td>
							</tr>
							<tr>
								<th><input type="checkbox" class="checkthis" value=""></th>
								<td class="step1" scope="row">3274</td>
								<td class="step2">또 ㅡ.ㅡ<span
									class="comment">[8]</span></td>
								<td class="step3">김성래</td>
								<td class="step4">2018-07-08</td>
								<td class="step5">316</td>
							</tr>
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