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
	
	<div id="content"  class="container-fluid">
	   	 	<div class="well text-center">
	   	 		<h2 style="font-weight:bold;">가입자 수 통계</h2>    
	 	 	</div>
	 	 	
	        <div class="col-sm-10">
	          <div class="well container-fluid" style="height:100%;background:white;">
	            <div class="container-fluid">
	           		 <div><h3 style="font-weight:bold;">가입자 수 통계</h3></div>
	           		
				     <div class="container-fluid">
					     <table class="columns container-fluid" style="margin-bottom:10px">
					      <tr class="container-fluid">
					       <td style="padding:10px;height:370px;border:1px solid #ccc"><div id="linechart_material1"></div></td>
					       <!-- <td style="padding:10px;height:370px;border:1px solid #ccc"><div id="linechart_material2"></div></td> -->
					    </table>
				    </div>
				    
				    <div class="text-center" style="font-weight:bold;margin:0 20% 0 20%;">
				    	<div class="panel panel-success">
					    	<div class="panel-heading">상세 설명</div>
	     					<div class="panel-body">1월의 가입자 수는 8명입니다.</div>
				    	</div>
				    </div>
				    
				    <div class="text-center">
				  		<a href="/ad_articlechart" class="btn btn-warning" style="font-weight:bold">게시글 통계</a>
				    </div>

				</div>	
	          </div>
	        </div>
	 </div>
	 </body>     
	 
	  <script>
	  /* google.charts.load('current', {'packages':['line']});
      google.charts.setOnLoadCallback(drawChart);

    function drawChart() {

      var data = new google.visualization.DataTable();
      data.addColumn('number', 'Day');
      data.addColumn('number', 'Guardians of the Galaxy');
      data.addColumn('number', 'The Avengers');
      data.addColumn('number', 'Transformers: Age of Extinction');

      data.addRows([
        [1,  37.8, 80.8, 41.8],
        [2,  30.9, 69.5, 32.4],
        [3,  25.4,   57, 25.7],
        [4,  11.7, 18.8, 10.5],
        [5,  11.9, 17.6, 10.4],
        [6,   8.8, 13.6,  7.7],
        [7,   7.6, 12.3,  9.6],
        [8,  12.3, 29.2, 10.6],
        [9,  16.9, 42.9, 14.8],
        [10, 12.8, 30.9, 11.6],
        [11,  5.3,  7.9,  4.7],
        [12,  6.6,  8.4,  5.2],
        [13,  4.8,  6.3,  3.6],
        [14,  4.2,  6.2,  3.4]
      ]);

      var options = {
        chart: {
          title: 'Box Office Earnings in First Two Weeks of Opening',
          subtitle: 'in millions of dollars (USD)'
        },
        width: 900,
        height: 500,
        axes: {
          x: {
            0: {side: 'top'}
          }
        }
      };

      var chart = new google.charts.Line(document.getElementById('line_top_x'));

      chart.draw(data, google.charts.Line.convertOptions(options));
    }	*/
    $(document).ready(function(){
    	 $.ajax({
            url:'/ad_regchart/date',
            type:'POST',
            headers: {
            	Accept : "application/json; charset=utf-8", "Content-Type": "application/json; charset=utf-8"
            },
            dataType: "JSON",
            data:params,
            success:function(result){
  			    	 	google.charts.load('current', {'packages':['line']});
  					    google.charts.setOnLoadCallback(function(){
  					    	drawchart(result);
  					    });
            }
  		});

		function drawChart(result){
			var data = google.visualization.DataTable();
			data.addColumn('string','날짜');
			data.addColumn('number','가입자 수');
			
			var dataArray = [];
			$.each(lists, function(i, item){
		    	   dataArray.push([item.date, item.count]);
		    });
			
			data.addRows(dataArray);
			
			var options = {
		    	      title: "일 별 가입자 수",
		    	      width: 400, // 넓이 옵션
		    	      height: 300, // 높이 옵션
		    	};
			
			var chart = new google.visualization.Line(document.getElementById('linechart_material1'));
	    	chart.draw(view, options);
		}
    });
    
    /*  google.charts.setOnLoadCallback(drawChart2);
     function drawChart2() {

    	var data = new google.visualization.DataTable();
        //그래프에 표시할 컬럼 추가
        data.addColumn('string' , '날짜');
        data.addColumn('number' , '가입자 수');
		
        var dataRow = [];
        var datelist = '${datelist}';
 
        for(var i = 0; i <= 30; i++){ //랜덤 데이터 생성
          var date = datelist[i].date;
          var count = datelist[i].count; 

          dataRow = [date, count];
          data.addRow(dataRow);
        }

		var options = {
			      chart: {
			        title: '일 별 가입자 수 통계',
			      },
			      width: '100%',
			      height: 350
			  };
        var chart = new google.charts.Line(document.getElementById('linechart_material2'));

        chart.draw(data, google.charts.Line.convertOptions(options));
      }   */
      
    </script>
	 
	
</html>