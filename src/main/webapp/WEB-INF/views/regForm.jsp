<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%
    response.setContentType("text/html;charset=utf-8");
%>
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

        }

        td, th {
            font-size: 24px;
            width: 200px;
            height: 50px;
        }

        input, button {
            float: left;
            width: 200px;
            height: 30px;
            font-size: 24px;
            border-radius: 8px;
            outline: none;
            padding-left: 10px;
            background-color: rgb(233, 233, 233);
            border: none
        }
        #idcheck{
            width: 600px;
        }
        table{
        }

    </style>
</head>
<body>
<header>
    <%@ include file="header.jsp" %>
</header>
<div class="mainContainer">
<h1>학생 회원등록</h1>
<br>
    <table>

        <form action="reg.do" method="post" name="frm">
            <tr>
                <th>번호</th>
                <td><input type="text" name="no" value="${no }" readonly></td>
            </tr>
            <tr>
                <th>이름</th>
                <td><input type="text" name="name" value="${name }" readonly></td>
            </tr>
            <tr>
                <th>아이디</th>
                <td id ="idcheck">
                    <input type="text" name="id">
                    <input type="button" onclick="idcheck()" value="중복확인">
                    <span id="demo">${msg }</span>
                </td>
            </tr>
            <tr>
                <th>비밀번호</th>
                <td><input type="password" name="pw"></td>
            </tr>
            <tr>
                <th>전화번호</th>
            <td><input type="text" name="tel"></td>
            </tr>
            <tr>
                <th>보안문자<span id="code"><%=(int) (Math.random() * 100000) + 12 %></span></th>
            <td><input type="text" name="secure"></td>
            </tr>
            <tr>
                <th></th>
            <td > <input type="submit" value="등록" onclick="return check()"></td>
            </tr>
    </form>
    </table>
</div>
<script>

    function idcheck() {
        if (document.frm.id.value == "") {
            alert("아이디를 입력하세요.");
            document.frm.id.focus();
            return;
        }
        let param = document.frm.id.value;
        let url = "idcheck.do?id=" + param;
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function () {
            if (this.responseText == 1) {
                document.getElementById("demo").innerHTML = "사용가능";
            } else {
                document.getElementById("demo").innerHTML = "사용불가";
            }
            document.getElementById("demo").innerHTML = this.responseText;
        }
        xhttp.open("GET", url, true);
        xhttp.send(); //submit
    }

    function check() {

        if (document.frm.id.value == "") {
            alert("아이디가 입력되지 않았습니다.");
            document.frm.id.focus();
            return false;
        } else if (document.frm.pw.value == "") {
            alert("비밀번호가 입력되지 않았습니다.");
            document.frm.pw.focus();
            return false;
        } else if (document.frm.name.value == "") {
            alert("이름이 입력되지 않았습니다.");
            document.frm.name.focus();
            return false;
        } else if (document.frm.tel.value == "") {
            alert("전화번호가 입력되지 않았습니다.");
            document.frm.tel.focus();
            return false;
        } else if (document.getElementById("demo").innerText != "사용가능") {
            alert("아이디 중복체크를 하세요.");
            document.frm.id.focus();
            return false;
        } else if (document.frm.secure.value != document.getElementById("code").innerText) {
            alert("보안문자를 확인해주세요");
            return false;

        } else {
            alert("회원가입이 완료되었습니다.");
            return true;
        }
    }
</script>
</body>
</html>
