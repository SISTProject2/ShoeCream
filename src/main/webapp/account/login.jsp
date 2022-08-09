<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link rel="stylesheet" href="../css/join.css" type="text/css">
</head>
<jsp:include page="../main/header.jsp"></jsp:include>
<jsp:include page="../main/nav.jsp"></jsp:include>
<body>
	<form class="wrapper">
			<div class="join_container">
				<div class="join_title">
					<div class="joinmember">LOGIN</div>
					<div class="join_logo">SHOECREAM</div>
				</div>
				<div class="join_input">
					<p>
						<label class="join_label">이메일</label>
					</p>
					<input type="email" placeholder="이메일 주소">

					<p>
						<label class="join_label">비밀번호</label>
					</p>
					<input class="eye" type="password"
						placeholder="비밀번호 (영문, 숫자 조합 최소 8자)"><br>

				</div>
				
				<div class="login_check">
					<span><input type="checkbox">로그인 상태 유지하기 </span>
					<span><a href="">아이디/비밀먼호 찾기</a></span>
				</div>
				
				
				<div>
					<input class="join_submit" type="submit" value="로그인">
				</div>
				<div>
					<input class="join_submit_k" class="kakao" type="submit"
						value="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;카카오로 로그인">
				</div>
				<div class="join_member">
					<span>회원 혜택을 받아보세요.</span>
					<span><a href="">회원가입</a></span>
				</div>
				
			</div>

	</form>

	<jsp:include page="../main/footer.jsp"></jsp:include>
</body>
</html>