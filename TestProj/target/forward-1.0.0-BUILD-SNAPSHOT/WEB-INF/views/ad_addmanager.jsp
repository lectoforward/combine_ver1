<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script>

$(document).ready(function(e){
	$('#btnSubmit').click(function(e){
		var id = $("#memberId").val();
		alert(id+'--------');
		
		var $form = $('#mainForm');
		$form.attr('method', 'post');
		$form.attr('action', '/ad_addmanager');
		$form.submit();
	});
});
</script>
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
   	 		<h2 style="font-weight:bold;">운영자 관리</h2>    
 	 	</div>
 	 	
        <div class="col-sm-10">
          <div class="well" style="height:100%;background:white;">
            <div class="container-fluid">
			  <h4 style="font-weight:bold;">운영자 추가</h4>
			  <br>
	
				<form id="mainForm">
				<div class="form-group row">
				    <label class="col-sm-2 col-form-label" for="memberId">아이디</label>
				    <input id="memberId" name="memberId" type="text" class="input-sm" placeholder="2~15자" equired autofocus>
				</div>
				<div class="form-group row">
				    <label for="memberPwd" class="col-sm-2 col-form-label">비밀번호</label>
				    <input id="memberPwd" name="memberPwd" type="password" class="input-sm" placeholder="8~15자" required>
				</div>
				<div class="form-group row">
				    <label for="memberName" class="col-sm-2 col-form-label">이름</label>
				    <input id="memberName" name="memberName" type="text" placeholder="40자미만 공백없이" class="input-sm"  required>
				</div>
				<div class="form-group row">
				    <label for=memberNickname" class="col-sm-2 col-form-label">닉네임</label>
				    <input id="memberNickname" name="memberNickname" type="text" class="input-sm" required>
				</div>
				<div class="form-group row">
				    <label for="memberMail" class="col-sm-2 col-form-label">메일 주소</label>
				    <input id="memberMail" name="memberMail" type="email" placeholder="abcd@domain.com" class="input-sm"  required autocomplete="off">
				</div>
				<div class="form-group row">
				    <label for="memberPhone" class="col-sm-2 col-form-label">연락처</label>
				    <select class="0stnum input-sm" name="tel1">
				    	<option value="010">010</option>
				    </select>
				    <input class ="1stnum input-sm" id="1stnum" name="tel2" style="width:80px;">
				    <input class ="2stnum input-sm" id="2stnum" name="tel3" style="width:80px;">
				</div>  
				<div class="form-group row">
					<label id="birth" class="col-sm-2 col-form-label">생년월일</label>
					<input type="text" name="memberBirth" placeholder="yyyy-MM-dd" class="input-sm" required>
				</div>
				<div class="form-group row">
					<label  class="col-sm-2 col-form-label">주소</label>
					<input type="text" name="memberAddress" placeholder="주소" value="" class="input-sm">
				</div>
				<div class="form-group row">
				    <label for="boardName" class="col-sm-2 col-form-label">관리 게시판</label>
				    <select class="form-control col-md-6" style="width:150px" id="boardSelect" name="boardName">
			 		<option>게시판 선택</option>
			 			<c:forEach var="board" items="${boardList}">
							<option>${board.boardName}</option>
						</c:forEach>
					</select>
				</div>
				<div class="form-group row ">
				  <input type="button" class="btn btn-success" id="btnSubmit" value="제출">
				  <a href="/ad_managerlist" type="button" class="btn btn-warning" id="btnCancel"> 취소</a>
				</div>
			</form>
			</div>
		</div>
		</div>
	</div>
</body>
</html>