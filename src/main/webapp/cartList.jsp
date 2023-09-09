<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
        <title>상품 설명</title>
        <meta name="description" content="Granada is a premium, responsive and bootstrap based ecommerce template">

        <!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="/Floregarden/css/bootstrap.min.css">
        <link rel="stylesheet" href="/Floregarden/css/style.css">
        <link rel="stylesheet" href="/Floregarden/css/responsive.css">
        
        <!-- Favicon and Apple Icons -->
        <link rel="icon" type="image/png" href="/Floregarden/images/icons/icon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="/Floregarden/images/icons/apple-icon-57x57.png">
        <link rel="apple-touch-icon" sizes="72x72" href="/Floregarden/images/icons/apple-icon-72x72.png">

        <!--- jQuery -->
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="/Floregarden/js/jquery-2.1.1.min.js"><\/script>')</script>
</head>
<body>
<div id="wrapper">
	<jsp:include page="/header.jsp"/>
	


        <section id="content" role="main">
            <div class="breadcrumb-container">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <ul class="breadcrumb">
                                <li><a href="index.html" title="Home">Home</a></li>
                                <li class="active">장바구니</li>
                            </ul>
                        </div><!-- End .col-md-12 -->
                    </div><!-- End .row -->
                </div><!-- End .container -->
            </div><!-- End .breadcrumb-container -->

            <div class="container">
                <div class="row">
                    <div class="col-md-12">

                        <table class="table cart-table">
                            <thead>
                                <tr>
                                    <th class="table-title">제품명</th>
                                    <th class="table-title">제품코드</th>
                                    <th class="table-title">단가</th>
                                    <th class="table-title">수량</th>
                                    <th class="table-title">소계</th>
                                    <th><a href="<%= request.getContextPath() %>/product/removeCart.pro" class="close-button" onclick='return confirm("모든 상품을 삭제하시겠습니까?");'></a></th>
                                </tr>
                            </thead>
                            
                            
                            
                            
                            
                            <tbody>
                            	<c:set var="total" value="0"/>
                            	<c:forEach var="item" items="${ cartList }">
                                <tr>
                                    <td class="product-name-col">
                                        <figure>
                                            <a href="<%= request.getContextPath() %>/product/detail.pro?pno=${ item.pno }"><img src="<%= request.getContextPath() %>/upload/${ item.fileName }" alt="White linen sheer dress"></a>
                                        </figure>
                                        <h2 class="product-name"><a href="<%= request.getContextPath() %>/product/detail.pro?pno=${ item.pno }">${ item.pName }</a></h2>
                                    </td>
                                    <td class="product-code">${ item.sku }</td>
                                    <td class="product-price-col"><span class="product-price-special">${ item.price }원</span></td>
                                    <td>
                                        <div class="custom-quantity-input">
                                            <input type="text" name="quantity" value="${ item.quantity }">
                                        </div>
                                    </td>
                                    <td class="product-total-col"><span class="product-price-special">${ item.price * item.quantity }</span>
                                    </td>
                                    <c:set var="total" value="${ total + item.price * item.quantity }"/>
                                    <td><a href="<%= request.getContextPath() %>/product/removeItem.pro?pno=${ item.pno }&index=2" class="close-button" onclick='return confirm("해당 상품을 삭제하시겠습니까?");'></a></td>
                                </tr>
								</c:forEach>
                            </tbody>
                        </table>

                        <div class="md-margin"></div><!-- space -->
                        
                        <div class="row">
                            <div class="col-md-12">
                                
                                <div class="tab-container left clearfix">
                                    <!-- Tab nav -->
                                    
                                    
 





                                <div class="md-margin"></div><!-- space -->
	                            <div class="col-md-12">
	                                
	                                <table class="table total-table">
	                                    <tbody>
	                                        <tr>
	                                            <td class="total-table-title">주문합계</td>
	                                            <td>${ total }원</td>
	                                        </tr>
	                                        <tr>
	                                            <td class="total-table-title">배송비</td>
	                                            <td>3,000원</td>
	                                        </tr>

	                                    </tbody>
	                                    <tfoot>
	                                        <tr>
	                                            <td>결제금액:</td>
	                                            <td>${ total + 3000 }원</td>
	                                        </tr>
	                                    </tfoot>
	                                </table>
	                                
	                                
	                               <div class="md-margin"></div> 
	                                
	                                

	                            </div><!-- End .col-md-4 -->
                                
                                
                                
                                
                                
                                
                                
                                
                            </div><!-- End .col-md-8 -->

                            <div class="md-margin visible-sm visible-xs clearfix"></div><!-- clear sm-xs -->




						</div>
                        </div><!-- End .row -->
            	<div class="col-md-12">
	                           <div class="col-md-6">     
	
	                                <div class="md-margin"></div>
	                                <div class="text-left">
                            			<a href="javascript:window.history.back();" class="btn btn-custom-5 btn-lger min-width-lg">쇼핑계속하기</a>
	                                </div>
	                            </div>
	                            <div class="col-md-6"> 
	                            <div class="md-margin"></div>
	                                <div class="text-right">
	                                    <button class="btn btn-custom-6 btn-lger min-width-sm" onclick="redirectToCheckout()">주문하기</button>
	                                </div>
	                            </div>
	               </div>
                    </div><!-- End .col-md-12 -->
                </div><!-- End .row -->
            </div><!-- End .container -->
            <div class="lg-margin2x"></div><!-- space -->


    </div><!-- End #wrapper -->

	<jsp:include page="/footer.jsp"/>
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
	<script src="/Floregarden/js/bootstrap.min.js"></script>
    <script src="/Floregarden/js/smoothscroll.js"></script>
    <script src="/Floregarden/js/waypoints.js"></script>
    <script src="/Floregarden/js/waypoints-sticky.js"></script>
    <script src="/Floregarden/js/jquery.debouncedresize.js"></script>
    <script src="/Floregarden/js/retina.min.js"></script>
    <script src="/Floregarden/js/jquery.placeholder.js"></script>
    <script src="/Floregarden/js/jquery.hoverIntent.min.js"></script>
    <script src="/Floregarden/js/owl.carousel.min.js"></script>
    <script src="/Floregarden/js/jquery.selectbox.min.js"></script>
    <script src="/Floregarden/js/jquery.nouislider.min.js"></script>
    <script src="/Floregarden/js/jflickrfeed.min.js"></script>
    <script src="/Floregarden/js/twitter/jquery.tweet.min.js"></script>
    <script src="/Floregarden/js/jquery.bxslider.min.js"></script>
    <script src="/Floregarden/js/main.js"></script>

</body>
</html>