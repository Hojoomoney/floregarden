<%@page import="com.util.www.NoticeDTO"%>
<%@page import="com.util.www.NoticeDAO"%>
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
		String bno = request.getParameter("bno");
				NoticeDAO dao = new NoticeDAO(application);
				NoticeDTO dto = dao.read(Integer.parseInt(bno));
				dao.close();
		%>
		<jsp:include page="/admin/sidebar.jsp" />
	<main id="pgmain">
					
					<table width="100%" border="1">
						<tr>
							<td><h3><%= dto.getTitle() %></h3></td>
						</tr>
						<tr>
							<td style = "text-align: right;">작성일 : <%= dto.getRegDate() %></td>
						</tr>
						<tr>
							<td><h5><%= dto.getContent() %></h5></td>
						</tr>
						
					</table>
					<button onClick = "confirmDelete()">삭제하기</button>
					<button onClick = "location.href='/Floregarden/admin/notice/notice_modify.jsp?bno=<%= dto.getBno() %>'">수정하기</button>
					<button onClick = "location.href='/Floregarden/admin/admin.jsp'">목록 보기</button>
	</main>
	<script>
function confirmDelete() {
  var confirmResult = confirm("정말로 삭제하시겠습니까?");

  if (confirmResult) {
    // "예"를 선택한 경우
    var bno = '<%= dto.getBno() %>';
    var url = '/Floregarden/admin/notice/notice_delete.jsp?bno=' + bno;
    location.href = url;
  } else {
    // "아니요"를 선택한 경우 또는 대화상자를 닫은 경우
    // 아무 작업 없음
  }
}
</script>
</body>
</html>