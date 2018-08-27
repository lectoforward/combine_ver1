<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <script>
 	 $(document).ready(function(e){
		$('#btnSubmit').click(function(e){		
			var form = $('.mainForm');
			form.attr('method', 'post');
			form.attr('action', '/ad_admininfo');
			form.submit();
		});
		
		var result = '${msg}';
	    if(result == 'SUCCESS'){
	    	alert("변경 완료되었습니다.");
	    }
	     if(result == 'FAIL'){
	    	alert("변경 실패했습니다.");
	    }
	});
 	 
  </script>
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
   	 		<h2 style="font-weight:bold;">관리자 정보 변경</h2>    
 	 </div>

        <div class="col-sm-10">
          <div class="well" style="height:100%;background:white;">
            <div class="container-fluid">
            <h4 style="font-weight:bold;">관리자 비밀번호 변경</h4><br>  
				<form class="mainForm col-sm-8">
				<div class="form-group row">
					<label class="col-sm-2 col-form-label">관리자 ID</label>
					<label>admin</label>
				</div>
				<div class="form-group row">
					<label class="memberPwd col-sm-2 col-form-label" >기존 비밀번호</label>
					<input type="text" name="memberPwd" class="form-control col-md-4" style="width:200px" id="memberPwd"/>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label">새 비밀번호</label>
					<input type="text" class="form-control col-md-4" style="width:200px" id="newMemberPwd" name="newMemberPwd"/>
				</div>
				<div class="form-group row">
					<label class="col-sm-2 col-form-label">비밀번호 확인</label>
					<input type="text" class="form-control col-md-4" style="width:200px" id="checkPwd"/>
				</div>
				
				<div class="form-group row">
			     	 <button type="button" class="btn btn-success" id="btnSubmit">수정</button>
			   	</div>
			    </form>
	   		 </div>
		</div>
	</div>
</div>
</body>

</html>