<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>배송정책</title>
<meta name="description"
	content="Granada is a premium, responsive and bootstrap based ecommerce template">

<!--[if IE]> <meta http-equiv="X-UA-Compatible" content="IE=edge"> <![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/Floregarden/css/bootstrap.min.css">
<link rel="stylesheet" href="/Floregarden/css/revslider-section.css">
<link rel="stylesheet" href="/Floregarden/css/style.css">
<link rel="stylesheet" href="/Floregarden/css/responsive.css">

<!-- Favicon and Apple Icons -->
<link rel="icon" type="image/png" href="/Floregarden/images/icons/icon.png">
<link rel="apple-touch-icon" sizes="57x57"
	href="/Floregarden/images/icons/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="/Floregarden/images/icons/apple-icon-72x72.png">

<!--- jQuery -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script>
	window.jQuery
			|| document
					.write('<script src="/Floregarden/js/jquery-2.1.1.min.js"><\/script>')
</script>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<style>
table {
	border: 0px solid;
	border-collapse: collapse;
	text-align: center;
}

th, td {
	border: 1px solid;
	padding: 10px 5px;
	text-align: center;
}

th {
	background-color: #14a872;
	color: white;
}

/* 짝수줄만 배경색을 다르게 */
tr:nth-child(2n+0) {
	background-color: #e7e2c6;
}

td:nth-child(1) {
	width: 40%
}

th {
	border-bottom: double red;
}

table>:nth-child(1) {
	border: 2px solid #fbfaf4;
}
a {
	 text-decoration: none;
}
textarea {
			width: 100%;
			height: 800px;
			padding: 10px;
			box-sizing: border-box;
			border-radius: 5px;
			font-size: 16px;
			resize: both;
		}
</style>

<body>
	<div id="wrapper">
		<jsp:include page="/header.jsp" />

<div class="container">
			<div class="row">
				<div class="col-md-12">
				 <div class="lg-margin"></div>
					<h2>
						<strong>배송 정책</strong>
					</h2>
					<hr>
		<table border = "1" width = "100%">
			<tr>
				<td><textarea name="delivery">배송정책
1. 배송 안내 및 정보
1-1. 연휴 및 공휴일 배송
싱싱한 꽃으로 고객님들께 전해드리기 위해 공휴일에는 꽃을 받아보시기 어렵습니다.
공휴일에 배송되는 정기구독 상품은 자동적으로 2주 뒤로 조정됩니다. (샘플러는 1주 뒤로 조정)
[공휴일 기준: 설 명절, 추석 명절을 포함한 모든 법정 공휴일]
택배사의 물량이 많은 설, 추석, 어린이날 주간에는 온전한 꽃다발로 전해드리기 위해 FloreGarden의 배송일이 구매시에 자동 변경지정 됩니다. 변경된 날짜는 [마이페이지-정기구독] 탭에서 확인 가능합니다.
[서울 기준 -11ºC] 이하의 날씨에는 꽃의 냉해 방지를 위해 배송이 미뤄질 수 있습니다.
1-2. 배송비 정책
[공통] 구매 금액 합산 50,000원 이상일 경우 배송비는 무료입니다. (단, [정기구독] 상품은 구매금액 합산에 포함되지 않습니다.)
[유의사항] 일부 50,000원 미만의 배송비 무료 상품은 구매금액 합산에 포함되지 않습니다.
1-3. 일반배송 (택배배송)
[배송일] 선택하신 수령일 전날 발송되어 해당 일에 수령합니다.
[배송방법] 우체국 택배와 cj대한통운 택배를 통해서 배송되며, 카카오톡 알림톡을 통해 주문하신 분께 송장 번호를 개별적으로 공지합니다.
[배송지역] 전국 모든 지역에 배송이 가능합니다. (제주도 및 도서 산간 지역은 1~2일 늦어질 수 있습니다.)
[배송시간] 택배로 배송되는 특성상 당일 정확한 배송 시간 안내는 어려운 점 양해 부탁드려요.
해당 주소지에 평소 택배 집배원님이 배송 가시는 시간에 받아보실 수 있습니다.
1-4. 새벽배송
[배송지역] 서울/경기/충청 일부지역에만 제공되며, 관공서, 학교, 병원, 시장, 공단 지역, 산간 지역, 백화점 등은 배송이 불가합니다.
[배송방법] 새벽배송은 오전 8시 이전까지 작성하신 배송지로 배송되며, 그 외 지역은 일반배송 (택배배송)으로 발송됩니다.
[배송시간] 오후 3시 이전 주문완료건에 대하여 배송당일 오전 8시 이전까지 배송받을 수 있습니다. 폭설, 한파, 자연재해 등 도로상황이 좋지 못할 경우 다소 지연될 수 있습니다.
[배송비 정책] 새벽배송으로 주문 시 2,000원의 배송비가 부과됩니다.
[유의사항]
새벽배송은 저온의 온도를 유지하기 위해 단열재 없이 배송되지만, 기상상황 등에 따라 유동적으로 변동될 수 있습니다.
결제시, 공동현관 비밀번호 기입이 필수이며, 미기입시 1층 현관에 배송됩니다.
엘레베이터가 아닌 도보로 배송을 해야하는 주소지는 5층 이상의 경우 배송이 어려워, 택배함 혹은 경비실 등에 대응 배송 될 수 있습니다.
배송지 정보 미기재 및 오기재로 인해 배송이 어려운 경우 공동현관 앞 또는 경비실로 대응 배송될 수 있으며, 이에 따른 미배송 및 분실, 반송될 경우 취소/환불이 불가합니다.
일부 지역은 배송 전일 늦은 저녁에 배송될 수 있습니다.
새벽배송은 겨울기간 (12월~3월말) 냉해를 막기 위해 일시 중단될 수 있습니다.
이전 새벽배송 주문 건은 위 기간 동안 일반 택배로 변경되어 발송됩니다.
자연재해로 인하여 교통 및 기상 상황이 좋지 못할 경우, 배송이 지연될 수 있는 점에 대해 양해 부탁드립니다.
카드키로만 출입이 가능한 배송지는 배송에 제한이 될 수 있습니다.
[새벽배송 가능지역]
1) 서울특별시
전지역가능
2) 인천광역시
계양구, 부평구, 남동구, 연수구, 미추홀구, 서구, 동구,
중구(송현동, 송림동, 화수동, 만석동, 화평동, 송월동, 북성동, 항동, 해안동, 중앙동, 관동, 신포동, 내동, 전동, 인현동, 용동,
경동, 금곡동, 창영동, 도원동, 선화동, 유동, 신흥동, 신생동, 사동, 답동, 율목동, 운서동(일부), 운남동(일부), 중산동(일부))
3) 경기도
3-1) 전지역가능
안양시, 부천시, 구리시, 성남시, 수원시, 광명시, 의정부시, 안산시, 시흥시 (안산/시흥 공단지역 제외)
3-2) 일부지역 가능
(고양시)
덕양구 - 벽제, 고양, 내유, 관산, 대자, 선유, 오금, 효자, 북한, 동산, 용두)제외 전지역가능
일산동구 - 전지역가능
일산서구 - 전지역가능
(광주시)
오포읍(일부), 태전동(일부), 장지동(일부), 역동, 경안동, 탄벌동(일부), 송정동(일부)
(과천시)
관문동제외 전지역가능
(용인시)
수지구고기동, 처인구제외 전지역가능
(하남시)
미사동(미사1~2동), 신장동(신장1~2동), 덕풍동(덕풍1~3동), 망월동, 선동, 풍산동, 창우동, 천현동, 학암동, 위례동
(파주시)
금촌동(금촌1~3동), 운정1~3동, 야동동, 다율동, 와동동, 목동동, 동패동, 문발동, 야당동, 교하동
(화성시)
병점동(병점1~2동), 동탄1~8동, 진안동, 반월동, 기산동, 능동, 반송동, 석우동, 영천동, 청계동, 오산동, 목동, 산척동, 봉담읍일부, 새솔동
(의왕시)
내손동(내손1~2동), 포일동, 오전동, 고천동, 청계동
(군포시)
군포1~2동, 산본동(산본1~2동), 금정동, 당동, 당정동, 부곡동, 광정동, 궁내동, 수리동, 재궁동, 오금동
(김포시)
양촌읍, 고촌읍, 운양동, 장기동, 구래동, 마산동, 걸포동, 감정동, 사우동, 북변동, 풍무동
(남양주시)
오남읍(일부), 진접읍, 진건읍, 와부읍, 별내면, 퇴계원면, 다산동(다산1~2동), 별내동, 평내동, 호평동, 금곡동, 이패동, 도농동, 지금동
(오산시)
양산동,세교동,외삼미동,금암동,내삼미동,수청동,은계동,궐동,서동,벌음동,탑동,누읍동,갈곶동,청호동,고현동,원동,부산동,오산동,청학동,가수동
(평택시)
고덕면, 팽성읍, 신장동, 독곡동, 지산동, 서정동, 이중동, 장안동, 도일동, 장당동, 가재동, 철괴동, 칠원동, 지제동, 세교동, 통복동, 평택동, 군문동, 합정동, 비전동, 소사동, 용이동, 죽백동, 동삭동
(양주시)
옥정동, 고암동 (일부)
(포천시)
소홀읍 송우리 (일부)
4) 충청남도
4-1) 일부지역 가능
(천안 - 동남구)
구성동(일부), 다가동, 대흥동, 문화동, 봉명동(일부), 사직동(일부), 삼룡동(일부), 성황동, 신방동(일부), 신부동(일부), 쌍용동, 영성동, 오룡동, 용곡동(일부), 원성동(일부), 청당동(일부), 청수동
(천안 - 서북구)
두정동(일부), 백석동(일부), 부대동(일부), 불당동(일부), 성성동(일부), 성정동, 쌍용동, 와촌동, 차암동(일부)
(아산시)
권곡동, 모종동, 방축동, 신동, 실옥동, 온천동, 용화동, 풍기동, 배방읍 (갈매리, 공수리, 북수리, 세교리, 장재리), 탕정면 (매곡리, 명암리, 용두리)
2. 교환 및 환불 정책
[결제 완료] 상태라면 언제든지 홈페이지 및 고객센터를 통해 해지 가능합니다. (마이페이지 > 주문내역)
[발송 준비] 단계에서는 주문 내역 변경 및 주문 취소가 불가합니다.
[배송 완료] 배송 이후에는 원칙적으로 환불이 불가하며, happiness program에 따라 꽃 신선도, 배송 상태(꽃 부러짐) 등 문제가 있는 경우에는 동일 꽃 혹은 동일 크기의 꽃으로 다시 보내드립니다.
[해지금액]
1개월, 2개월, 3개월, 6개월 정기권 중도 해지 시, 이미 받은 꽃의 횟수 만큼 (할인 전 1회 이용금액)과 증정품 금액이 차감됩니다.
6개월권 구매자의 경우 9회차 꽃 수령 이후에는 중도 해지 및 환불이 불가합니다.
[기타] 무통장 결제의 환불은 주문취소요청이 확인된 날짜 기준으로 다음날(휴일 제외)에 일괄적으로 이루어집니다.
3. 결제 안내
[정기결제] - 횟수를 정하지 않고 해지 시까지 꽃을 정기 배송받으시는 분들을 위한 상품입니다.
꽃을 수령하시고 차주(다음 주) 월~화요일에 다음 회차의 정기 선결제가 이루어집니다.
정기결제 상품에 쿠폰 및 포인트 사용은 1회 첫 결제시에만 적용 가능합니다. 2회차 부터는 쿠폰적용과 포인트 사용이 불가합니다.
[1개월/2개월/3개월/6개월 정기권] 개월 구독권의 경우, 결제시점에 한 번에 선결제가 진행 됩니다.
[자동결제 해지 및 환불] 원할 때면 언제든 마이페이지 > 주문내역을 통해 가능합니다.
[포인트 환급] 6개월(2주) 구매자 대상 포인트 환급은 총 12회차 수령 후 이루어지며 1회 구독권에 상응하는 포인트로 돌려드립니다.
포인트는 마지막 회차 발송이 완료된 시점으로부터 5일 내 돌려드립니다.</textarea></td>
			</tr>
		</table>

</div>
</div>
</div>


		<jsp:include page="/footer.jsp" />


		<script src="/Floregarden/js/bootstrap.min.js"></script>
		<script src="/Floregarden/js/smoothscroll.js"></script>
		<script src="/Floregarden/js/waypoints.js"></script>
		<script src="/Floregarden/js/waypoints-sticky.js"></script>
		<script src="/Floregarden/js/jquery.debouncedresize.js"></script>
		<script src="/Floregarden/js/retina.min.js"></script>
		<script src="/Floregarden/js/imagesloaded.min.js"></script>
		<script src="/Floregarden/js/jquery.placeholder.js"></script>
		<script src="/Floregarden/js/jquery.hoverIntent.min.js"></script>
		<script src="/Floregarden/js/twitter/jquery.tweet.min.js"></script>
		<script src="/Floregarden/js/main.js"></script>

	</div>
</body>
</html>