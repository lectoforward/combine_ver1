<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title>통계</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <!-- google charts -->
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> <!-- 라이브러리를 참조 -->
</head>
  
    <style>
	  	#sidebar{
	  		float: left;
	  	}
	  	#sidebar:before, #sidebar:after{
	  		clear:both;
	  		content:"";
	  	}
   </style> 
     
   <body>
	<div id="header">
		<%@ include file="adminheader.jsp" %>
	</div>
	<div id="sidebar">
	<%@ include file="adminsidebar.jsp" %>
	</div>
	
	<div class="container-fluid" id="content">
	   	 	<div class="well text-center">
	   	 		<h2 style="font-weight:bold;">게시글 수 통계</h2>    
	 	 	</div>
	 	 	
	        <div class="col-sm-10">
	          <div class="well container-fluid" style="height:100%;background:white;">
	            <div class="container-fluid">
	            
	            	<div>
	            	<form id="formValue" action="/ad_articlechart/date" method="post">
						<div><h3 style="font-weight:bold;">${boardName}&nbsp;게시글 수 통계</h3></div>
						<select class="form-control col-md-6" style="width:150px" id="boardSelect" name="boardSelect">
				 			<option>게시판 선택</option>
				 			<c:forEach var="board" items="${boardList}">
								<option>${board.boardName}</option>
							</c:forEach>
						</select>
						<button class="btn btn-success" id="btnSearch">검색</button>
					</form>
					</div>
					
					<div class="container-fluid" style="margin-top:20px">
					    <table class="columns container-fluid" style="margin-bottom:10px">
					      <tr class="container-fluid">
					       <td style="padding:10px;height:370px;"><div id="columnchart_values1"></div></td>
					       <td style="padding:10px;height:370px;"><div id="columnchart_values2"></div></td>
					      </tr>
					    </table>
				    </div>
				    
				    <div class="text-center" style="font-weight:bold;margin:0 20% 0 20%;">
				    	<div class="panel panel-success">
					    	<div class="panel-heading">상세 설명</div>
	     					<div class="panel-body"><span style="color:#ff6600">${today}</span>&nbsp;오늘 등록된 게시글 수는 <span style="color:#0066ff">${todayCnt}</span>명입니다.</div>
	     					<div class="panel-body"><span style="color:#ff6600">${thisMonth}</span>월 이번 달의 등록된 게시글 수는 <span style="color:#0066ff">${thisMonthCnt}</span>명입니다.</div>
				    	</div>
				    </div>
				    
				    <div class="text-center">
				  		<a href="/ad_regchart" class="btn btn-warning" style="font-weight:bold">가입자 통계</a>
				    </div>

				</div>	
	          </div>
	        </div>
	 </div>
	 </body>  
	    
	 <script>

		google.charts.load("current", {packages:['corechart']});
	    google.charts.setOnLoadCallback(drawChart1);
	    google.charts.setOnLoadCallback(drawChart2);
	    
	     function drawChart1() {
	    		
	    	 var str = ${monthStr};
	    	 var data = new google.visualization.arrayToDataTable(str);
	    	 
	    	 var options = {
	    		        title: "월 별 등록된 게시글 수 (13개월)",
	    		        width: '100%',
	    		        height: 400,
	    		        bar: {groupWidth: "90%"},
	    		        legend: { position: "none" },
	    		      };
		      
		      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values1"));
		      chart.draw(data, options);
	      }
   	 
	     function drawChart2() {
	
	    	 var str = ${dateStr};
	    	 var data = new google.visualization.arrayToDataTable(str);
	    	 
	    	 var options = {
	    		        title: "일 별 등록된 게시글 수 (31일)",
	    		        width: '100%',
	    		        height: 400,
	    		        bar: {groupWidth: "90%"},
	    		        legend: { position: "none" },
	    		      };
		      
		      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values2"));
		      chart.draw(data, options);
	      }
	  </script>
</html>