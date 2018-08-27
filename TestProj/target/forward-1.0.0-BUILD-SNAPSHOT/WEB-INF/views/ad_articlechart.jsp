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
	   	 		<h2 style="font-weight:bold;">&nbsp;통계</h2>    
	 	 	</div>
	 	 	
	        <div class="col-sm-10">
	          <div class="well container-fluid" style="height:100%;background:white;">
	            <div class="container-fluid">
	            
	            	<div>
		           	<form id="formValue" method="POST">
						<div><h3 style="font-weight:bold;">${board.boardName}&nbsp;게시글 수 통계</h3></div>
						  
						<input type="hidden" name="boardName" value="${boardName}"/>
						<select class="form-control col-md-6" style="width:150px" id="boardSelect" name="boardSelect">
							<option>게시판 선택</option>
							<c:forEach var="board" items="${boardList}">
								<option>${board.boardName}</option>
							</c:forEach>
						</select>
					</form>
					</div>
					
					<div class="container-fluid">
					    <table class="columns" style="margin-bottom:10px">
					      <tr style="display: flex">
					       <td style="height:400px;margin:0 10px;"><div id="columnchart_values1"></div></td>
					       <td style="height:400px;margin:0 10px;"><div id="columnchart_values2"></div></td>
					      </tr>
					    </table>
				    </div>
				    
				    <div class="text-center" style="font-weight:bold;margin:0 20% 0 20%;">
				    	<div class="panel panel-success">
					    	<div class="panel-heading">상세 설명</div>
	     					<div class="panel-body">1월의 가입자 수는 8명입니다.</div>
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
	      var data = google.visualization.arrayToDataTable([
	        ["articleCnt", "게시글 수", { role: "style" } ],
	        ["1", 2, "gold"],
	        ["2", 8, "gold"],
	        ["3", 10, "gold"],
	        ["4", 19, "gold"],
	        ["5", 11, "gold"],
	        ["6", 11, "gold"],
	        ["7", 22, "gold"],
	        ["8", 10, "gold"],
	        ["9", 8, "gold"],
	        ["10", 2, "gold"],
	        ["11", 35, "gold"],
	        ["12", 10, "gold"]
	      ]);

	      var view = new google.visualization.DataView(data);
	      view.setColumns([0, 1,
	                       { calc: "stringify",
	                         sourceColumn: 1,
	                         type: "string",
	                         role: "annotation" },
	                       2]);

	      var options = {
	        title: "",
	        width: '100%',
	        height: 400,
	        bar: {groupWidth: "90%"},
	        legend: { position: "none" },
	      };
	      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values1"));
	      chart.draw(view, options);
	  }
	    
	    function drawChart2() {
		      var data = google.visualization.arrayToDataTable([
		        ["articleCnt", "게시글 수", { role: "style" } ],
		        ["1", 2, "gold"],
		        ["2", 8, "gold"],
		        ["3", 10, "gold"],
		        ["4", 19, "gold"],
		        ["5", 11, "gold"],
		        ["6", 11, "gold"],
		        ["7", 22, "gold"],
		        ["8", 10, "gold"],
		        ["9", 8, "gold"],
		        ["10", 2, "gold"],
		        ["11", 35, "gold"],
		        ["12", 10, "gold"],
		        ["13", 10, "gold"],
		        ["14", 40, "gold"],
		        ["15", 20, "gold"],
		        ["16", 30, "gold"],
		        ["17", 50, "gold"],
		        ["18", 20, "gold"],
		        ["19", 30, "gold"],
		        ["20", 20, "gold"],
		        ["21", 20, "gold"],
		        ["22", 30, "gold"],
		        ["23", 30, "gold"],
		        ["24", 30, "gold"],
		        ["25", 30, "gold"],
		        ["26", 30, "gold"],
		        ["27", 30, "gold"],
		        ["28", 30, "gold"],
		        ["29", 30, "gold"],
		        ["30", 30, "gold"]
		      ]);

		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "",
		        width: '100%',
		        height: 400,
		        bar: {groupWidth: "90%"},
		        legend: { position: "none" },
		      };
		      var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values2"));
		      chart.draw(view, options);
		  }
	  </script>
</html>