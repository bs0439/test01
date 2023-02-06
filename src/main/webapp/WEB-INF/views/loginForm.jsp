<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
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
    <%@ include file="header.jsp" %>
</header>
<div class="mainContainer">
    <h1>로그인</h1>
    <br><br>
    <table class="main_tbl" >

        <form name="frm" action="login.do" method="post">
            <tr>
                <th>아이디</th>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="pw"></td>
            </tr>
	        <tr class = "tbl_button">

            <td colspan="2"><input type="submit" value="로그인" onclick="return check()">

        </form>
        <button onclick="location.href='regMain'">회원가입</button></td>
            </tr>
    </table>

</div>
<script>
    function check() {
        if (document.frm.id.value == "") {
            alert("아이디가 입력되지 않았습니다.");
            document.frm.id.focus();
            return false;
        } else if (document.frm.pw.value == "") {
            alert("비밀번호가 입력되지 않았습니다.");
            document.frm.pw.focus();
            return false;
        } else {
            return true;
        }
    }
</script>
</body>
</html>
