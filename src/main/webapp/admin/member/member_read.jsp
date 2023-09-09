 <%@page import="com.util.www.MemberDTO"%>
<%@page import="com.util.www.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="robots" content="noindex">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5">
    <link rel="stylesheet" href='/Floregarden/admin/admin.css'>
    <link rel="stylesheet" href="/Floregarden/css/style.css">
<title>Insert title here</title>
</head>
  <style>
  	button.login {
  		width : 100px;
  		height : 50px;
  		background: greenyellow;
  		color : black;
  		display: block;
  		margin: auto;
  	}
  	button.logout {
  		width : 100px;
  		height : 50px;
  		background: orangered;
  		color : black;
  		display: block;
  		margin: auto;
  	}
  </style>
<body>
		<%
		String uno = request.getParameter("uno");
		MemberDAO dao = new MemberDAO(application);
		MemberDTO dto = dao.read(Integer.parseInt(uno));
		dao.close();
	%>
		<jsp:include page="/admin/sidebar.jsp" />
	<main id="pgmain">
					
					<table width="100%">
						<tr>
							<td>번호</td>
							<td><%= dto.getUno() %></td>
						</tr>
						<tr>
							<td>아이디</td>
							<td><%= dto.getUserId() %></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type = "text" name = "userPwd" value = "<%= dto.getUserPwd() %>"></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type = "text" name = "userName" value = "<%= dto.getUserName() %>"></td>
						</tr>

						<tr>
							<td>이메일</td>
							<td><input type = "text" name = "email" value = "<%= dto.getEmail() %>"></td>
						</tr>

						<tr>
							<td>전화번호</td>
							<td><input type = "text" name = "telephone" value = "<%= dto.getTelephone() %>"></td>
						</tr>

						<tr>
							<td>주소</td>
							<td><input type = "text" name = "address" value = "<%= dto.getAddress() %>"></td>
						</tr>
						<tr>
							<td>가입일</td>
							<td><%= dto.getRegDate() %></td>
						</tr>


					</table>
					<button onClick = "confirmDelete()">삭제하기</button>
					<button onClick = "location.href='/Floregarden/admin/member.jsp'">목록 보기</button>
	</main>
	<script>
function confirmDelete() {
  var confirmResult = confirm("정말로 삭제하시겠습니까?");

  if (confirmResult) {
    // "예"를 선택한 경우
    var userId = '<%= dto.getUserId() %>';
    var url = '/Floregarden/admin/member/member_delete.jsp?userId=' + userId;
    location.href = url;
  } else {
    // "아니요"를 선택한 경우 또는 대화상자를 닫은 경우
    // 아무 작업 없음
  }
}
</script>
</body>
</html>