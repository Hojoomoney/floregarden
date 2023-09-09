<%@page import="com.util.www.ProductDTO"%>
<%@page import="com.util.www.ProductDAO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>플로어가든 관리자</title>
<meta charset="utf-8">
<meta name="robots" content="noindex">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.5">
<link rel="stylesheet" href='/Floregarden/admin/admin.css'>
<link rel="stylesheet" href="/Floregarden/css/style.css">
</head>
<style>
button.login {
	width: 100px;
	height: 50px;
	background: greenyellow;
	color: black;
	display: block;
	margin: auto;
}

button.logout {
	width: 100px;
	height: 50px;
	background: orangered;
	color: black;
	display: block;
	margin: auto;
}
</style>

<body>


	<jsp:include page="/admin/sidebar.jsp" />

	<!-- (B) MAIN -->

	<main id="pgmain">
			
			<div style="width: 100%; margin: 0 auto;">
      				<form>
					<table style="width: 100%;">
						<tr>
							<th>이미지</th>
							<th>상품번호</th>
							<th>SKU</th>
							<th>상품이름</th>
							<th>가격</th>
							<th>재고량</th>
							<th>카데고리</th>
							<th>비고</th>
						</tr>
						<c:forEach items="${ pList }" var="item">
						<tr>
							<td><img src="<%= request.getContextPath() %>/upload/${ item.fileName }" width="100px" height="100px"></td>
							<td>${ item.pno }</td>
							<td>${ item.sku }</td>
							<td>${ item.pName }</td>
							<td>${ item.price }</td>
							<td>${ item.stock }</td>
							<td>${ item.category }</td>
							<td><a href="<%= request.getContextPath() %>/product/read.pro?pno=${item.pno}" class="btn btn-default">상세보기 &raquo;</a></td>
						</tr>
						</c:forEach>
					</table>
					</form>
				</div>	
			<div style="text-align: center;">
				<button onclick= "location.href='<%= request.getContextPath() %>/admin/product/addProduct.jsp';" class="button-blue" style="display:inline-block;">제품등록</button>
			</div>
	</main>
</body>
</html>