<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko-KR">
<head>
<title></title>

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

.max_container > ul{
	padding: 0 0 0 40%;
}
.top{
	padding: 0 0 0 87%;
}
</style>
<link rel='stylesheet' id='dashicons-css'  href='./resources/css/dashicons.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='post-views-counter-frontend-css'  href='./resources/css/frontend.css?ver=4.7.3' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-fonts-css'  href='https://fonts.googleapis.com/css?family=Montserrat%3A400%2C700%7CInconsolata%3A400&#038;subset=latin%2Clatin-ext' type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'  href='./resources/css/genericons.css' type='text/css' media='all' />
<link rel='stylesheet' id='twentysixteen-style-css'  href='http://gangwon-fc.com/wp-content/themes/gangwonfc/style.css?ver=4.7.3' type='text/css' media='all' />
<link rel='stylesheet' id='jquery-ui-css'  href='//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='unslider-css'  href='./resources/css/unslider.css' type='text/css' media='all' />
<link rel='stylesheet' id='metabrain-editor-custom-css-css'  href='./resources/css/custom-editor.css' type='text/css' media='all' />
<script type='text/javascript' src='./resources/js/jquery.js'></script>
<script type='text/javascript' src='./resources/js/jquery-migrate.min.js'></script>
<script type='text/javascript' src='//code.jquery.com/ui/1.11.4/jquery-ui.min.js'></script>
<script type='text/javascript' src='./resources/js/unslider.js'></script>
<script type='text/javascript' src='./resources/js/rangy-core.js'></script>
<script type='text/javascript' src='./resources/js/metabrain-editor-0.1.1.js'></script>
<script type='text/javascript' src='./resources/js/custom.js'></script>
<style type="text/css">.recentcomments a{display:inline !important;padding:0 !important;margin:0 !important;}</style>
<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607" type="text/css" media="all">
<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/metabrain-editor/css/metabrain-editor.css" type="text/css" media="all">
<script type="text/javascript" src="./resources/js/common.js"></script>
</head>

<body class="page-template page-template-templates page-template-board-write page-template-templatesboard-write-php page page-id-298 logged-in group-blog write_edit">
<div class="site_wrap">
<div id="page" class="site">
	<div class="mobile_nav_onbg"></div>
	<div class="site-inner">
		<!-- 헤더 -->
		<div id="masthead" class="site-header" role="banner">
			<div class="hover_bg"></div>
			<h1 class="logo"><a href="#"><img src="" alt="" /></a></h1>
			<!-- 서치박스 -->
			<div class="head_searchbx">
				<div class="max_container">
					<label for="head_search">검색</label>
					<div class="search_anibx">
						<input type="text" class="textbx" id="head_search" placeholder="검색어를 입력해주세요.">
						<input type="submit" class="submitbx" value="검색하기">
						<a href="#" class="close_btn">close</a>
					</div>
				</div>
			</div>
			<!-- .서치박스 -->
			<!-- 상단헤더 -->
			<div class="top_headbx">
				<div class="max_container">
					<!-- 모바일 메뉴버튼 -->
					<button class="m_menubox">
						<span class="bar first"></span>
						<span class="bar center"></span>
						<span class="bar last"></span>
					</button>
					<!-- .모바일 메뉴버튼 -->
					<!-- SNS -->
					<div class="head_sns_bx">
						<ul>
							<li class="instargram"><a href="https://www.instagram.com/">instargram</a></li>
							<li class="facebook"><a href="https://www.facebook.com/" target="_blank">facebook</a></li>
							<li class="youtube"><a href="http://www.youtube.com/" target="_blank">youtube</a></li>
						</ul>
					</div>
					<!-- .SNS -->
					<!-- 링크박스 -->
					<div class="head_linkbx"><!-- 사이트맵 클릭시 active 클래스 적용 -->
						<ul>
							<li><a href="#">LOGOUT</a></li>
							<li><a href="#">MY PAGE</a></li>
						</ul>
					</div>
					<!-- .링크박스 -->
					<!-- 서치버튼 -->
					<!--<div class="search_btn"><a class="search_item" href="#;">검색하기</a></div>-->
					<!-- .서치버튼 -->
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
							<a href="#">Home</a>
							<ul class="sub-menu">
								<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-92"><a href="#">공지사항</a></li>
								<li class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-95"><a href="freeboard.jsp">자유게시판</a>
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
	<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-123"><a target="_blank" href="#">고객센터</a></li>
</ul>
</li>
</ul>
</div>
</nav><!-- .main-navigation -->
</div><!-- .site-header-menu -->						
</div>
			</div>
			<!-- .하단헤더 -->
		</div>
		<!-- .헤더 -->
		<div id="" class="site-content">
