<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>게시판 관리</title>
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
   	 		<h2 style="font-weight:bold;">${boardName}게시판 테마 변경</h2>    
 	 	</div>
        <div class="col-sm-10">
          <div class="well" style="height:100%;background:white;">
            <div class="container-fluid">
			  <h4 style="font-weight:bold;">테마 변경</h4>
				<h4>게시판에 적용할 테마를 선택하세요.</h4><br>
				<div class="container-fluid text-center bg-grey">

				  <div class="row text-center">
				    <div class="col-sm-6">
				      <div class="thumbnail">
				        <img src="./images/theme1.png" style="width:400px;height:300px;">
				        <h5><input type="radio" id="themeName" name="themeName" value="주황테마" checked><strong>블랙 테마(기본 테마)</strong></h5>
				      </div>
				    </div>
				    <div class="col-sm-6">
				      <div class="thumbnail">
				        <img src="./images/theme2.png" style="width:400px;height:300px;">
				        <h5><input type="radio" id="themeName" name="themeName" value="하늘테마"><strong>하늘 테마</strong></h5>
				      </div>
				    </div>
				  </div>
				  <div>
				    <a href="./boardtheme.jsp" class="btn btn-success text-center">테마적용</a>
				  </div>
				   
				</div>
				</div>
				</div>
				</div>
				</div>
</body>
</html>