<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link rel="stylesheet" href="../css/join.css" type="text/css">

<script type="text/javascript"
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
	//input 미입력시 
	//	function loginCheck() {
	//		let loginForm = document.loginForm;
	//		let login_email = document.getElementById('login_email').value;
	//		let login_pwd = document.getElementById('login_pwd').value;
	//
	//		if (login_email == "") {
	//			alert("아이디를 입력해주세요.");
	//		} else if (login_pwd == "") {
	//			alert("비밀번호를 입력해주세요.");
	//		} else {
	//			loginForm.submit();
	//		}

	//	}

	//pwd 눈 아이콘 클릭시 pwd보이기
	$(function() {
		$('#eye_i').on('click', function() {
			$('#login_pwd').toggleClass('active');

			if ($('#login_pwd').hasClass('active')) {
				$('#login_pwd').attr('type', "text");
			} else {
				$('#login_pwd').attr('type', "password");
			}
		});
	});

	$(function() { // window.onload => mounted(Vue) , componentDidMount(React)
		$('#login').on("click", function() {
			let login_email = $('#login_email').val();
			if (login_email.trim() == "") {
				alert("아이디를 입력해주세요.");
				$('#login_email').focus();

				return;
			}
			let login_pwd = $('#login_pwd').val();
			if (login_pwd.trim() == "") {
				alert("비밀번호를 입력해주세요.");
				$('#login_pwd').focus();
				return;
			}
			// 서버로 전송 (id,pwd)
			// 한파일에서 ==> 요청 , 응답까지 받아서 처리 (파일 유지)
			// 한파일에서 전송 ==> 결과값을 받을때 새로운 파일이 다시 생성 (JSP)
			// axios=> 요청 / 응답 (vue,react) => onepage
			$.ajax({
				type : 'post',
				url : '../account/login_ok.do',
				data : {
					"email" : login_email,
					"pwd" : login_pwd
				},
				success : function(result) {
					let res = result.trim();
					console.log(res);
					// NOID , NOPWD , OK ==> Model => JSP에 출력시에 읽어 온다 
					if (res === 'NOEMAIL') {
						//id가 없는 경우
						alert("아이디가 존재하지 않습니다");
						$('#login_email').val("")
						$('#login_pwd').val("")
						$('#login_email').focus();
					} else if (res === 'NOPWD') {
						//비밀번호가 틀린경우
						alert("비밀번호가 틀립니다");
						$('#login_pwd').val("");
						$('#login_pwd').focus();
					} else {
						//로그인 
						parent.location.href = "../main/main.do";
						// shadowbox => child
					}
				}
			})
		})
	})
</script>
</head>
<body>
	<div class="wrapper">
		<div class="join_container">
			<div class="join_title">
				<div class="joinmember">LOGIN</div>
				<div class="join_logo">SHOECREAM</div>
			</div>

			<form method="post" name="loginForm" >
				<div class="join_input">
					<p>
						<label class="join_label">이메일</label>
					</p>
					<input type="email" placeholder="이메일 주소" name="email"
						id="login_email">

					<p>
						<label class="join_label">비밀번호</label>
					</p>
					<div class="pwd_eye">
						<input class="eye" type="password"
							placeholder="비밀번호 (영문, 숫자 조합 최소 8자)" name="pwd" id="login_pwd">
						<div>
							<img class="eye_i" src="../images/eye.png" alt="" id="eye_i">
						</div>
					</div>

				</div>

				<div class="login_check">
					<span><input type="checkbox">로그인 상태 유지하기 </span> <span><a
						href="">아이디/비밀먼호 찾기</a></span>
				</div>
				<div>
					<button class="join_submit" type="button" id="login" name="login">로그인</button>
				</div>
				<div>
					<button class="join_submit_k" class="kakao"
						type="button">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;카카오로 로그인</button>
				</div>
				<div class="join_member">
					<span>회원 혜택을 받아보세요.</span> <span><a
						href="../account/join.do">회원가입</a></span>
				</div>
			</form>
		</div>

	</div>
</body>
</html>