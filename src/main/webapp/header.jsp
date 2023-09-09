<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap');
</style>
</head>
<body>
		<c:set var="flowers" value="flowers" />
		<c:set var="bouquet" value="bouquet" />
		<c:set var="basket" value="basket" />
		<c:set var="box" value="box" />
		<c:set var="plants" value="plants" />
		<c:set var="cactus" value="cactus" />
		<c:set var="air" value="air" />
		<c:set var="orchid" value="orchid" />
		<c:set var="special" value="special" />
		<c:set var="mothersday" value="mothersday" />
		<c:set var="gradu" value="gradu" />
		<c:set var="christ" value="christ" />
		<c:set var="etc" value="etc" />
		<div id="sticky-header" class="fullwidth-menu header1" data-fixed="fixed"></div><!-- End #sticky-header -->
	  	<header id="header" class="fullwidth-menu header1">
			<div class="container" data-clone="sticky">
				<div class="row">
                    <div class="col-sm-12 clearfix">
						<div class="logo-container">
							<h1 class="logo clearfix">
								<a href="/Floregarden/index.jsp" title="Granada - Premium Bootstrap eCommerce Template"> <img src = "/Floregarden/images/logo_50.gif" height = "50px"></a>
							</h1>
						</div><!-- End .logo-container-->
    			         
                        <div class="right-side clearfix">
                            <div class="search-container">
                                <form action="<%= request.getContextPath() %>/product/search.pro" class="search-form">
                                    <input type="search" name="searchWord" class="s" placeholder="원하시는 상품이름을 입력해주세요.">
                                    <a href="#" title="Close Search" class="search-close-btn"></a>
                                    <input type="submit" value="Submit" class="search-submit-btn">  
                                </form>
                            </div><!-- End .search-container -->

                            <div class="right-side-wrapper">
                                <a href="#" class="header-search-btn" title="Search"></a>
                                <div class="user-dropdown dropdown">
                            	<% if (session.getAttribute("userId") != null) { %>
                                    <a title="My Account" class="dropdown-toggle" data-toggle="dropdown"> <span class="dropdown-icon"></span> <span class="dropdown-text">User</span></a>

                                    <ul class="dropdown-menu" role="menu">
                                    	<li><a href ="#" style="color: green;font-size: 1.5em;font-weight: bold; background: #efefef;"><% out.println(session.getAttribute("userId")); %>님</a></li>
                                        <li><a href="/Floregarden/member/mypage.jsp">내 정보</a></li>
                                        <li><a href="/Floregarden/cartList.jsp">장바구니</a></li>
                                        <li><a href="/Floregarden/checkOut.jsp">주문하기</a></li>
                                        <li><a href="/Floregarden/member/logout.jsp">로그아웃</a></li>
                                     </ul>
                                    <% } else {  %> 
                                    <a title="My Account" class="dropdown-toggle" data-toggle="dropdown"> <span class="dropdown-icon"></span> <span class="dropdown-text">User</span></a>

                                    <ul class="dropdown-menu" role="menu">
                                        <li><a href="/Floregarden/member/login.jsp">로그인</a></li>
                                    <% } %>   

                                    </ul>
                                </div><!-- End .user-dropdown -->

                                <div class="cart-dropdown dropdown pull-right">
                                    <a title="Shopping Cart" class="dropdown-toggle" data-toggle="dropdown"><span class="dropdown-icon"></span> 
                                    <c:choose>
                                    <c:when test="${cartList ne null }">
                                    <span class="badge">${cartList.size()}</span>
                                    </c:when>
                                    <c:otherwise>
                                    <span class="badge">0</span>
                                    </c:otherwise>
                                    </c:choose>
                                    <span class="dropdown-text">Shopping Cart</span></a>

                                    <div class="dropdown-menu">
                                        <p class="cart-desc"><b>${cartList.size()} 개의 아이템</b></p>
								<c:set var="total" value="0"/>
                            	<c:forEach var="item" items="${ cartList }">
                                        <div class="product clearfix">
                                            <a href="<%= request.getContextPath() %>/product/removeItem.pro?pno=${ item.pno }&index=1" class="delete-btn" title="Delete Product" onclick='return confirm("해당 상품을 삭제하시겠습니까?");'></a>
                                            <figure class="product-image-container">
                                                <a href="<%= request.getContextPath() %>/product/detail.pro?pno=${ item.pno }" title="Mustard yellow ruffle dress">
                                                    <img src="<%= request.getContextPath() %>/upload/${item.fileName}" alt="Product image" class="product-image">
                                                </a>
                                            </figure>
                                            <div class="product-content">
                                                <h3 class="product-name"><a href="<%= request.getContextPath() %>/product/detail.pro?pno=${ item.pno }" title="Mustard yellow ruffle dress">${ item.pName }</a></h3>
                                                <div class="product-price-container">
                                                    <span class="product-price">${ item.price }</span>
                                                </div><!-- End .product-price-container -->
                                            </div><!-- End .product-content -->
										
                                        </div><!-- End .product -->
                                        <c:set var="total" value="${ total + item.price * item.quantity }"/>
									</c:forEach>
                                     

                                        <div class="clearfix">
                                            <ul class="pull-left action-info-container">
                                                <li>주문합계: <span class="first-color">${ total }원</span></li>
                                            </ul>
                                            <ul class="pull-right action-btn-container">
                                                <li><a href="/Floregarden/cartList.jsp" class="btn btn-custom-5">장바구니</a></li>
                                                <li><button class="btn btn-custom" onclick="redirectToCheckout()">주문하기</button></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div><!-- End .cart-dropdown -->
                            </div><!-- End .right-side-wrapper -->

                            <nav id="main-nav" role="navigation">
                                <div id="responsive-nav">
                                    <a id="responsive-btn" href="#">
                                        <span class="responsive-btn-icon">
                                            <span class="responsive-btn-block"></span>
                                            <span class="responsive-btn-block"></span>
                                            <span class="responsive-btn-block last"></span>
                                        </span>
                                        <span class="responsive-btn-text">Menu</span>
                                    </a><!-- responsive-nav-button -->
                                    <div id="responsive-menu-container">
                                        
                                    </div><!-- End #responsive-menu-container -->
                                </div><!-- End .responsive-nav -->
                                
                                <ul class="menu clearfix">
                                    <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ flowers }">Flowers</a>
                                        <ul>
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ bouquet }">꽃다발</a></li>
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ basket }">꽃바구니</a></li>
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ box }">플라워 박스</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ plants }">Plants</a>
                                        <ul>
                                        
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ cactus }">다육이/선인장</a></li>
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ air }">공기정화식물</a></li>
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ orchid }">서양난/동양난</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ special }">Special Day</a>
                                        <ul>
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ mothersday }">어버이날/스승의날</a></li>
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ gradu }">졸업/입학</a></li>
                                            <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ christ }">크리스마스</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="<%= request.getContextPath() %>/product/category.pro?category=${ etc }">화병/소품</a>
                                    </li>
                                    <li><a href="#">고객센터</a>
                                        <ul>
                                            <li><a href="/Floregarden/notice/notice.jsp">공지사항</a></li>
                                            <li><a href="/Floregarden/notice/faq.jsp">자주 묻는 질문</a></li>
                                            <li><a href="/Floregarden/customer/delivery.jsp">배송정책</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </nav><!-- End #main-nav -->   
                        </div><!-- End .right-side -->
					</div><!-- End .col-md-12 -->
				</div><!-- End .row -->
			</div><!-- End .container -->
        </header><!-- End #header -->
        <script>
        function redirectToCheckout() {
        	  // 세션에서 userId 값 가져오기
        	  var userId = '<%= session.getAttribute("userId") %>';

        	  if (userId === null || userId === 'null' || userId === '') {
        	    // userId가 null인 경우, 알림창을 띄우고 로그인 페이지로 이동
        	    alert('로그인 후 이용하세요');
        	    location.href = '/Floregarden/member/login.jsp';
        	  } else {
        	    // userId가 존재하는 경우, 주문하기 페이지로 이동
        		location.href = '/Floregarden/checkOut.jsp';
        	  }
        	}
        </script>
</body>

</html>