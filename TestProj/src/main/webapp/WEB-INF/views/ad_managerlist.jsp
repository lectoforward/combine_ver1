<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>운영자 관리</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script type="text/javascript">
 
 $(document).ready(function(e){
	 $('#tb tr').click( function() {
		 var tr = $(this);
		 var td = tr.children();
		 var id = td.eq(1).text();
		 alert(id);
	     var $form = $('<form></form>');
	     $form.attr('action', '/ad_editmanager');
	     $form.attr('method', 'get');
	     $form.appendTo('body');
	     var memId = '<input type="hidden" value="' + id + '" name="memberId">';
	     $form.append(memId);
	     $form.submit();
	}); 
		 
		$('#tb tr').on('click', ':checkbox', function(e) {
			    e.stopPropagation();
		});
		
		// 삭제
		$('#memDel').click( function() {
			$("input[name=chk]:checked").each(function() {
				var test = $(this).val();
				alert(test);
			});
			var $form = $('#formValue');
			$form.attr('action', '/ad_managerlist/delete');
			$form.attr('method', 'post');
		    $form.submit();
		});
		
		$("#checkall").click(function(){
			$(".chk").prop('checked', $(this).prop('checked'));
		});
		
		// 검색
		$('#btnSearch').click( function() {
			var sw = $("select[name=searchWay]").val();
			var kw = $("input[name=keyword]").val();
			if(kw != null){
				alert(kw);
				 var $form1 = $('<form></form>');
			     $form1.attr('action', '/ad_managerlist/search');
			     $form1.attr('method', 'post');
			     $form1.appendTo('body');
			     var searchWay = '<input type="hidden" value="' + sw + '" name="searchWay">';
			     var keyword = '<input type="hidden" value="' + kw + '" name="keyword">';
			     $form1.append(searchWay);
			     $form1.append(keyword);
			     $form1.submit();
			} else{
				alert('검색어를 입력해주세요.');
			}
		});
		
		 	var result = '${msg}';
			
		    if(result == 'SUCCESS'){
		    	alert("처리가 완료되었습니다.");
		    }
		     if(result == 'FAIL'){
		    	alert("처리에 실패했습니다.");
		    }
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
 	 	<form id="formValue" method="POST">
        <div class="col-sm-10">
          <div class="well" style="height:100%;background:white;">
            <div class="container-fluid">
			  <h4 style="font-weight:bold;">운영자 목록</h4>
			  <br>
			 	<div class="">
					<select class="form-control col-md-6" style="width:150px" name="searchWay">
						<option>아이디</option>
						<option>이름</option>
					</select>
					<input type="text" class="form-control col-md-4" style="width:200px" name="keyword"/>
					<button type="button" class="btn btn-info" id="btnSearch">검색</button>
				</div>  
				<br>
			  <table class="table table-striped active" id="tb">
			    <thead>
			      <tr>
			      	<th><input type="checkbox" id="checkall"></th>
			        <th>아이디</th>
			        <th>이름</th>
			        <th>전화번호</th>
			        <th>게시판명</th>
			      </tr>
			    </thead>
			    <tbody>
			    <c:if test="${memberList ne null }">
			  	  <c:forEach var="manager" items="${memberList}" >
				     	<tr>
					      	<td><input type="checkbox" class="chk" name="chk" value="${manager.memberId}"></td>
					        <td id="memberId">${manager.memberId}</td>
					        <td id="memberName">${manager.memberName}</td>
					        <td id="memberPhone">${manager.memberPhone}</td>
					        <td id="boardName">${manager.boardName}</td>
				      	</tr>
			     	 </c:forEach>
			      </c:if>
			    </tbody>
			  </table>   
			  <hr/>
			<div class="text-center">
				<ul class="pagination">
					<li><a href="#">1</a></li>
				</ul>
			</div>
			  <button type="button" class="btn btn-danger pull-right" id="memDel">운영자 삭제</button>
			  <a href="/ad_addmanager" class="btn btn-success pull-right">운영자 추가</a>
			</div>
</div>
</div>
</form>
</div>
</body>
<script>

</script>
</html>