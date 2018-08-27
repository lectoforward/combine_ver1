<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>회원 관리</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
  
  $(document).ready(function(e){
		 $('#tb tr').on('click', function() {
			 var tr = $(this);
			 var td = tr.children();
			 var id = td.eq(1).text();
			 alert(id);
		     var $form = $('<form></form>');
		     $form.attr('action', '/ad_editmember');
		     $form.attr('method', 'get');
		     $form.appendTo('body');
		     var memId = '<input type="hidden" value="' + id + '" name="memId">';
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
			$form.attr('action', '/ad_memberlist/delete');
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
			var bn = $("input[name=boardName]").val();
			if(kw != null){
				 var $form = $('<form></form>');
			     $form.attr('action', '/ad_memberlist/search');
			     $form.attr('method', 'post');
			     $form.appendTo('body');
			     var searchWay = '<input type="hidden" value="' + sw + '" name="searchWay">';
			     var keyword = '<input type="hidden" value="' + kw + '" name="keyword">';
			     var boardname = '<input type="hidden" value="' + bn + '" name="boardName">';
			     $form.append(searchWay);
			     $form.append(keyword);
			     $form.append(boardname);
			     $form.submit();
			} else{
				alert('검색어를 입력해주세요.');
			}
		});
		
		$('#boardSelect').change(function(){
			var test = $("select[name=boardSelect]").val();
			if(test != '게시판 선택'){
				alert(test);
				var $form = $('<form></form>');
			     $form.attr('action', '/ad_memberlist/board');
			     $form.attr('method', 'post');
			     $form.appendTo('body');
			     var bn = '<input type="hidden" value="' + test + '" name="boardName">';
			     $form.append(bn);
			     $form.submit();
			} else{
				alert('게시판을 선택해주세요!');
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
   	 		<h2 style="font-weight:bold;">${boardName}&nbsp;회원 관리</h2>    
 	 	</div>
 	 	
 	 	<form id="formValue" method="POST">
 	 	
        <div class="col-sm-10">
          <div class="well" style="height:100%;background:white;">
            <div class="container-fluid">
			 <div style="font-weight:bold;">${boardName}회원 목록</div>
			  <input type="hidden" name="boardName" value="${boardName}"/>
			  
			  <br>
			 	<div class="search">
			 		<select class="form-control col-md-6" style="width:150px" id="boardSelect" name="boardSelect">
			 		<option>게시판 선택</option>
			 			<c:forEach var="board" items="${boardList}">
							<option>${board.boardName}</option>
						</c:forEach>
					</select>
					
					<select class="form-control col-md-6" style="width:150px" name="searchWay">
						<option>아이디</option>
						<option>닉네임</option>
						<option>등급명</option>
					</select>
					<input type="text" class="form-control col-md-4" name="keyword" style="width:200px"/>
					<button type="button" class="btn btn-info" id="btnSearch">검색</button>
				</div>  
				<br>    
			  <table class="table table-striped active" id="tb">
			    <thead>
			      <tr>
			      	<th><input type="checkbox" id="checkall"></th>
			        <th>아이디</th>
			        <th>닉네임</th>
			        <th>이름</th>
			        <th>메일</th>
			      <!-- <th>게시글 수</th> -->  
			        <th>등급명</th>
			      </tr>
			    </thead>
			    <tbody>
			  	<c:if test="${memberList ne null }">
			  	  	<c:forEach var="member" items="${memberList}" >
				     	<tr>
					      	<td><input type="checkbox" class="checkthis" name="chk" value="${member.memberId}"></td>
					        <td id="memberId"><a href="#" id="row"><label id="memId">${member.memberId}</label></a></td>
					        <td id="memberNickname">${member.memberNickname}</td>
					        <td id="memberName">${member.memberName}</td>
					        <td id="memberMail">${member.memberMail}</td>
			      			<td id="gradeName">${member.gradeName}</td>
				      	</tr>
			     	 </c:forEach>
			      </c:if>
			    </tbody>
			  </table>
			  <hr/>
			<div class="text-center">
					<ul class="pagination">
						<!-- 이전 페이지로 가는 링크가 있어야 하는지 boolean 값으로 if 조건식을 통해 처리 -->
						<c:if test="${pageMaker.prev }">
							<li><a href="/ad_memberlist/board${pageMaker.makeQuery(pageMaker.startPage - 1 )}">&laquo;</a></li>
						</c:if>
						<!-- 각 페이지 번호의 출력 -->
						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx?'class = active':'' }"/>>
								<a href="/ad_memberlist/board${pageMaker.makeQuery(idx)}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0 }">
							<li><a href="/ad_memberlist/board${pageMaker.makeQuery(pageMaker.endPage + 1 )}">&raquo;</a></li>
						</c:if>
					</ul>
				</div>
			  <button type="button" class="btn btn-danger pull-right" id="memDel">회원 삭제</button>
			  <a href="/ad_addmember" class="btn btn-success pull-right">회원 추가</a>
			</div>
          </div>
        </div>
        
        </form>
        
	</div>
</body>
</html>