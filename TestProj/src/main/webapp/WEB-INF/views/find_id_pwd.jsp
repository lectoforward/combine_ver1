<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="userheader.jsp"%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="format-detection" content="telephone=no">
<link rel='dns-prefetch' href='//code.jquery.com' />
<link rel='dns-prefetch' href='//fonts.googleapis.com' />
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
<link rel="stylesheet"
	href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607"
	type="text/css" media="all">
<link rel="stylesheet" href="./resources/css/mycss.css" type="text/css">
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type='text/javascript' src='./resources/js/jquerySmash.js'></script>
<script type='text/javascript'
	src='./resources/js/jquery-migrate.min.js'></script>
<script type='text/javascript'
	src='//code.jquery.com/ui/1.11.4/jquery-ui.min.js'></script>
<script type='text/javascript' src='./resources/js/unslider.js'></script>
<link rel="alternate" type="text/xml+oembed"
	href="./resources/json/embed.json" />

<meta charset="UTF-8">

<script type="text/javascript">
	var idcheck = 0;
	var resultMemberId;
	var pwdcheck = 0;

	jQuery(document)
			.ready(
					function(e) {

						jQuery("#findPwdBtn")
								.click(
										function(e) {

											var memberId = $("#rMemberId")
													.val();
											var memberPhone = $("#rMemberPhone")
													.val();
											var memberMail = $("#rMemberMail")
													.val();

											if (memberId.length == 0
													|| memberPhone.length == 0
													|| memberMail.length == 0) {
												alert("입력사항을 모두 입력해주세요.");
												if (memberId.length == 0) {
													$("rMemberId").focus();
													return false;
												} else if (memberPhone.length == 0) {
													$("rMemberPhone").focus();
													return false;
												} else {
													$("rMemberMail").focus();
													return false;
												}

											}

											$
													.ajax({
														async : true,
														type : 'POST',
														data : JSON
																.stringify({
																	"memberId" : memberId,
																	"memberPhone" : memberPhone,
																	"memberMail" : memberMail
																}),
														url : "/findpwd.do",
														dataType : "json",
														contentType : "application/json; charset=UTF-8",
														success : function(
																resultMap) {

															if (resultMap.cnt > 0) {

																$('#rMemberId')
																		.val("");
																$(
																		'#rMemberPhone')
																		.val("");
																$(
																		'#rMemberMail')
																		.val("");
																$('#myModal2')
																		.show();
																pwdcheck = 1;
															} else {
																alert("일치하는 회원이 없습니다.");
															}

														},
														error : function(error) {
															alert("error:"
																	+ error);
														}
													});

										});

						jQuery("#findIdBtn")
								.click(
										function(e) {

											var memberName = $("#lMemberName")
													.val();
											var memberPhone = $("#lMemberPhone")
													.val();
											var memberMail = $("#lMemberMail")
													.val();

											if (memberName.length == 0
													|| memberPhone.length == 0
													|| memberMail.length == 0) {
												alert("입력사항을 모두 입력해주세요.");
												if (memberName.length == 0) {
													$("lMemberName").focus();
													return false;
												} else if (memberPhone.length == 0) {

													$("lMemberPhone").focus();
													return false;

												} else {
													$("lMemberMail").focus();
													return false;
												}

											}

											$
													.ajax({
														async : true,
														type : 'POST',
														data : JSON
																.stringify({
																	"memberName" : memberName,
																	"memberPhone" : memberPhone,
																	"memberMail" : memberMail
																}),
														url : "/findid.do",
														dataType : "json",
														contentType : "application/json; charset=UTF-8",
														success : function(
																resultMap) {

															if (resultMap.cnt > 0) {
																/* alert("모달을 엽니다."); */
																/* alert(resultMap.memberId); */
																$('#searchId')
																		.text(
																				"'"
																						+ resultMap.memberId
																						+ "'");
																$(
																		'#lMemberName')
																		.val("");
																$(
																		'#lMemberPhone')
																		.val("");
																$(
																		'#lMemberMail')
																		.val("");
																$('#myModal')
																		.show();
																idcheck = 1;
															} else {
																alert("일치하는 회원이 없습니다.");
															}

														},
														error : function(error) {
															alert("error:"
																	+ error);
														}
													});

										});

					});

	function close_pop(flag) {

		$('#myModal').hide();
		location.href = "/find_id_popup";
	};

	function close_pop2(flag) {

		$('#myModal').hide();

	};

	function close_pop3(flag) {
		alert("bb");
		$('#myModal2').hide();
		var changePwd = $("#changePwd").val();
		var $form = $('<form></form>');
		$form.attr('action', '/find_pwd_popup');
		$form.attr('method', 'post');
		$form.appendTo('body');
		var newPwd = '<input type="hidden" value="' + changePwd + '" name="changePwd">';
		$form.append(newPwd);
		$form.submit();
		$('#changePwd').val("");
	};

	function close_pop4(flag) {
		$('#changePwd').val("");
		$('#myModal2').hide();

	};
</script>
<style>
.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	padding: 20px;
	border: 1px solid #888;
	width: 30%;
}
</style>



