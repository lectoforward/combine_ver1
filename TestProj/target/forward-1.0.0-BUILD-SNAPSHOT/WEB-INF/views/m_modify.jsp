<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ include file="userheader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%-- <%@ include file="/userheader.jsp" %> --%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection" content="telephone=no">
<title>회원가입</title>
<link rel='dns-prefetch' href='//code.jquery.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
<style type="text/css">
img.wp-smiley, img.emoji {
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

.max_container {
	width: 100%;
	text-align: center;
}

.max_container>ul {
	padding: 0 0 0 40%;
}

.top {
	padding: 0 0 0 87%;
}

.radio_bx {
	padding: 0 50% 0 0;
}
</style>
<link rel='stylesheet' id='dashicons-css'
	href='./resources/css/dashicons.min.css' type='text/css' media='all' />
<link rel='stylesheet' id='post-views-counter-frontend-css'
	href='./resources/css/frontend.css?ver=4.7.3' type='text/css'
	media='all' />
<link rel='stylesheet' id='twentysixteen-fonts-css'
	href='https://fonts.googleapis.com/css?family=Montserrat%3A400%2C700%7CInconsolata%3A400&#038;subset=latin%2Clatin-ext'
	type='text/css' media='all' />
<link rel='stylesheet' id='genericons-css'
	href='./resources/css/genericons.css?ver=3.4.1' type='text/css'
	media='all' />
<link rel='stylesheet' id='twentysixteen-style-css'
	href='./resources/css/styleSmash.css?ver=4.7.3' type='text/css'
	media='all' />
<!-- <link rel='stylesheet' id='jquery-ui-css' href='./resources/jquery-ui.min.css'
	type='text/css' media='all' /> -->
<!-- <link rel='stylesheet' id='unslider-css' href='./resources/unslider.css'
	type='text/css' media='all' /> -->
<!--[if lt IE 9]>
<script type='text/javascript' src='./js/html5'></script>
<![endif]-->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<script type='text/javascript' src='./resources/js/jquerySmash.js'></script>
<script type='text/javascript'
	src='./resources/js/jquery-migrate.min.js'></script>
<script type='text/javascript'
	src='//code.jquery.com/ui/1.11.4/jquery-ui.min.js'></script>
<script type='text/javascript' src='./resources/js/unslider.js'></script>
<link rel="alternate" type="text/xml+oembed"
	href="./resources/json/embed.json" />
<style type="text/css">
.recentcomments a {
	display: inline !important;
	padding: 0 !important;
	margin: 0 !important;
}
</style>

<link rel="stylesheet"
	href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607"
	type="text/css" media="all">
<link rel="stylesheet" href="./resources/css/metabrain-editor.css"
	type="text/css" media="all">
<script type="text/javascript" src="./resources/js/common.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function(e) {

		//var idck = 0;
		var nicknameck = 0;
		var phoneck = 0;
		var mailck=0;

		/* jQuery("#checkId").bind("click", function(e) {

			var memberId = $("#memberId").val();
			if (memberId.length == 0) {
				alert("아이디를 입력해주세요.");
				$("#memberId").focus();
				return false;
			}

			$.ajax({
				async : true,
				type : 'POST',
				data : memberId,
				url : "/checkid.do",
				dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {

					if (data.cnt > 0) {
						alert("아이디가 존재합니다. 다른 아이디를 입력해주세요.");
						$("#memberId").val("");
						jQuery("#memberId").focus();
					} else {
						alert("사용가능한 아이디입니다.");
						jQuery("#memberPwd").focus();
						idck = 1;

					}
				},
				error : function(error) {
					alert("error:" + error);
				}

			});

		});
 */
		jQuery("#checkNickname").bind("click", function(e) {

			var memberNickname = $("#memberNickname").val();
			if (memberNickname.length == 0) {
				alert("닉네임를 입력해주세요.");
				$("#memberNickname").focus();
				
				return false;
			}

			$.ajax({
				async : true,
				type : 'POST',
				data : memberNickname,
				url : "/checknickname.do",
				dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data) {

					if (data.cnt > 0) {
						alert("닉네임이 존재합니다. 다른 닉네임을 입력해주세요.");
						$("#memberNickname").val("");
						$("#memberNickname").focus();
						
					} else {
						alert("사용가능한 닉네임입니다.");
						jQuery("#memberName").focus();
						nicknameck = 1;

					}
				},
				error : function(error) {
					alert("error:" + error);
				}

			});

		});

	 <!-- 전화번호 중복 체크-->
		jQuery("#checkPhone").bind("click",function(e){
			
			var memberPhone = $("#memberPhone").val();
			if(memberPhone.length==0){
				alert("아이디를 입력해주세요.");
				$("#memberPhone").focus();
				return false;
			}
				
			$.ajax({
				async:true,
				type:'POST',
				data : memberPhone,
				url : "/checkphone.do",
				dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					
					if(data.cnt>0){
						alert("번호가 존재합니다. 다른 번호를 입력해주세요.");
						$("#memberPhone").val("");
						$("#memberPhone").focus();
					}else{
						alert("사용가능한 번호입니다.");
						$("#membeAddress").focus();
						phoneck=1;
						
					}
				},
				error:function(error){
					alert("error:"+error);
				}
				
			});
			
		});

		 <!-- 이메일 중복 체크-->
		jQuery("#checkMail").bind("click",function(e){
			
			var memberMail1 = $("#memberMail1").val();
			var memberMail2 = $("#memberMail2").val();
			var memberMail = $("#memberMail1").val() + "@" + $("#memberMail2").val();
			if(memberMail.length==0 || memberMail1.length==0 || memberMail2.length==0){
				alert("메일을 입력해주세요.");
				$("#memberMail1").val("");
				$("#memberMail2").val("");
				$("#memberMail1").focus();
				return false;
			}
				
			$.ajax({
				async:true,
				type:'POST',
				data : memberMail,
				url : "/checkmail.do",
				dataType : "json",
				contentType : "application/json; charset=UTF-8",
				success : function(data){
					
					if(data.cnt>0){
						alert("메일이 존재합니다. 다른 메일을 입력해주세요.");
						$("#memberMail1").val("");
						$("#memberMail2").val("");
						$("#memberMail1").focus();
					}else{
						alert("사용가능한 메일입니다.");
						$("#memberMail1").focus();
						mailck=1;
						
					}
				},
				error:function(error){
					alert("error:"+error);
				}
				
			});
			
		});
		
		jQuery("#naver").bind("click",function(e){
			
			$('#memberMail2').val("naver.com");
		});
		
		jQuery("#daum").bind("click",function(e){
			
			$('#memberMail2').val("daum.net");
		});
		
		
		jQuery("#hanmail").bind("click",function(e){
			
			$('#memberMail2').val("hanmail.net");
		});
		
		
		jQuery("#gmail").bind("click",function(e){
	
			$('#memberMail2').val("gmail.com");
		});


		jQuery("#nomail").bind("click",function(e){
			
			$('#memberMail2').val("");
		});
		
		
		
		$("#updateMember").click(function(e){
			
			/* var memberId=$("#memberId").val(); */
			var pwd1=$("#memberPwd").val();
			var pwd2=$("#memberPwd2").val();
			var memberNickname=$("#memberNickname").val();
			var memberName=$("#memberName").val();
			var memberBirth=$("#memberBirth").val();
			var memberPhone=$("#memberPhone").val();
			var memberAddress=$("#memberAddress").val();
			var memberMail1=$("#memberMail1").val();
			var memberMail2=$("#memberMail2").val();
			
			/* if(memberId.length == 0){
				alert("아이디를 입력해주세요.");
				$("#memberId").focus;
				return false;
			} */
			if(pwd1.length == 0){
				alert("비밀번호를 입력해주세요.");
				$("#memberPwd").focus;
				return false;
			}
			if(pwd2.length == 0){
				alert("비밀번호를 확인해주세요.");
				$("#memberPwd2").focus;
				return false;
			}
			
			if(pwd1 != pwd2){
				alert("비밀번호가 일치하지 않습니다.");
				$("#memberPwd2").focus;
				return false;
				
			}
			if(memberNickname.length == 0){
				alert("닉네임을 확인해주세요.");
				$("#memberNickname").focus;
				return false;
			}
			
			if(memberName.length == 0){
				alert("이름을 확인해주세요.");
				$("#memberName").focus;
				return false;
			}
			if(memberBirth.length == 0){
				alert("생일을 확인해주세요.");
				$("#memberBirth").focus;
				return false;
			}
			if(memberPhone.length == 0){
				alert("휴대폰 번호를 확인해주세요.");
				$("#memberPhone").focus;
				return false;
			}
			if(memberAddress.length == 0){
				alert("주소를 확인해주세요.");
				$("#memberAddress").focus;
				return false;
			}
			if(memberMail1.length == 0 || memberMail2.length==0){
				alert("이메일을 확인해주세요.");
				
				if(memberMail.legnth!=0 && memberMail.length==0){
					$("#memberMail2").focus;
				}
				else{
					$("#memberMail1").focus;
				}
				return false;
			}
		});
	});
	
	
	
	 
