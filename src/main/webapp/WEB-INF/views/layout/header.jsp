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
	href="${contextPath}/resources/static/css/layout/header.css">
</head>

<body>
	<div id="header_section" class="header">
		<h1 class="logo">
			<a href="/home">
				LOTTE CINEMA
			</a>
		</h1>
		<div class="gnb">
			<ul class="g_menu1">
				<li><a href="https://www.facebook.com/LotteCinema.kr"
					class="btn_facebook" target="_blank" title="롯데시네마 페이스북 새창열림">
						페이스북
					</a>	
				</li>
				<li><a href="https://www.youtube.com/channel/UCi4KivcV3a3yhkycFsjpalQ"
					class="btn_youtube" target="_blank" title="롯데시네마 유튜브 새창열림">
						유튜브
					</a>	
				</li>
				<li><a href="https://www.instagram.com/lottecinema_official/"
					class="btn_follow" target="_blank" title="롯데시네마 인스타그램 새창열림">
						인스타그램
					</a>	
				</li>
			</ul>
			<ul class="g_menu2">
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Mypage/MemberVipzone">멤버십</a></li>
				<li><a href="/customer">고객센터</a></li>
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Customer/GroupViewingRegistration">단체관람/대관문의</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Member/login">로그인</a></li>
			</ul>
			<ul class="g_menu3">
				<li><a
					href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point"
					class="btn_my">회원가입
				</a></li>
				<li><a href="https://www.lottecinema.co.kr/NLCHS/Ticketing"
					class="btn_reserve">바로 예매
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
					href="/ticket">예매</a>
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
					href="/movieInfo">영화</a>
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
							<li>
								<a href="#" title="스페셜관">스페셜관</a>
								<div style="display: none">
									<ul style="opacity: 0;">
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialIndex" title="영화관_스페셜관_홈">홈</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=300" title="영화관_스페셜관_샤롯데">샤롯데</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=940" title="영화관_스페셜관_수퍼플렉스">수퍼플렉스</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=931" title="영화관_스페셜관_수퍼MX4D">수퍼MX4D</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=930" title="영화관_스페셜관_수퍼 4D">수퍼 4D</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=980" title="영화관_스페셜관_수퍼 S">수퍼 S</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=988" title="영화관_스페셜관_수퍼LED">수퍼LED</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=986" title="영화관_스페셜관_씨네컴포트(리클라이너)">씨네컴포트(리클라이너)</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=960" title="영화관_스페셜관_씨네패밀리">씨네패밀리</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=200" title="영화관_스페셜관_씨네커플">씨네커플</a>
										</li>
										<li>
											<a href="https://www.lottecinema.co.kr/NLCHS/Cinema/SpecialCinema?divisionCode=2&screendivcd=950" title="영화관_스페셜관_씨네비즈">씨네비즈</a>
										</li>
									</ul>
								</div>
							</li>
						</ul>
					</div>
				</li>
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
				<li class="wrap_nav_underline">
					<span class="nav_underline"></span>
				</li>
			</ul>
		</div>

	</div>
	<div id="nav" class="area__gnbmovingbar"></div>

	<div id="layerCommonAlert" class="layer_wrap layer_alert laye_wrap200"></div>
	<ul id="layerPopupMulti" class="layer_wrap layerMultiType"></ul>


</body>

</html>