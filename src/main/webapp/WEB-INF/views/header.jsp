<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	@font-face {
		font-family: 'SUIT-Regular';
		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
		font-weight: normal;
		font-style: normal;
	}

* {
	font-family: 'SUIT-Regular';
	margin: 0 auto;
}
ul, li{
	list-style: none;
}
.top {
	display:flex;
	width:1800px;
	height: 180px;
	border-bottom: solid 3px #595956;
}

.top a{
	text-decoration-line: none;
	color: black;
}

.top_logo{
	margin-top:10px;
	display:inline-block;
	width:250px;
	height:160px;
	
}
.menu_wrap{
	position: relative;
	width:850px;
	text-align:center;
}
.menu_wrap .dep1{
	margin-top: 120px;
	font-size: 0;
}
.menu_wrap .dep1 > li{
	display: inline-block;
	width: 200px;
	vertical-align: top;
	font-size: 24px;
	text-align: center;
}

.menu_wrap .dep1 > li > a{
	display: block;
	padding: 10px 0;
}
.menu_wrap .dep1 > li:hover > a{
	background: #888884;
	color: white;
}
.menu_wrap .dep1 > li:hover > .dep2 {
	display: block;
}
.menu_wrap .dep2{
	display: none;
	background: #595956;
	z-index: 3;

}
.menu_wrap .dep2 a{
	display: block;
	padding: 10px 0;
	color: #a4a4a2;
}
.menu_wrap .dep2 a:hover{
	color: white;
}
.top_logo img {
	width:250px;
	height:160px;
}
.top_menu{
	margin-top:20px;
}
.top_menu li{
	list-style: none; 
	float:right;
	margin-left:5px;
}
.top_menu img{
	width: 50px;
	height: 50px;
}
</style>
</head>
<body>

	<div class="top">
		<a href = "main"><div class="top_logo">
			<img src="greenschool.png">
		</div></a>
		<div class = "menu_wrap">
			<ul class="dep1">
				<li>
					<a href="menu">학사안내</a>
					<ul class="dep2">
						<li><a href="menu">학사일정</a> </li>
						<li><a href="menu">학적변동</a> </li>
						<li><a href="menu">전공제도</a> </li>
						<li><a href="menu">졸업</a> </li>
					</ul>
				</li>
				<li>
					<a href="menu">교육과정</a>
					<ul class="dep2">
						<li><a href="menu">교육과정안내</a> </li>
						<li><a href="menu">비교과</a> </li>
						<li><a href="menu">웨일비</a> </li>
						<li><a href="menu">전공교육과정</a> </li>
					</ul>
				</li>
				<li>
					<a href="menu">수강신청</a>
					<ul class="dep2">
						<li><a href="menu">수강신청</a> </li>
						<li><a href="menu">강의계획서</a> </li>
					</ul>
				</li>
				<li>
					<a href="menu">학생생활</a>
					<ul class="dep2">
						<li><a href="menu">학생증발급</a> </li>
						<li><a href="menu">제증명발급</a> </li>
						<li><a href="menu">복지시설</a> </li>
						<li><a href="menu">병무</a> </li>
					</ul>
				</li>

			</ul>
		</div>
		<div class="top_menu">
		<ul>
			<c:if test="${sessionScope.logid == null }">
				<li><a href="regMain"><img src="reg.png"><br>회원가입</a>
				<li><a href="loginForm"><img src="login.png"><br> 로그인</a>
			</c:if>
				<c:if test="${sessionScope.logid != null }">
				<li><a href="logout">로그아웃</a>
				<li>${sessionScope.logid }님
				</c:if>
		</ul>
		</div>
	</div>
<script>

</script>
</body>
</html>
