<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session="true"%>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="format-detection" content="telephone=no">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="profile" href="http://gmpg.org/xfn/11">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
		<script>
		(function(html){
			html.className = html.className.replace(/\bno-js\b/,'js')
			})(document.documentElement);
		
		$(document).ready(function($){
			/* 동적으로 생성된 게시판의 class에 board를 넣어줘 */
			$(".board").on("click", function(e){
				// 누른 게시판의 boardCode를 가져옴
				var boardCode = $(this).attr('id');
				//hidden으로 넣어둔 inputbox에 value를 게시판의 boardCode로 set
				$("input[name='boardCode']").val(boardCode);
				$("#boardSelect").submit();
			});
		});
		</script>
<title>Smash Sports Matching</title>
<link rel='dns-prefetch' href='//code.jquery.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<link rel='dns-prefetch' href='//s.w.org' />
<link rel="alternate" type="application/rss+xml" title="피드" href="#" />
<link rel="alternate" type="application/rss+xml" title="댓글 피드" href="#" />
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
#logout{
	color:white;
	font-family: 'Nanum Gothic','Open Sans', sans-serif;
     font-size: 14px;
     width:60px;
	cursor:pointer;
}
</style>
<link rel='stylesheet' id='dashicons-css'  href='./resources/css/dashicons.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='post-views-counter-frontend-css'  href='./resources/css/frontend.css?ver=4.7.3' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-fonts-css'  href='https://fonts.googleapis.com/css?family=Montserrat%3A400%2C700%7CInconsolata%3A400&#038;subset=latin%2Clatin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'  href='./resources/css/genericons.css?ver=3.4.1' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-style-css'  href='./resources/css/styleSmash.css?ver=4.7.3' type='text/css' media='all' />
<link rel='stylesheet' id='jquery-ui-css'  href='./resources/jquery-ui.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='unslider-css'  href='./resources/unslider.css' type='text/css' media='all' />
<!--[if lt IE 9]>
<script type='text/javascript' src='./js/html5'></script>
<![endif]-->
<script type='text/javascript' src='./resources/js/jquerySmash.js'></script>
<script type='text/javascript' src='./resources/js/jquery-migrate.min.js'></script>
<script type='text/javascript' src='//code.jquery.com/ui/1.11.4/jquery-ui.min.js'></script>
<script type='text/javascript' src='./resources/js/unslider.js'></script>
<link rel="alternate" type="text/xml+oembed" href="./resources/json/embed.json" />
<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}
</style>
	<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607" type="text/css" media="all">
	<link rel="stylesheet" href="./resources/css/metabrain-editor.css" type="text/css" media="all">
	<script type="text/javascript" src="./resources/js/common.js"></script>
</head>
<body>

<div id="masthead" class="site-header" role="banner"><!-- site-header-menu 영역 호버시 nav_on 클래스 적용   .search_btn 클릭시 search_on 클래스 적용-->
			<div class="hover_bg"></div>
			<!-- 데이터 -->
			<form role="form" action="m_board" method="GET" id="boardSelect">
				<input type="hidden" name="boardCode" value="bo2">
			</form>
			<!-- 데이터 -->
			<!-- 서치박스 -->
			<div class="head_searchbx">
				<div class="max_container">
					<label for="head_search">검색</label>
					<div class="search_anibx">
						<input type="text" class="textbx" id="head_search" placeholder="검색어를 입력해주세요.">
						<input type="submit" class="submitbx" value="검색하기">
						<a href="#;" class="close_btn">close</a>
					</div>
				</div>
			</div>
			<!-- 서치박스 -->
			<!-- 상단헤더 -->
			<div class="top_headbx">
				<div class="max_container">
					<!-- SNS -->
					<div class="head_sns_bx">
						<ul>
							<li class="instargram"><a href="https://www.instagram.com/" target="_blank">instargram</a></li>
							<li class="facebook"><a href="https://www.facebook.com/" target="_blank">facebook</a></li>
							<li class="youtube"><a href="http://www.youtube.com/" target="_blank">youtube</a></li>
						</ul>
					</div>
					<!-- .SNS -->
					<!-- 링크박스 -->
					<div class="head_linkbx">
						<ul>
							<c:if test="${empty sessionScope.login}">
							<li><a href="/login">LOGIN</a></li>
							<li><a href="/m_signup">JOIN</a></li>
							</c:if>
							
							<c:if test="${not empty sessionScope.login}">
							<li><a href="/m_mypage"><c:out value="${sessionScope.login}"/>님 환영합니다.</a></li>
							
							<li><a href="/logout">LOGOUT</a></li>
							</c:if>
						</ul>
					</div>
					<!-- .링크박스 -->
					
				</div>
			</div>
			<!-- .상단헤더 -->
			<!-- 하단헤더 -->
			<div class="nav_headbx">
				<div class="max_container">
					<div id="site-header-menu" class="site-header-menu">
						<nav id="site-navigation" class="main-navigation" role="navigation" aria-label="기본 메뉴">
							<div class="menu-main_nav-container">
							<ul id="menu-main_nav-1" class="primary-menu">
							<li class="nav_greatu menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-91">
							<a href="index.jsp">Home</a>
							<ul class="sub-menu">
								<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-92 board" id="bo2"><a href="#">공지사항</a></li>
								<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-95 board"><a href="#">자유게시판</a>
									<ul class="sub-menu">
										<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7014"><a href="#">Q&#038;A</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li class="nav_about menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-1167"><a href="#">Smash</a>
						<ul class="sub-menu">
							<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-97"><a href="#">Smash 소개</a></li>
							<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-99"><a href="#">Smash 이용 방법</a>
						<ul class="sub-menu">
					<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-7020"><a href="#">연혁</a></li>
	</ul>
</li>
</li>
</ul>
</li>
<li class="nav_athlete menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-103"><a href="#">축구</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">축구 게시판</a></li>
</ul>
</li>
<li class="nav_match menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-105"><a href="#">야구</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">야구 게시판</a></li>
</ul>
</li>
<li class="nav_media menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-110"><a href="#">배드민턴</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">배드민턴 게시판</a></li>
</ul>
</li>
<li class="nav_youth menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-114"><a href="#">농구</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">농구 게시판</a></li>
</ul>
</li>
<li class="nav_management menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-119"><a href="#">e-Sports</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">매칭 게시판</a></li>
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-22305"><a href="#">e-Sports 게시판</a></li>
</ul>
</li>
<li class="nav_quick menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1161"><a href="#;">Quick Menu</a>
<ul class="sub-menu">
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-123"><a target="_blank" href="">고객센터</a></li>
</ul>
</li>
</ul></div>								</nav><!-- .main-navigation -->
													</div><!-- .site-header-menu -->
						
				</div>
			</div>
			<!-- .하단헤더 -->
		</div>
<!-- .헤더 -->
</body>


<script>

	
</script>

</html>