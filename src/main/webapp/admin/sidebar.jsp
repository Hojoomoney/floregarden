<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href='/Floregarden/admin/admin.css'>
<style>
  .current {
    color: red;
    background-color: red;
  }
  
</style>
<script>
window.addEventListener('load', function() {
  var sidebar = document.getElementById('pgside');
  var currentPage = determineCurrentPage(); // 현재 페이지를 확인하는 함수 (A, B, C 중 어느 페이지인지 결정)

  // 현재 페이지에 해당하는 카테고리를 강조 표시
  if (currentPage === 'A') {
    sidebar.classList.add('current'); // A 카테고리에 해당하는 스타일 클래스 추가
  } else if (currentPage === 'B') {
    sidebar.classList.add('current'); // B 카테고리에 해당하는 스타일 클래스 추가
  }
});

function determineCurrentPage() {
  var path = location.pathname; // 현재 페이지의 경로를 가져옵니다.

  // 경로를 분석하여 현재 페이지를 식별합니다.
  if (path.includes('/Floregarden/admin/admin.jsp')) {
    return 'A';
  } else if (path.includes('/Floregarden/admin/member.jsp')) {
    return 'B';
  } else {
    return 'C';
  }
}
</script>
</head>
<body>
	    <!-- (A) SIDEBAR -->
	   
    <div id="pgside">
      <div id="pguser">
        <i class="txt">플로어가든</i>
      </div>

      <!-- (A2) MENU ITEMS -->
      <a href="/Floregarden/admin/admin.jsp" >
        <i class="ico">&#9733;</i>
        <i class="txt">공지사항</i><br>
      </a>
      <a href="/Floregarden/admin/faq.jsp" >
        <i class="ico">&#9734;</i>
        <i class="txt">자주 묻는 질문</i><br>
      </a>
      <a href="/Floregarden/admin/member.jsp" >
        <i class="ico">&#9728;</i>
        <i class="txt">회원관리</i>
      </a>
      <a href="<%= request.getContextPath() %>/product/list.pro" class="menu-item" >
        <i class="ico">&#9737;</i>
        <i class="txt">제품관리</i>
      </a>
    	<%	if(session.getAttribute("adminId") == null) { %>
    	<button class="button-blue" onClick =  "location.href = '/Floregarden/admin/login.jsp'">로그인</button>
    	<% } else { %>
    	<button class="button-blue" onClick = "location.href = '/Floregarden/admin/logout.jsp'">로그아웃</button>
      	<% } %>
    </div>
</body>
</html>