<!-- 상단배너 -->

<div class="pg_topbannerbx">
	<div class="bg"></div>
	<div class="max_container">
		<!-- 타이틀 박스 -->
		<div class="title_bx">
			<h2 class="entry-title">글쓰기</h2>
						<!-- 빵가루 -->
			<div class="breadcrumb">
				<ul>
					<li class="home"><a class="item" href="index.jsp">home</a></li>						
					<li><a class="item" href="">home</a></li>						
				</ul>
			</div>
			<!-- .빵가루 -->
					</div>
		<!-- .타이틀 박스 -->
	</div>
</div>
<!-- .상단배너 -->
<div id="primary" class="content-area">
	<div id="main" class="site-main" role="main">
		<div class="content_rowbx">
			<div class="max_container">
				
				<article id="post-298" class="post-298 page type-page status-publish hentry">



					<div class="entry-content">
						<!-- 컨텐츠 시작 -->
						<!-- 싱글페이지 -->
						<!--  데이터  -->
						<div class="single_pgbx single_edit">
							<form id="formWrite">
								<input type="hidden" name="job" value="articleAdd">
								<input type="hidden" name="userId" value="${sessionScope.id }" />
								<input type="hidden" name="content" id="content" value=""/>
								<input type="hidden" name="boardCode" value="${boardCode}" />
								<input type="hidden" name="articleHits" value="0">
								<!--<input type="hidden" name="write_nonce" value="1fe20652f2"/>
								<input type="hidden" name="status" value="publish">
								<input type="hidden" name="category" value="14">-->
								<input type="hidden" name="action" value="write_board"> 
						<!--  데이터  -->

								<!--  싱글페이지 헤더 -->
								<div class="single_headbx two" >
									<div class="single_tblbx">
										<div class="title_bx"><input type="text" name="articleTitle" class="single_edit_title" placeholder="제목을 입력해주세요." value=""></div>
									</div>
								</div>
								<!--  .싱글페이지 헤더-->
								<!-- 싱글컨텐츠 -->
								<div class="single_contbx">
									<div class="single_container">
										<div>
											<textarea name="Content" id="articleContent"></textarea>
										</div>
										<!-- <div class="meta_editbx">사이드 뷰박스 클릭시 fix_view 클래스 추가
											contentbx
											<div class="cont_edit_bx" id="content_editor"></div>
											<textarea name="articleContent" style="display:none"></textarea>
											.contentbx
										</div> -->
									</div>
								</div>
								<!-- .싱글컨텐츠 -->
								<!-- 목록버튼 -->
								<div class="basic_btnbx">
									<a class="basic_btn btn_save"><span class="text">글등록</span></a>
								</div>
								<!-- .목록버튼 -->
							</form>
						</div>
						<!-- .싱글페이지 -->
						<!-- .컨텐츠 시작 -->
					</div><!-- .entry-content -->
				</article><!-- #post-## -->
			</div>
		</div>
	</div><!-- .site-main -->
</div>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
jQuery(document).ready(function($){
	
	$('.btn_save').on('click', function(e){
		/* var $form = $(this);
		var content = $form.find('#content_editor').text();
		$form.find('textarea[name="content"]').val(content);
		$("#content").val(content);
		var $form = $("#formWrite");
		$form.attr('method', 'POST');
		$form.attr('/m_addarticle')
		$form.submit(); */
		var content = $("#articleContent").val();
		var $form= $("#formWrite");
		$form.attr('method', 'POST');
		$form.attr('action','/m_addarticle');
		alert(content);
		$("#content").val(content);
		
		$form.submit();
		//$('#formWrite').trigger('submit');
	});

	
	  //$('#formWrite').submit(function(e){
		//var $form = $(this);
		/* var content = $form.find('#articleContent').text(); */
		/* $form.find('textarea[name="content"]').val(content);
		$("#content").val(content); */
		
//		$.ajax({
	//		url: $form.attr('action'),
		//	type: 'POST',
//			data: $form.serialize(),
//			success: function(data){
//				if(data.success){
					//console.log	(data.location);	
					//if(data.location){
					//	location.replace(data.location);
					//}
//
	//				var msg = $form.find('input[name="action"]').val() == 'write_board' ? '등록되었습니다.' : '수정되었습니다.';
		//			alert(msg);
			//	}
//				else if(data.msg){
	//				alert(data.msg);
		//
			//		if(data.focus){
				//		$form.find('*[name="'+data.focus+'"][type!="hidden"]').focus();
					//}
//				}
	//		}
//		});

	//	e.stopPropagation();
		//e.preventDefault();
	//}); 
});	
</script>

		</div><!-- .site-content -->

		<div id="colophon" class="site-footer" role="contentinfo">
				<!-- 푸터네비게이션 -->
			<div class="footer_navbx">
				<div class="max_container">
					<ul>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">이용약관</a></li>
						<li><a href="#">이메일무단수집거부</a></li>
					</ul>
				</div>
			</div>
			<!-- .푸터네비게이션 -->
					<!-- 푸터컨텐츠 -->
			<div class="footer_contbx">
				<div class="max_container contain">
					<h2 class="footer_logo"><a href="#"><img src="" alt="" /></a></h2>
					<div class="cont">
						<div class="`_infobx">
							<span class="item">사무실 : 서울 관악구 관악로24길 14 렉토피아</span>
							<span class="item">TEL 070-1234-5678</span>
						</div>
						<p class="copyright">Copyright 2018 <span class="color">©Fourward</span> ALL RIGHTS RESERVED. </p>
					</div>
				</div>
			</div>
			<!-- .푸터컨텐츠 -->
		</div><!-- .site-footer -->
	</div><!-- .site-inner -->
