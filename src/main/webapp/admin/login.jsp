<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>관리자 로그인</title>
</head>
<style>
h3 {
	text-align: center;
}
table {	
	width: 500px;
	align: center;
	margin: auto;
	margin-top: 50px;
	border: 1px solid grey;
}
	
</style>
<body>
<h3>관리자 로그인</h3>
	
    	<form action = "adminLogin.jsp">
    	<table >
    	<tr>
    		<td>아이디</td>
    		<td><input type="text" name="adminId"></td>
    	</tr>
    	<tr>
    		<td>비밀번호</td>
    		<td><input type="password" name="adminPwd"></td>
    	</tr>
    	<tr >
    		<td colspan=2><input class="button-blue" type="submit" value="로그인"></td>
    	</tr>

    	</table>
		</form>

</body>
</html>