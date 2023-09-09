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
		
			<table width="100%">
						<tr>
							<td>썸네일</td>
							<td><img src="<%= request.getContextPath() %>/upload/${ product.fileName }" width="150px" height="150px"></td>
						</tr>
						<tr>
							<td>대표이미지1</td>
							<td><img src="<%= request.getContextPath() %>/upload/${ product.fileName2 }" width="150px" height="150px"></td>
						</tr>
						<tr>
							<td>대표이미지2</td>
							<td><img src="<%= request.getContextPath() %>/upload/${ product.fileName3 }" width="150px" height="150px"></td>
						</tr>
						<tr>
							<td>상세설명 이미지</td>
							<td><img src="<%= request.getContextPath() %>/upload/${ product.fileName4 }" width="150px" height="150px"></td>
						</tr>
						<tr>
							<td>상품이름</td>
							<td>${ product.pName }</td>
						</tr>
						<tr>
							<td>상품번호</td>
							<td>${ product.pno }</td>
						</tr>
						<tr>
							<td>SKU</td>
							<td>${ product.sku }</td>
						</tr>
						<tr>
							<td>가격</td>
							<td>${ product.price }</td>
						</tr>

						<tr>
							<td>재고수량</td>
							<td>${ product.stock }</td>
						</tr>

						<tr>
							<td>무게</td>
							<td>${ product.weight }</td>
						</tr>

						<tr>
							<td>크기</td>
							<td>${ product.dimensions }</td>
						</tr>
						<tr>
							<td>개요</td>
							<td>${ product.description }</td>
						</tr>
						<tr>
							<td>상세설명</td>
							<td>${ product.description2 }</td>
						</tr>
						<tr>
							<td>배송비</td>
							<td>${ product.shipping_price }</td>
						</tr>
						<tr>
							<td>카데고리</td>
							<td>${ product.category }</td>
						</tr>

					</table>
					<button class="btn btn-default" onClick = "location.href='<%= request.getContextPath() %>/product/getUpdateProduct.pro?pno=${product.pno }'">수정 하기</button>
					<button class="btn btn-default" onClick = "confirmDelete()">삭제하기</button>
					<button class="btn btn-default" onClick = "location.href='<%= request.getContextPath() %>/product/list.pro'">목록 보기</button>
	</main>
		<script>
function confirmDelete() {
  var confirmResult = confirm("정말로 삭제하시겠습니까?");

  if (confirmResult) {
    // "예"를 선택한 경우
    var pno = ${ product.pno };
    var url = '/Floregarden/product/delete.pro?pno=' + pno;
    location.href = url;
  } else {
    // "아니요"를 선택한 경우 또는 대화상자를 닫은 경우
    // 아무 작업 없음
  }
}
</script>

</body>
</html>