</div><!-- .site -->
	<!--[if lte IE 8]>
	<style>
		.attachment:focus {
			outline: #1e8cbe solid;
		}
		.selected.attachment {
			outline: #1e8cbe solid;
		}
	</style>
	<![endif]-->

	
<script type='text/javascript'>
</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/js/functions.js?ver=20160816'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/functions/kmcis/kmcis.js'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-content/themes/gangwonfc/functions/validation/validation.js'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/wp-embed.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/underscore.min.js?ver=1.8.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/shortcode.min.js?ver=4.7.3'></script>
<script type='text/javascript'>

</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/utils.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/backbone.min.js?ver=1.2.3'></script>
<script type='text/javascript'>

</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/wp-util.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/wp-backbone.min.js?ver=4.7.3'></script>
<script type='text/javascript'>

</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/media-models.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/plupload/plupload.full.min.js?ver=2.1.8'></script>
<!--[if lt IE 8]>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/json2.min.js?ver=2015-05-03'></script>
<![endif]-->
<script type='text/javascript'>
/* <![CDATA[ */
var pluploadL10n = {"queue_limit_exceeded":"\ub108\ubb34 \ub9ce\uc740 \ud30c\uc77c\uc744 \uc5c5\ub85c\ub4dc\ud588\uc2b5\ub2c8\ub2e4.","file_exceeds_size_limit":"\uc774 \uc0ac\uc774\ud2b8\uc5d0 \ud5c8\uc6a9\ub41c \ucd5c\ub300 \uc5c5\ub85c\ub4dc \uc6a9\ub7c9\uc744 %s \ucd08\uacfc \ud588\uc2b5\ub2c8\ub2e4.","zero_byte_file":"\ud30c\uc77c\uc774 \ube44\uc5b4\uc788\uc2b5\ub2c8\ub2e4. \ub2e4\ub978 \uac83\uc73c\ub85c \uc62c\ub824\uc8fc\uc2ed\uc2dc\uc624.","invalid_filetype":"\uc774 \ud30c\uc77c\ud615\uc2dd\uc740 \ud5c8\uc6a9\ud558\uc9c0 \uc54a\uc2b5\ub2c8\ub2e4. \ub2e4\ub978 \uac83\uc73c\ub85c \uc62c\ub824\uc8fc\uc2ed\uc2dc\uc624.","not_an_image":"\uc774 \ud30c\uc77c\uc740 \uc774\ubbf8\uc9c0 \ud30c\uc77c\uc774 \uc544\ub2d9\ub2c8\ub2e4. \ub2e4\ub978 \uac83\uc73c\ub85c \uc62c\ub824\uc8fc\uc138\uc694.","image_memory_exceeded":"\uba54\ubaa8\ub9ac\uac00 \ucd08\uacfc\ud588\uc2b5\ub2c8\ub2e4. \uc791\uc740 \ud30c\uc77c\ub85c \uc62c\ub824\uc8fc\uc138\uc694.","image_dimensions_exceeded":"\uc774\uac83\uc740 \ucd5c\ub300 \uc0ac\uc774\uc988\ubcf4\ub2e4 \ud07d\ub2c8\ub2e4. \ub2e4\ub978 \uac83\uc73c\ub85c \uc62c\ub824\uc8fc\uc138\uc694.","default_error":"\uc5c5\ub85c\ub4dc\uc911\uc5d0 \uc624\ub958\uac00 \ubc1c\uc0dd\ud588\uc2b5\ub2c8\ub2e4. \ub098\uc911\uc5d0 \ub2e4\uc2dc \uc2dc\ub3c4\ud558\uc2ed\uc2dc\uc624.","missing_upload_url":"\uc124\uc815\uc624\ub958. \uc11c\ubc84 \uad00\ub9ac\uc790\uc640 \uc0c1\uc758\ud558\uc2ed\uc2dc\uc624.","upload_limit_exceeded":"\ud558\ub098\uc758 \ud30c\uc77c\ub9cc \uc5c5\ub85c\ub4dc\ud560 \uc218 \uc788\uc2b5\ub2c8\ub2e4.","http_error":"HTTP \uc624\ub958.","upload_failed":"\uc5c5\ub85c\ub4dc \uc2e4\ud328.","big_upload_failed":"\uc774 \ud30c\uc77c\uc744 %1$s\ube0c\ub77c\uc6b0\uc800 \uc5c5\ub85c\ub354%2$s\ub97c \uc0ac\uc6a9\ud558\uc5ec \uc5c5\ub85c\ub4dc \ud574\ubcf4\uc138\uc694.","big_upload_queued":"\uc6f9\ube0c\ub77c\uc6b0\uc800 \uc0ac\uc6a9\uc2dc \ub2e4\uc911 \ud30c\uc77c \uc5c5\ub85c\ub354\uc5d0\uc11c \ucd5c\ub300 \uc5c5\ub85c\ub4dc \ud06c\uae30\ub97c %s \ucd08\uacfc\ud588\uc2b5\ub2c8\ub2e4.","io_error":"IO \uc624\ub958.","security_error":"\ubcf4\uc548 \uc624\ub958.","file_cancelled":"\ud30c\uc77c\uc774 \ucde8\uc18c\ub418\uc5c8\uc2b5\ub2c8\ub2e4.","upload_stopped":"\uc5c5\ub85c\ub4dc\uac00 \uc911\ub2e8\ub428.","dismiss":"\ubb34\uc2dc","crunching":"\ucc98\ub9ac\uc911 \u2026","deleted":"\ud734\uc9c0\ud1b5\uc73c\ub85c \uc774\ub3d9\ud568.","error_uploading":"\u201c%s\u201d \ub294 \uc5c5\ub85c\ub4dc\ub97c \uc2e4\ud328\ud588\uc2b5\ub2c8\ub2e4."};
var _wpPluploadSettings = {"defaults":{"runtimes":"html5,flash,silverlight,html4","file_data_name":"async-upload","url":"\/wp-admin\/async-upload.php","flash_swf_url":"http:\/\/gangwon-fc.com\/wp-includes\/js\/plupload\/plupload.flash.swf","silverlight_xap_url":"http:\/\/gangwon-fc.com\/wp-includes\/js\/plupload\/plupload.silverlight.xap","filters":{"max_file_size":"83886080b","mime_types":[{"extensions":"jpg,jpeg,jpe,gif,png,bmp,tiff,tif,ico,asf,asx,wmv,wmx,wm,avi,divx,flv,mov,qt,mpeg,mpg,mpe,mp4,m4v,ogv,webm,mkv,3gp,3gpp,3g2,3gp2,txt,asc,c,cc,h,srt,csv,tsv,ics,rtx,css,vtt,dfxp,mp3,m4a,m4b,ra,ram,wav,ogg,oga,mid,midi,wma,wax,mka,rtf,js,pdf,class,tar,zip,gz,gzip,rar,7z,psd,xcf,doc,pot,pps,ppt,wri,xla,xls,xlt,xlw,mdb,mpp,docx,docm,dotx,dotm,xlsx,xlsm,xlsb,xltx,xltm,xlam,pptx,pptm,ppsx,ppsm,potx,potm,ppam,sldx,sldm,onetoc,onetoc2,onetmp,onepkg,oxps,xps,odt,odp,ods,odg,odc,odb,odf,wp,wpd,key,numbers,pages,hwp,ai"}]},"multipart_params":{"action":"upload-attachment","_wpnonce":"d937c456a2"}},"browser":{"mobile":false,"supported":true},"limitExceeded":false};
/* ]]> */
</script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/plupload/wp-plupload.min.js?ver=4.7.3'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/ui/core.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/ui/widget.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/ui/mouse.min.js?ver=1.11.4'></script>
<script type='text/javascript' src='http://gangwon-fc.com/wp-includes/js/jquery/ui/sortable.min.js?ver=1.11.4'></script>
<script type='text/javascript'>
</script>


</div>

</body>
</html>
