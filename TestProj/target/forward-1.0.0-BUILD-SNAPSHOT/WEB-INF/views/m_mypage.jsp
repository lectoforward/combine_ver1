<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko-KR">
<%@ include file="userheader.jsp" %>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	
	<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>
<title>SMASH</title>

<link rel='dns-prefetch' href='//code.jquery.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<style type="text/css">
img.wp-smiley,
img.emoji {
	display: inline !important;
	border: none !important;
	box-shadow: none !important;
	height: 1em !important;
	width: 1em !important;
	margin: 0 .07em !important;
	vertical-align: -0.1em !important;
	background: none !important;
	padding: 0 !important;
}
 
.contain{
	width: 100%;
	text-align:center;
} 
.footer_navbx{

}
.max_container > ul{
	padding: 0 0 0 40%;
}
</style>
<link rel='stylesheet' id='dashicons-css'  href='./resources/css/dashicons.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='post-views-counter-frontend-css'  href='./resources/css/frontend.css' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-fonts-css'  href='./resources/css/css.css' type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'  href='./resources/css/genericons.css' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-style-css'  href='./resources/css/style.css' type='text/css' media='all' />
<link rel='stylesheet' id='jquery-ui-css'  href='//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='unslider-css'  href='./resources/css/unslider.css' type='text/css' media='all' />
<script type='text/javascript' src='./resources/js/jquery.js'></script>
<script type='text/javascript' src='./resources/js/jquery-migrate.min.js'></script>
<script type='text/javascript' src='//code.jquery.com/ui/1.11.4/jquery-ui.min.js'></script>
<script type='text/javascript' src='./resources/css/unslider.js'></script>
<link rel="alternate" type="application/json+oembed" href="./resources/json/embed.json" />
<link rel="alternate" type="text/xml+oembed" href="./resources/json/embed.json" />
		<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
	<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607" type="text/css" media="all">
	<link rel="stylesheet" href="./resources/css/metabrain-editor.css" type="text/css" media="all">
	<script type="text/javascript" src="./resources/js/common.js"></script>
</head>

<body style="background:white;">
	
<div class="pg_topbannerbx">
	<div class="bg"></div>
	<div class="max_container">
		<!-- 타이틀 박스 -->
		<div class="title_bx">
			<h2 class="entry-title">마이페이지</h2>
						<!-- 빵가루 -->
			<div class="breadcrumb">
				<ul>
					<li class="home"><a class="item" href="/index">home</a></li>						
					<li><a class="item" href="/m_mypage">마이페이지</a></li>						
				</ul>
			</div>
			<!-- .빵가루 -->
		</div>
		<!-- .타이틀 박스 -->
	</div>
</div>
<!-- .헤더 -->
<div id="primary" class="content-area">
	<div id="main" class="site-main" role="main">
		<div class="content_rowbx">
			<div class="max_container">
				<article id="post-42" class="post-42 page type-page status-publish hentry">
					<div class="entry-content">
						<!-- 컨텐츠 시작 -->
	
						<div class="pg_headbx align_c">
							<div class="basic_s_bx">
								<h5 style="font-size:30pt">내가 작성한 글</h5>
							</div>
						</div>
						<!-- 리스트 -->
			
						
						<div>
							<table class="tbl_basiclist free_board" width="100%" cellspacing="1" cellpadding="0" border="0">
							<caption>자유게시판</caption>
							<tr>
							<td>
							<table>
								<colgroup>
									<col style="width: 15%;">
									<col style="width: 60%;">
									<col style="width: 16%;">
									<col style="width: 8%;">
									<col style="width: 3%;">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">게시판명</th>
										<th scope="col">제목</th>
										<th scope="col">작성일</th>
										<th scope="col">조회수</th>
										<th scope="col">&nbsp;</th>
									</tr>
								</thead>
							</table>
							</td>
							</tr>
							<tr>
							<td>
							<div style="width:100%; height:600px; overflow:scroll">
							<table>
								<colgroup>
									<col style="width: 15%;">
									<col style="width: 60%;">
									<col style="width: 14%;">
									<col style="width: 11%;">
								</colgroup>
								<tbody>
								<c:forEach var="memberArticleVO" items="${memberArticleList}">
									<tr>
										<th class="step1" scope="row" id="boardName">${memberArticleVO.boardName}</th>
										<td class="step3" id="articleTitle">${memberArticleVO.articleTitle}</td>
										<!-- <span class="comment">[4]</span> -->
										<td class="step4">${memberArticleVO.articleDate}</td>
										<td class="step5">${memberArticleVO.articleHits}</td>
									</tr>
								</c:forEach>								
							</tbody>
						</table>
						</div>
						</td>
						</tr>
					</table>
				</div>
				<!-- .리스트 -->
								<!-- 글쓰기 버튼 -->
				<div class="basic_btnbx">
					<a href="/m_modify" class="basic_btn"><span class="text">회원 정보 수정</span></a>
				</div>
				<!--. 글쓰기 버튼 -->
				
			</div><!-- .entry-content -->
		</article><!-- #post-## -->
	</div>
</div>
</div><!-- .site-main -->
</div><!-- .content-area -->
</body>
</html>