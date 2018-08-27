<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>

$(document).ready(function(e){
/* 	$('#managerList').click( function() {
	     var $form = $('<form></form>');
	     $form.attr('action', '/ad_managerlist');
	     $form.attr('method', 'get');
	     $form.appendTo('body');
	     $form.submit();
	});*/
	
	$('#memberList').click( function() {
	     var $form = $('<form></form>');
	     $form.attr('action', '/ad_regchart');
	     $form.attr('method', 'get');
	     $form.appendTo('body');
	     $form.submit();
	});
});

</script>
  <style>
    .navbar-nav{
    	width:100%;
    }

  </style>
</head>
<body class="header-fixed sidebar-fixed" data-spy="scroll" data-target=".navbar" data-offset="60">
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav">
	      	<li><a class="navbar-brand" style="font-weight:bold;font-size:20pt;" href="/a_main">ADMINMASTER</a></li>
	        <li class="active" style="font-weight:bold;font-size:12pt;"><a href="/a_main">관리 홈</a></li>
	        <li style="font-weight:bold;font-size:12pt;"><a href="/ad_boardlist">게시판 관리</a></li>
	        <c:if test ="${sessionScope.login == 'admin'}">
		        <li style="font-weight:bold;font-size:12pt;"><a href="/ad_memberlist" id="memberList">회원 관리</a></li>
		        <li style="font-weight:bold;font-size:12pt;"><a href="/ad_managerlist" id="managerList">운영자 관리</a></li>
		        <li style="font-weight:bold;font-size:12pt;"><a href="/ad_regchart" id="statistic">통계</a></li>
		        <li style="font-weight:bold;font-size:12pt;"><a href="/ad_admininfo">관리자 정보</a></li>
	        </c:if>
	        <li><a href="/logout" class="pull-right" style="font-weight:bold;font-size:12pt;">로그아웃</a></li>
	      </ul>
	    </div>
</body>
</html>
