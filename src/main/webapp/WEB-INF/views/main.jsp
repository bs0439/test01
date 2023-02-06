<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container {
	margin-top: 20px;
	width: 1800px;
	height: 900px;
	display: grid;
	gap: 10px 20px;
	grid-template-columns:   1200px 500px;
}
.item{
	width: 100%;
	height: 900px;
}
.item img{
	width: 100%;
	height: 100%;
}

#b{
	display: grid;
	grid-template-rows: repeat(3, 1fr);
}

</style>
</head>
<body>
	<header>
		<%@ include file="header.jsp"%>
	</header>
	<div class="container">

		<div class="item" id="a"><img src="main.jpg"></div>
		<div class="item" id="b">
			<div class="items">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/iCOPwvFmELM" title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			<div class="items">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/cD_5zW1GKz4" title="YouTube video player" frameborder="0" allow="accelerometer;
				 autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>
			<div class="items">
				<iframe width="560" height="315" src="https://www.youtube.com/embed/hAXe6wNwypE" title="YouTube video player" frameborder="0" allow="accelerometer;
				autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			</div>

		</div>

	</div>


</body>
</html>
