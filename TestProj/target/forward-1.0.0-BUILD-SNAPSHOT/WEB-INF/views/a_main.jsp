<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>관리자 메인</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  	#sidebar{
  		float: left;
  	}
  	#sidebar:before, #sidebar:after{
  		clear:both;
  		content:"";
  	}
  	
  </style>
</head>
<body>
<div id="header">
	<%@ include file="adminheader.jsp" %>
</div>
<div id="sidebar">
<%@ include file="adminsidebar.jsp" %>
</div>
<div id="content">
   	 <div class="well text-center">
   	 	<h2 style="font-weight:bold;">ADMINMASTER</h2>
    	<h4>게시판 관리 프로그램</h4>      
 	 </div>
 	 	
        <div class="col-sm-5">
          <div class="well" style="height:100%;background:white;">
            <div class="container-fluid">
			  <h4 style="font-weight:bold;">${sessionScope.boardCode}&nbsp;최근 게시글</h4>      
			  <table class="table table-striped">
			    <thead>
			      <tr>
								<th>글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일자</th>
							</tr>
						</thead>
						<tbody>
						
									
						
							<tr>
								<td class="step2" scope="row">3284</td>
								<td class="step3">렉토피아 전문가 과정 16기 화이팅!!
								<span class="comment"></span></td>
								<td class="step4">포워드</td>
								<td class="step5">2018-07-19</td>
							</tr>
							<tr>
								<td class="step2" scope="row">3283</td>
								<td class="step3">힘냅시다!!! 꾸역꾸역
										승점은 땁니다.<span class="comment">[4]</span></td>
								<td class="step4">한민욱</td>
								<td class="step5">2018-07-15</td>
							</tr>
							<tr>
								<td class="step1" scope="row">3282</td>
								<td class="step2">오,~~~~~~~~~~~~~!!!!!!</td>
								<td class="step3">권혁담</td>
								<td class="step4">2018-07-13</td>
							</tr>
							<tr>
								<td class="step1" scope="row">3281</td>
								<td class="step2">메시선수 공백이 느껴지는 2경기네요<span
									class="comment">[1]</span></td>
								<td class="step3">이강욱</td>
								<td class="step4">2018-07-12</td>
							</tr>
							<tr>
								<td class="step1" scope="row">3280</td>
								<td class="step2">수비..<span
									class="comment">[2]</span></td>
								<td class="step3">박재윤</td>
								<td class="step4">2018-07-11</td>
							</tr>
							<tr>
								<td class="step1" scope="row">3279</td>
								<td class="step2">호날두 선수는 왜 경기에 안나옵니까?<span
									class="comment">[3]</span></td>
								<td class="step3">정민수</td>
								<td class="step4">2018-07-11</td>
							</tr>
			    </tbody>
			  </table>
			  <a href="#" class="btn btn-success pull-right">더보기</a>
			</div>
          </div>
        </div>
        
        <div class="col-sm-5">
          <div class="well" style="height:100%;background:white;">
            <div class="container-fluid">
			  <h4 style="font-weight:bold;">공지 게시판</h4>      
			  <table class="table table-striped">
			    <thead>
			      <tr>
			        <th>글번호</th>
			        <th>제목</th>
			        <th>작성자</th>
			        <th>작성일자</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>885</td>
			        <td>비방글 경고</td>
			        <td>운영자1</td>
			        <td>2018-07-18</td>
			      </tr>
			      <tr>
			        <td>884</td>
			        <td>사이트 점검 시간 안내</td>
			        <td>운영자2</td>
			        <td>2018-07-10</td>
			      </tr>
			      <tr>
			        <td>883</td>
			        <td>게시판 내 이벤트 개최</td>
			        <td>관리자</td>
			        <td>2018-07-10</td>
			      </tr>
			      <tr>
			        <td>882</td>
			        <td>회원 등급 변경</td>
			        <td>운영자2</td>
			        <td>2018-07-09</td>
			      </tr>
			      <tr>
			        <td>881</td>
			        <td>운영자 변경 안내</td>
			        <td>관리자</td>
			        <td>2018-07-07</td>
			      </tr>
			    </tbody>
			  </table>
			  <a href="#" class="btn btn-warning pull-right">더보기</a>
			</div>
          </div>
        </div>
 </div>

</body>

</html>
