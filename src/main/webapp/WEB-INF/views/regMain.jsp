<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
		.mainContainer {
			text-align: center;
			margin: 0 auto;
			margin-top: 100px;
		}

		table {
			text-align: center;
		}

		td, th{
			font-size: 24px;
			width: 200px;
			height: 50px;
		}
		input, button {
			width: 200px;
			height: 30px;
			font-size: 24px;
			border-radius: 8px;
			outline: none;
			padding-left: 10px;
			background-color: rgb(233, 233, 233);
			border:none
		}
		.tbl_button{
			margin-top: 20px;
		}

	</style>
</head>
<body>
<header>
		<%@ include file="header.jsp"%>
	</header>
	<div class="mainContainer">

	<h1>학생인증</h1>
        <br>
	<table>

	<form action="checkStudent.do" method="get" name="frm">
		<tr>
            <th>번호</th>
            <td><input type="text" name="no"></td>
        </tr>
        <tr>
        <th>이름</th>
		<td><input type="text" name="name"></td>
        </tr>
        <tr>

        <td colspan="2"><input type="submit" value="확인" onclick="return check()"></td>
        </tr>
	</form>
	</table>
	</div>
	<script>
		function check() {
			if (document.frm.no.value == "") {
				alert("번호가 입력되지 않았습니다.");
				document.frm.no.focus();
				return false;
			} else if (document.frm.name.value == "") {
				alert("이름이 입력되지 않았습니다.");
				document.frm.name.focus();
				return false;
			} else {
				return true;
			}
		}
	</script>
</body>
</html>
