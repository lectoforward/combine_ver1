<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="userheader.jsp" %>
<link rel="stylesheet" href="http://gangwon-fc.com/wp-content/themes/gangwonfc/css/template.css?20170607" type="text/css" media="all">
<link rel="stylesheet" href="css/mycss.css" type="text/css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class ="content_rowbx">
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
										<input type="hidden" name="action" value="a_find_id">
										<input type="hidden" name="nonce" value="91e1661a50"/>
										<!-- 이름 -->
										<div class="form_itembx">
											<div class="inputbx">
												<label class="hidden_label" for="forget_1">이름</label>
												<input id="forget_1" type="text" class="text_inputbx" placeholder="이름" data-validation="required" name="name">
												<p class="form_allet error alert_error" style="display:none" data-input-name="name"></p>
											</div>
										</div>
										<!-- .이름 -->
										<!-- 핸드폰 번호 -->
											<div class="form_itembx">
											<div class="inputbx">
												<label class="hidden_label" for="forget_1">핸드폰 번호</label>
												<input id="forget_1" type="text" class="text_inputbx" placeholder="핸드폰 번호" data-validation="required" name="phoneNumber">
												<p class="form_allet error alert_error" style="display:none" data-input-name="name"></p>
											</div>
										</div>
										<!-- .핸드폰 번호 -->
										<!-- e-mail -->
										<div class="form_itembx">
											<div class="inputbx">
												<label class="hidden_label" for="forget_2">E-mail</label>
												<input id="forget_2" type="email" class="text_inputbx" placeholder="E-mail" data-validation="required" name="email">
												<p class="form_allet error alert_error" style="display:none" data-input-name="email"></p>
											</div>
										</div>
										<!-- .e-mail -->
										<div class="form_sub_btnbx">
											<input type="submit" value="찾기" class="basic_btn black">
										</div>
										</form>
								<!-- .아이디 찾기 -->
								
								<!-- 비밀번호 찾기 -->
								<form action="" method="POST" name="form_find_pwd" id="form_find_pwd">
									<input type="hidden" name="action" value="a_find_pwd">
									<input type="hidden" name="nonce" value="91e1661a50"/>
									<!-- 아이디 -->
									<div class="form_itembx">
										<div class="inputbx">
											<label class="hidden_label" for="forget_1">아이디</label>
											<input id="forget_1" type="text" class="text_inputbx" placeholder="아이디" data-validation="required" name="name">
											<p class="form_allet error alert_error" style="display:none" data-input-name="name"></p>
										</div>
									</div>
									<!-- .아이디 -->
									<!-- 핸드폰 번호 -->
										<div class="form_itembx">
										<div class="inputbx">
											<label class="hidden_label" for="forget_1">핸드폰 번호</label>
											<input id="forget_1" type="text" class="text_inputbx" placeholder="핸드폰 번호" data-validation="required" name="phoneNumber">
											<p class="form_allet error alert_error" style="display:none" data-input-name="name"></p>
										</div>
									</div>
									<!-- .핸드폰 번호 -->
									<!-- e-mail -->
									<div class="form_itembx">
										<div class="inputbx">
											<label class="hidden_label" for="forget_2">E-mail</label>
											<input id="forget_2" type="email" class="text_inputbx" placeholder="E-mail" data-validation="required" name="email">
											<p class="form_allet error alert_error" style="display:none" data-input-name="email"></p>
										</div>
									</div>
									<!-- .e-mail -->
									<div class="form_sub_btnbx">
										<input type="submit" value="찾기" class="basic_btn black">
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