<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
   	 		<h2 style="font-weight:bold;">게시판 관리</h2>    
 	 	</div>
        <div class="col-sm-10">
          <div class="well" style="height:100%;background:white;">
            <div class="container-fluid">
			  
			  <form id="deleteform">
			  <h4 style="font-weight:bold;">게시판 관리</h4><br> 
			 	<div class="">
					<select class="form-control col-md-6" style="width:150px" name="searchWay">
						<option  id="memberId">운영자아이디</option>
						<option  id="boardName">게시판명</option>
						<option  id="themeName">테마명</option>
					</select>
					<input type="text" name="keyword" id="keyword" class="form-control col-md-4" style="width:200px"/>
					<button type="button" id="btn-info" class="btn btn-info">검색</button>
				</div>  
				<br>     
			  <table class="table table-striped active" id="tb">
			    <thead>
			      <tr>
			     	<th><input type="checkbox" class="chechall" id="checkall"/></th>
			        <th>게시판명</th>
			        <th>운영자</th>
			        <th>테마명</th>
			      </tr>
			    </thead>		
			     <c:forEach var="board" items="${boardViewList }">
			    	<tr>
			    		<td><input type="checkbox" class="checkthis" name="boardCode00" id="boardCode00" value="${board.boardCode }"></td>
			    		<td id="view" ><input type="hidden" id="boardName2" name="boardName2" value="${board.boardName }">${board.boardName }</td>
			    		<td id="view">${board.memberId }</td>
			    		<td id="view">${board.themeName }</td>
			    		<td id="view"><input type="hidden" name="boardCode" id="boardCode" value="${board.boardCode }" ></td>
			    	</tr>
			    </c:forEach> 
				
			    
			  
			  </table>   
			  
			  <button id="btn_delete"  class="btn btn-danger pull-right">삭제</button >
			<!-- <input type="submit" class="btn btn_danger pull-right" value="삭제"> -->
			  <!-- <input type="hidden" name="job" value="deleteBoardList" > -->
			  
			  
			   <button  id="btn_update" class="btn btn-warning pull-right" >수정</button>
			
			  			 
			  
			
			  <button id="btn_add" class="btn btn-success pull-right" >게시판 추가</button>
			  <!-- <input type="hidden" name="job" value="addBoard"> -->
			  </form>
			  
			</div>
          </div>
        </div>
	</div>
</body>
<script>
	$(document).ready(function(){
	/* 	$("#checkall").click(function(){
			$(".checkthis").prop('checked', $(this).prop('checked'));
		}); */
		
/* 		$('#tb #view').click(function(){
			var href = "./a_articlelist.jsp";
			window.location.href = href;
		}); */
		
		$('#btn_update').click(function(){
			var check=$('input:checkbox[name=boardCode00]:checked').length;
			alert(check);
			if(check==1){
				var job=$('.checkthis:checked').val();
				 alert(job);
				var $form = $('#deleteform');
				$form.attr('method','get');
				$form.attr('action', '/a_editboard');
				$form.appendTo('body');
				 var input='<input type="hidden" value="'+job+'" name="clickboardCode">'; 
				
				$form.append(input);	
				$form.submit();
			}else if(check==0){
				alert("수정할 게시판을 선택해 주세요.")
			}
			
			else{
				alert("게시판 수정은 한개만 선택 해주세요.");
			}
		});
		
 		$('#btn_add').click(function(){
				var $form = $('#deleteform');
				$form.attr('method','get');
				$form.attr('action', '/ad_addboard');
				$form.appendTo('body');
				$form.submit();
			}); 
		
 		
		$('#btn-info').click(function(){		
			var tmp = $('select[name="searchWay"]').val();
			var tm2 = $('#keyword').val();
			alert(tmp);
			alert(tm2);
			var $form = $('#deleteform');
			alert('gg');
			if(tm2==null){
				
				$form.attr('method','get');
			}else{
				$form.attr('method','post');
			}
			$form.attr('action', '/searchBoardWay');
			$form.submit(); 
			
		 	 /* $.ajax({
				type:"POST",
				url:"/searchBoardWay",
				data:{ searchWay:tmp,keyword:tm2} 
			});  */
		}); 
		 
		
		$("btn_delete").click( function() {
			$("input[name=boardCode00]:checked").each(function() {
				var test = $(this).val();
				alert(test);
			});
			var $form = $('#deleteform');
			$form.attr('action', '/deleteBoardList');
			$form.attr('method', 'get');
		    $form.submit();
		});
		
		/* $('.pull-right').click(function(){
			var name= $(this).attr('value');
			alert(name);
			switch(name){
			case "addBoard" :
				$("#deletform").submit();
				break;
			case "deleteBoardList":
				 alert("ㅎㅎ"); 
				var arr = new Array();
				var i =0;
				$('.checkthis:checked').each(function(){
					arr[i] = $(this).val();
					 alert(arr[i]);
					 i++;
				});
				jQuery.ajaxSettings.traditional = true;

			 	$.ajax({
					type:"POST",
					url: "/deleteBoardList",
					data:{boardCodes: arr}
				}); 
			
				break;
			/* case "updateBoard":
				var check=$('input:checkbox[name=boardCode00]:checked').length;
				alert(check);
				if(check==1){
					var job=$('.checkthis:checked').val();
					 alert(job);
					var $form = $("<form></form>");
					var input="<input type='hidden' value='"+job+"' name='clickboardCode'>";
					$form.appendTo("body");
					$form.append(input);
					$form.attr("method","GET");
					$form.attr("action", "/a_editboard");
					$form.submit();
					 
					/* $.ajax({
						type:"GET",
						url:"/a_editboard",
						data:{boardCode:job}
					}); 				 
				}else if(check==0){
					alert("수정할 게시판을 선택해 주세요.")
				}
				
				else{
					alert("게시판 수정은 한개만 선택 해주세요.");
				}
				break; 
			}
		}); */
		
		
		
	}); 
</script>
</html>