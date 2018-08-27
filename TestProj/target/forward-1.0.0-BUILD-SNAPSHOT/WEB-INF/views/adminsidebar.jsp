<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
    .sidebar {
      background-color: #f2f2f2;
      height: 800px;
      width: 250px;
    }
</style>
<body>
	<div class="sidebar container" style="font-weight:bold;">
      <h3 class="text-center"style="font-weight:bold;padding:15px 0;">관리 홈</h3>
      <ul class="nav nav-pills nav-stacked text-center">
      	<li><c:out value="${sessionScope.login}"/> 님</li>
      	<li><c:out value="${sessionScope.boardName}"/> 담당</li>
      	<li>&nbsp;</li>
        <li><a href="/ad_boardlist">게시판 관리</a></li>
        <c:if test ="${sessionScope.login == 'admin'}">
       	 <li><a href="/ad_memberlist">회원 관리</a></li>
       	 <li><a href="/ad_managerlist">운영자 관리</a></li>
        </c:if>
      </ul><br>
    </div>
</body>
</html>