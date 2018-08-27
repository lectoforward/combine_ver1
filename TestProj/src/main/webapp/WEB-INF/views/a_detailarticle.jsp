<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Insert title here</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
   	 		<h2 style="font-weight:bold;">자유 게시판 게시글 관리</h2>    
 	 </div>

     <div class="col-sm-10">
        <div class="well" style="height:100%;background:white;">
          <div class="container-fluid">
          <h4 style="font-weight:bold;">게시글 조회</h4><br>  
			<div class="col-sm-6">				
				
				<div class="form-group">
					<label>${notice}</label>
					<label for="subject" id="articleTitle">${articleTitle}힘냅시다!!! 꾸역꾸역 승점은 땁니다.</label>
					<label class="pull-right" id="memberNickname">${memberNickname}한민욱</label>
				</div>
				<div class="form-group">
					<label class="pull-left" id="articleDate">${articleDate}작성일 2018-07-15</label>
					<label class="pull-right" id="articleHits">${articleHits}조회수 259</label>
				</div> 
				<br>
				<div class="form-group"> 
					<div class="container" id="articleContent" style="border:0.5px solid black;height:400px;width:100%;">
					<br>야간경기에 더위로 휴식 갖는 살인적인 더위 였습니다.<br>
					인천에서 포항으로 긴 연속 원정이었구요.<br>
					경기내용이야 이제 바뀔게 없는 수비불안, 제리치 디에고 투톱쇼 머….그렇다치고요.<br>
					전반에 실망스럽다가 후반에  될 듯한 분위기에 다들 혈압 좀 올라가셨을텐데요..<br>
					우리보다 좋은 경기장, 많은 예산, 그 보다 많은 서포터를 갖고 있는 팀도 우리 밑에 있습니다.<br>
					앞으로 상위권팀과 경기가 남아있기는 하지만 강원이 또 도깨비 팀 아닙니까?<br>
					울산,제주,수원…한번만 지는 걸 목표로!<br>
					얼음물 잔뜩 챙기고 경기장에 목청껏 응원 합시다!<br>
					</div>
				</div>
				<div class="center-float text-center"> 
					<a href="./managearticles.jsp" class="btn btn-success">목록</a>
					<a href="./article.jsp" class="btn btn-warning">수정</a>
					<button type="button" class="btn btn-danger" data-toggle="modal" data-target="#deleteModal">삭제</button>
				</div> 
		</div>
	   </div>
	</div>
</div>
</div>	
 <!-- Modal -->
 <div class="modal fade" id="deleteModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">삭제 확인 메시지</h4>
        </div>
        <div class="modal-body">
          <p>삭제하시겠습니까?</p>
        </div>
        <div class="modal-footer">
        <form method="post" action="">
          <input type='hidden' id='articleCode' name='articleCode' value='${articleCode}'>
          <button type="button" class="btn btn-info" id="delete-yes">확인</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
          </form>
        </div>
      </div>
      
    </div>
  </div>				
</body>
<script type="text/javascript">

$(document).ready(function(){
	$('#delete-yes').click(function(){
		window.location.href='./managearticles.jsp';
		//$('#delete-yes').attr('type','submit');
	});
});


</script>
</html>