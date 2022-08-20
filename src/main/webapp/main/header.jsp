<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SHOECREAM</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="http://fonts.googleapis.com/earlyaccess/nanumgothic.css"
	type='text/css'>
<link rel="stylesheet" href="../css/header.css" type="text/css">
</head>
<body>
	<header>
		<div class="logo">
			<a href="../main/main.do"><img src="../images/logo_b.png" alt=""></a>
		</div>

		<div class="search">
		  <form method="post" action="../main/search.do">
			<input type="text" placeholder=" NIKE" style="width: 92%; font-family: sans-serif; font-size: 16px; background-image: none;" id="fd" name="fd" value="${fd}" >
			<input type="image" src="../images/search_b.png" id="btn" style="background-image: none; width: auto;">
	      </form>
		</div>
		
		<ul>
			<li><a id='LOGIN' href="../account/login.jsp">LOGIN</a></li>
			<li><a id='JOIN' href="../account/join.jsp">JOIN</a></li>
			<li><a id='NOTICE' href="../notice/notice.do">NOTICE</a></li>
		</ul>
		
	</header>
</body>
</html>