</script>

</head>


<body
	class="page-template page-template-templates page-template-signup page-template-templatessignup-php page page-id-322 group-blog">
	<div class="site_wrap">
		<div id="page" class="site">
			<div class="site-inner">
				<div id="content" class="site-content">
					<div id="primary" class="content-area">
						<div id="main" class="site-main" role="main">
							<div class="content_rowbx">
								<div class="max_container">
									<article id="post-322"
										class="post-322 page type-page status-publish hentry">
									<div class="entry-content">
										<!-- 컨텐츠 시작 -->
										<div id="signup_content">
											<form name="form_signup" method="post">

												<input type="hidden" name="signup_nonce" value="1153c11567" />
												<input type="hidden" name="step" value="three" />
												<!-- <input type="hidden" name="name" value="이름 기본값"> -->
												<input type="hidden" name="memberId_verify" value="">
												<input type="hidden" name="job" value="memberJoin" />
												<div class="container" style="height: 130px;">
													<br />
												</div>
												<h3 class="s_titlebx">회원정보 수정</h3>
												<!-- 리스트 -->
												<div class="form_listbx wide">
													<div class="form_container">
									
														<!-- 아이디 -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<label for="input_3" class="label_dt">아이디</label>
																</dt>
																<dd>
																	<div class="inputbx max_475 pr_130">
																		<input type="text" class="text_inputbx" id="memberId"
																			name="memberId" disabled="disabled"
																			data-validation="required min-length max-length memberId"
																			data-min-length="3" data-max-length="18" value="${findMember.memberId}"> <span id="idChk"></span>
																		<p class="form_allet error alert_error"
																			style="display: none" data-input-name="user_login"></p>
																	</div>
																</dd>
															</dl>
														</div>
														<!-- .아이디 -->


														<!-- 비밀번호 -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<label for="input_4" class="label_dt">비밀번호</label>
																</dt>
																<dd>
																	<div class="inputbx max_345 br_text">
																		<input type="password" class="text_inputbx"
																			id="memberPwd" name="memberPwd"
																			data-validation="required min-length max-length letter-number"
																			data-min-length="6" data-max-length="12" value="${findMember.memberPwd}">
																	</div>

																	<!-- <p class="form_subtext memberPwd_subtext">*6~12자의
																		영문과 숫자를 조합</p> -->
																	<p class="form_allet error alert_error"
																		style="display: none" data-input-name="memberPwd"></p>
																</dd>
															</dl>
														</div>
														<!-- .비밀번호 -->
														<!-- 비밀번호 확인 -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<label for="input_5" class="label_dt">비밀번호 확인</label>
																</dt>
																<dd>
																	<div class="inputbx max_345 br_text">
																		<input type="password" class="text_inputbx"
																			id="memberPwd2" name="memberPwd2"
																			data-validation="match" data-match="memberPwd2"
																			data-label="비밀번호" data-min-length="6"
																			data-max-length="12" value="${findMember.memberPwd}">
																	</div>
																	<p class="form_allet error alert_error"
																		style="display: none" data-input-name="memberPwd2"></p>
																</dd>
															</dl>
														</div>
														<!-- .비밀번호 확인 -->

														<!-- 닉네임 -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<label for="input_3" class="label_dt">닉네임</label>
																</dt>
																<dd>
																	<div class="inputbx max_475 pr_130">
																		<input type="text" class="text_inputbx"
																			id="memberNickname" name="memberNickname"
																			data-validation="required min-length max-length memberNickname"
																			data-min-length="3" data-max-length="18" value="${findMember.memberNickname}"> <a
																			class="form_btn_basic search_user_login"
																			id="checkNickname" name="checkNickname">중복확인</a> <span
																			id="nickNameChk"></span>
																		<p class="form_allet error alert_error"
																			style="display: none" data-input-name="user_login"></p>
																	</div>
																</dd>
															</dl>
														</div>
														<!-- .닉네임 -->

														<!-- 이름 -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<label class="label_dt" for="input_0">이름</label>
																</dt>
																<dd>
																	<div class="inputbx max_475 pr_130">
																		<!-- <div class="inputbx"> -->
																		<input type="text" class="text_inputbx" id="input_0"
																			name="memberName" data-validation="required" value="${findMember.memberName}">

																		<p class="form_allet error alert_error"
																			style="display: none" data-input-name="memberName"></p>
																		<!-- <div class="d_textbx">홍길동(남)</div> -->
																	</div>
																</dd>
															</dl>
														</div>
														<!-- .이름 -->
														<!-- 생일 -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<span class="label_dt">생일</span>
																</dt>
																<dd>
																	<div class="inputbx max_475 pr_130">
																		<input type="text" class="text_inputbx" id="memberBirth"
																			name="memberBirth" data-validation="required" value="${findMember.memberBirth}">
																		<p class="form_allet error alert_error"
																			style="display: none" data-input-name="birth"></p>
																	</div>
																</dd>
															</dl>
														</div>
														<!-- .생일 -->
														<!-- 휴대폰 번호 -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<span class="label_dt">휴대폰 번호</span>
																</dt>
																<dd>
																	<div class="inputbx max_475 pr_130">
																		<input type="text" class="text_inputbx"
																			id="memberPhone" name="memberPhone"
																			data-validation="required" value="${findMember.memberPhone}"> <a
																			class="form_btn_basic search_user_login"
																			id="checkPhone" name="checkPhone">중복확인</a>
																		<p class="form_allet error alert_error"
																			style="display: none" data-input-name="birth"></p>
																	</div>

																</dd>
															</dl>
														</div>
														<!-- .휴대폰 번호 -->



														<!-- 주소 -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<label for="input_6" class="label_dt">주소</label>
																</dt>
																<dd>
																	<!-- <div class="inputbx max_345 pl_130">
																		<input type="text" class="text_inputbx" id="input_6"
																			name="zipcode" data-validation="required"> <a
																			href="" class="form_btn_basic left search_zipcode">우편번호</a>
																		<p class="form_allet error alert_error"
																			style="display: none" data-input-name="zipcode"></p>
																	</div> -->
																	<div class="form_adrress_bx">
																		<div class="inputbx max_475">
																			<label class="hidden_label" for="signup_three1">주소1</label>
																			<input type="text" id="signup_three1"
																				class="text_inputbx" name="memberAddress"
																				data-validation="required" value="${findMember.memberAddress}">
																			<p class="form_allet error alert_error"
																				style="display: none"
																				data-input-name="memberAddress"></p>
																		</div>
																		<!-- <div class="inputbx max_475">
																			<label class="hidden_label" for="signup_three2">주소2</label>
																			<input type="text" id="signup_three2"
																				class="text_inputbx" name="memberAddress2"
																				data-validation="required">
																			<p class="form_allet error alert_error"
																				style="display: none"
																				data-input-name="memberAddress2"></p>
																		</div> -->
																	</div>
																</dd>
															</dl>
														</div>
														<!-- .주소 -->
														<!-- E-mail -->
														<div class="form_itembx basic">
															<dl>
																<dt>
																	<label for="input_7" class="label_dt">E-mail</label>
																</dt>
																<dd>
																	<div class="input_w_bx max_670">
																		<div class="inputbx row50 left">
																			<input type="text" class="text_inputbx"
																				id="memberMail1" name="memberMail1"
																				data-validation="required" value="${memberMail1}">
																			<p class="form_allet error alert_error"
																				style="display: none" data-input-name="memberMail1"></p>
																		</div>
																		<div class="inputbx row50 right">
																			<label class="hidden_label" for="signup_three3">이메일</label>
																			<input type="text" id="memberMail2"
																				class="text_inputbx" placeholder="직접입력"
																				name="memberMail2" data-validation="required" value="${memberMail2}">
																			<p class="form_allet error alert_error"
																				style="display: none" data-input-name="memberMail2"></p>
																		</div>
																		<div class="form_selectbx email_selectbx">
																			<div class="arrow_select_bx">
																				<a class="textbx">선택</a>
																				<ul class="select_ul">
																					<li><a data-value="naver.com" id="naver"
																						class="naver" name="naver">naver.com</a></li>
																					<li id="daum.net" name="daum.net"><a
																						data-value="daum.net" id="daum" class="daum" name="daum">daum.net</a></li>
																					<li id="hanmail.net"><a
																						data-value="hanmail.net" id="hanmail" class="hanmail" name="hanmail">hanmail.net</a></li>
																					<li id="gmail.com" name="gmail.com"><a
																						data-value="gmail.com" id="gmail" class="gmail" name="gmail">gmail.com</a></li>
																					<li id="nomail" name="nomail"><a data-value="">직접입력</a></li>
																				</ul>
																			</div>

																		</div>


																	</div>
																	<a class="form_btn_basic search_user_login"
																		id="checkMail" name="checkMail">중복확인</a>
																</dd>
															</dl>
														</div>

														<div class="form_bottombx in_btnbx">
															<input type="submit" name="updateMember"
																id="updateMember"
																class="basic_btn mr10 updateMember" value="수정">
															<a href="/index" class="basic_btn gray btn_cancel"><span
																class="text">취소</span></a>

														</div>
														<!-- .하단박스 -->

													</div>
												</div>
											</form>
										</div>
									</div>
									<!-- .리스트 -->
								</div>

							</div>
							<!-- .entry-content -->
							</article>
							<!-- #post-## -->
						</div>
					</div>
				</div>
				<!-- .site-main -->
			</div>

		</div>
		<!-- .site-content -->
	</div>
	<!-- .site-inner -->
	</div>
	<!-- .site -->



	</div>




</body>




</html>