</head>
<body>
	<div id="myModal" class="modal">
		<div class="modal-content">
			<p style="text-align: center;">
				<span style="font-size: 14pt;"><b><span
						style="font-size: 24pt;">공지</span></b></span>
			</p>
			<p style="text-align: center; line-height: 1.5;">
				<br />아이디는 <span id="searchId"></span>입니다.
			</p>
			<p>
				<br />
			</p>
			<div
				style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;"
				onclick="close_pop()">
				<span class="pop_bt" style="font-size: 13pt;"> 로그인으로 </span>
			</div>
			<div
				style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;"
				onClick="close_pop2();">
				<span class="pop_bt" style="font-size: 13pt;"> 닫기 </span>
			</div>


		</div>


	</div>



	<div id="myModal2" class="modal">
		<div class="modal-content">
			<p style="text-align: center;">
				<span style="font-size: 14pt;"><b><span
						style="font-size: 24pt;">비밀번호변경</span></b></span>
			</p>
			<div>
				<input type="text" id="changePwd" name="changePwd">
			</div>
			<div
				style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;"
				onClick="close_pop3();">
				<span class="pop_bt" style="font-size: 13pt;"> 변경 </span>
			</div>
			<div
				style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;"
				onClick="close_pop4();">
				<span class="pop_bt" style="font-size: 13pt;"> 취소 </span>
			</div>


		</div>


	</div>





	<div class="content_rowbx">
		<div class="site-main ">
			<div class="pg_topbannerbx">
				<div class="bg content-area"></div>
			</div>
			<!-- 리스트 -->
			<div class=" form_seach_list">
				<div class="pg_headbx align_c">
					<div class="tabbx tabrow50 black">
						<ul>
							<li><a>아이디 찾기</a></li>
							<li><a>비밀번호 찾기</a></li>
						</ul>
					</div>
				</div>
				<div class="form_container">
					<!-- 아이디 찾기 -->
					<form action="" method="POST" name="form_find_id" id="form_find_id">
						<input type="hidden" name="action" value="a_find_id"> <input
							type="hidden" name="nonce" value="91e1661a50" />
						<!-- 이름 -->
						<div class="form_itembx">
							<div class="inputbx">
								<label class="hidden_label" for="forget_1">이름</label> <input
									id="lMemberName" type="text" class="text_inputbx"
									placeholder="이름" data-validation="required" name="name">
								<p class="form_allet error alert_error" style="display: none"
									data-input-name="name"></p>
							</div>
						</div>
						<!-- .이름 -->
						<!-- 핸드폰 번호 -->
						<div class="form_itembx">
							<div class="inputbx">
								<label class="hidden_label" for="forget_1">핸드폰 번호</label> <input
									id="lMemberPhone" type="text" class="text_inputbx"
									placeholder="핸드폰 번호" data-validation="required"
									name="phoneNumber">
								<p class="form_allet error alert_error" style="display: none"
									data-input-name="name"></p>
							</div>
						</div>
						<!-- .핸드폰 번호 -->
						<!-- e-mail -->
						<div class="form_itembx">
							<div class="inputbx">
								<label class="hidden_label" for="forget_2">E-mail</label> <input
									id="lMemberMail" type="email" class="text_inputbx"
									placeholder="E-mail" data-validation="required" name="email">
								<p class="form_allet error alert_error" style="display: none"
									data-input-name="email"></p>
							</div>
						</div>
						<!-- .e-mail -->
						<div class="form_sub_btnbx">
							<button type="button" class="basic_btn black" id="findIdBtn">아이디찾기</button>
							>
						</div>
					</form>
					<!-- .아이디 찾기 -->

					<!-- 비밀번호 찾기 -->
					<form action="" method="POST" name="form_find_pwd"
						id="form_find_pwd">
						<input type="hidden" name="action" value="a_find_pwd"> <input
							type="hidden" name="nonce" value="91e1661a50" />
						<!-- 아이디 -->
						<div class="form_itembx">
							<div class="inputbx">
								<label class="hidden_label" for="forget_1">아이디</label> <input
									id="rMemberId" type="text" class="text_inputbx"
									placeholder="아이디" data-validation="required" name="name">
								<p class="form_allet error alert_error" style="display: none"
									data-input-name="name"></p>
							</div>
						</div>
						<!-- .아이디 -->
						<!-- 핸드폰 번호 -->
						<div class="form_itembx">
							<div class="inputbx">
								<label class="hidden_label" for="forget_1">핸드폰 번호</label> <input
									id="rMemberPhone" type="text" class="text_inputbx"
									placeholder="핸드폰 번호" data-validation="required"
									name="phoneNumber">
								<p class="form_allet error alert_error" style="display: none"
									data-input-name="name"></p>
							</div>
						</div>
						<!-- .핸드폰 번호 -->
						<!-- e-mail -->
						<div class="form_itembx">
							<div class="inputbx">
								<label class="hidden_label" for="forget_2">E-mail</label> <input
									id="rMemberMail" type="email" class="text_inputbx"
									placeholder="E-mail" data-validation="required" name="email">
								<p class="form_allet error alert_error" style="display: none"
									data-input-name="email"></p>
							</div>
						</div>
						<!-- .e-mail -->
						<div class="form_sub_btnbx">
							<button type="button" class="basic_btn black" id="findPwdBtn">비밀번호찾기</button>
						</div>
					</form>
					<!-- .비밀번호 찾기 -->
				</div>
			</div>
			<!-- .리스트 -->
			<!-- .컨텐츠 시작 -->
		</div>
	</div>
</body>
</html>