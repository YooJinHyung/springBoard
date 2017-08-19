<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>
<h1>
    로그인
</h1>
<form name=" form1" method="post" action="loginProcess">
    <table>
        <tr style="height:40px">
            <td>ID</td>
            <td><input type="text" name="id"></td>
        </tr>
        <tr style="height:40px">
            <td>PW</td>
            <td><input type="password" name="pw"></td>
        </tr>
    </table>
    <table>
        <tr>
            <td style="text-align:center"><input type="submit" value="Login"></td>
            <td style="text-align:center"><input type="reset" value="지우기"></td>
        </tr>
    </table>
</form>

</body>
</html>
