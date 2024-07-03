<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>롯데시네마</title>
<meta id="description"
	content="Happy Memories 롯데시네마는 관람 홤경과 양질의 컨텐츠로 영화를 통해 고객에게 행복한 기억을 선물합니다.">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/static/css/layout/header-common.css">
</head>

<body>
	<div id="header_section" class="header">
		<h1 class="logo">
			<a href="https://www.lottecinema.co.kr/NLCHS/"> <img
				src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/logo.png">
			</a>
		</h1>
		<div class="gnb">
			<ul class="g_menu1">
				<li><a href="https://www.facebook.com/LotteCinema.kr"
					class="btn_facebook" target="_blank" title="롯데시네마 페이스북 새창열림"> <img
						src="https://www.lottecinema.co.kr/NLCHS/Content/images/icon/gnb_facebook.png" />
						페이스북
				</a></li>
				<li><a
					href="https://www.youtube.com/channel/UCi4KivcV3a3yhkycFsjpalQ"
					class="btn_youtube" target="_blank" title="롯데시네마 유튜브 새창열림"> <img
						src="https://www.lottecinema.co.kr/NLCHS/Content/images/icon/gnb_youtube.png" />
						유튜브
				</a></li>
				<li><a href="https://www.instagram.com/lottecinema_official/"
					class="btn_follow" target="_blank" title="롯데시네마 인스타그램 새창열림"> <img
						src="https://www.lottecinema.co.kr/NLCHS/Content/images/icon/gnb_follow2.png">인스타그램
				</a></li>
			</ul>
			<ul class="g_menu2">
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Mypage/MemberVipzone">멤버십</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Customer">고객센터</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Customer/GroupViewingRegistration">단체관람/대관문의</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Member/login">로그인</a></li>
			</ul>
			<ul class="g_menu3">
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point"
					class="btn_my"> <img alt="회원가입"
						src="https://www.lottecinema.co.kr/NLCHS/Content/images/icon/nav_side_my.png">회원가입
				</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing"
					class="btn_reserve"> <img alt="바로 예매"
						src="	https://www.lottecinema.co.kr/NLCHS/Content/images/icon/nav_side_reserve.png">바로
						예매
				</a></li>
				<li>
					<button class="btn_menu_all">
						전체 메뉴 레이어 열기
					</button>
					<div id="allmenu"></div>
				</li>
			</ul>
		</div>

		<div id="nav" class="area__gnbmovingbar">
			<ul>
				<li class=""><a
					href="https://www.lottecinema.co.kr/NLCHS/Ticketing">예매</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/Ticketing"
								title="예매하기">예매하기</a></li>
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/Ticketing/Schedule"
								title="상영시간표">상영시간표</a></li>
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/Ticketing/DiscountGuide"
								title="할인안내">할인안내</a></li>
						</ul>
					</div></li>
				<li class=""><a
					href="https://www.lottecinema.co.kr/NLCHS/Movie">영화</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/Movie" title="홈">홈</a></li>
							<li><a
								href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1"
								title="현재상영작">현재상영작</a></li>
							<li><a
								href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=5"
								title="상영예정작">상영예정작</a></li>
							<li><a href="https://www.lottecinema.co.kr/NLCHS/Movie/Arte"
								title="아르떼">아르떼</a></li>
						</ul>
					</div></li>
				<li class=""><a href="#">영화관</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
						</ul>
					</div></li>
				<li class=""><a
					href="https://event.lottecinema.co.kr/NLCHS/Event">이벤트</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li><a href="https://event.lottecinema.co.kr/NLCHS/Event"
								title="홈">홈</a></li>
							<li><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=20"
								title="영화">영화</a></li>
							<li class=""><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=40"
								title="시사회/무대인사">시사회/무대인사</a></li>
							<li class=""><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=10"
								title="HOT">HOT</a></li>
							<li class=""><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/DetailList?code=50"
								title="제휴할인">제휴할인</a></li>
							<li class=""><a
								href="https://event.lottecinema.co.kr/NLCHS/Event/NearCinemaList"
								title="우리동네영화관">우리동네영화관</a></li>
						</ul>
					</div></li>
				<li class="is-current"><a href="${contextPath}/stores/snack">스토어</a>
					<div style="display: none;">
						<ul style="opacity: 0;">
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store2"
								title="베스트">베스트</a></li>
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store3"
								title="관람권">관람권</a></li>
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store4"
								title="스낵음료">스낵음료</a></li>
							<li class=""><a
								href="https://www.lottecinema.co.kr/NLCHS/CinemaMall#store13"
								title="포토카드">포토카드</a></li>
						</ul>
					</div></li>
				<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
			</ul>
		</div>

	</div>
	<div id="nav" class="area__gnbmovingbar"></div>

	<div id="layerCommonAlert" class="layer_wrap layer_alert laye_wrap200"></div>
	<ul id="layerPopupMulti" class="layer_wrap layerMultiType"></ul>


</body>

</html>