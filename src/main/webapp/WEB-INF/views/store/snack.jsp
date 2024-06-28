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
<title>스토어 목록 - 롯데시네마</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/static/css/store/store-common.css">
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/static/css/default.css">
</head>
<body>
	<%@ include file="../layout/header.jsp"%>
	<div id="visual_top" class="visual_top visual_mall" style="">
		<div class="inner">
			<img
				src="https://cf.lottecinema.co.kr//Media/WebAdmin/f04df114813f45b18e63e06308211d0f.jpg"
				alt="팝콘&amp;음료, 스낵에서 영화 티켓까지 한번에!">
		</div>
	</div>
	<div id="contents" class="contents_mall_home area__movingbar litype4">
		<ul class="tab_wrap_lnk anchor actionmovingbar">
			<li class="active"><a href="#store2"
				style="width: 25%; left: 0%;">베스트</a></li>
			<li class=""><a href="#store13" style="width: 25%; left: 25%;">포토카드</a></li>
			<li class=""><a href="#store3" style="width: 25%; left: 50%;">관람권</a></li>
			<li class=""><a href="#store4" style="width: 25%; left: 75%;">스낵음료</a></li>
			<li class="wrap_nav_underline"><span class="nav_underline"></span></li>
		</ul>
		<div class="tab_con_lnk">
			<div id="store2" class="lc_wrap ty3" tabindex="0"
				style="outline: none">
				<h3 class="lc_tit mt50">베스트</h3>
				<a href="#none" class="lc_itm">
					<div class="itm_img">
						<img
							src="https://cf.lottecinema.co.kr//Media/WebAdmin/862160d3ebea4cb6bfbffa6f08ad37ab.jpg"
							alt="일반 관람권">
					</div>
					<div class="itm_cont">
						<div class="badge_wrap"></div>
						<div class="itm_tit">
							<h4>일반 관람권</h4>
							<p>일반 관람권 1매</p>
						</div>
						<div class="txt_price_wrap">
							<span class="txt_price">13,000<em>원</em></span>
						</div>
					</div>
				</a> <a href="#none" class="lc_itm">
					<div class="itm_img">
						<img
							src="https://cf.lottecinema.co.kr//Media/WebAdmin/d873a7e7252c45ec8972894bff740499.jpg"
							alt="샤롯데 관람권 상품이미지">
					</div>
					<div class="itm_cont">
						<div class="badge_wrap"></div>
						<div class="itm_tit">
							<h4>샤롯데 관람권</h4>
							<p>샤롯데관람권 1매</p>
						</div>
						<div class="txt_price_wrap">
							<span class="txt_price">35,000<em>원</em></span>
						</div>
					</div>
				</a> <a href="#none" class="lc_itm">
					<div class="itm_img">
						<img
							src="https://cf.lottecinema.co.kr//Media/WebAdmin/828d9b97f9cf43379b0b453929aa6274.jpg"
							alt="콜라 M">
					</div>
					<div class="itm_cont">
						<div class="badge_wrap"></div>
						<div class="itm_tit">
							<h4>콜라 M</h4>
							<p>콜라M</p>
						</div>
						<div class="txt_price_wrap">
							<span class="txt_price">3,000<em>원</em></span>
						</div>
					</div>
				</a>
			</div>
			<div id="store13" class="lc_wrap ty3" tabindex="0"
				style="outline: none;">
				<h3 class="lc_tit mt50">포토카드</h3>
				<a href="#none" class="lc_itm">
					<div class="itm_img">
						<img
							src="https://cf.lottecinema.co.kr//Media/WebAdmin/79c4884f78a14e2ca91d085ec29da64d.jpg"
							alt="포토카드(일반)">
					</div>
					<div class="itm_cont">
						<div class="badge_wrap"></div>
						<div class="itm_tit">
							<h4>포토카드(일반)</h4>
							<p></p>
						</div>
						<div class="txt_price_wrap">
							<span class="txt_price">1,000<em>원</em></span>
						</div>
					</div>
				</a> <a href="#none" class="lc_itm"><div class="itm_img">
						<img
							src="https://cf.lottecinema.co.kr//Media/WebAdmin/e58fc2f452634a96a37d0e58b8a79f36.png"
							alt="짱구는못말려">
					</div>
					<div class="itm_cont">
						<div class="badge_wrap"></div>
						<div class="itm_tit">
							<h4>짱구는못말려 포토카드(5월~6월)</h4>
							<p>
								카드 앞면은 짱구는못말려(프레임형 5종 제공) 포토카드 탬플릿 선택과 나만의 사진 추가, 뒷면은 원하는 문구를
								입력할 수 있습니다.<br>※ 포토카드 가격은 1매 기준입니다.<br>※ 이모티콘은 지원하지
								않습니다.(이모티콘 인쇄 불가)<br>(판매 및 꾸미기 기간 :5/1(수)~6/30(일)
							</p>
						</div>
						<div class="txt_price_wrap">
							<span class="txt_price">3,000<em>원</em></span>
						</div>
					</div> </a>
			</div>

			<div id="store3" class="lc_wrap ty3" tabindex="0"
				style="outline: none;">
				<h3 class="lc_tit mt50">관람권</h3>
				<a href="#none" class="lc_itm"></a>
			</div>

			<div id="store4" class="lc_wrap ty3" tabindex="0"
				style="outline: none;">
				<h3 class="lc_tit mt50">스낵음료</h3>
				<a href="#none" class="lc_itm"><div class="itm_img">
						<img
							src="https://cf.lottecinema.co.kr//Media/WebAdmin/113c4f562c6e4c9d94e973b590f594ab.jpg"
							alt="스위트콤보 상품이미지">
					</div>
					<div class="itm_cont">
						<div class="badge_wrap"></div>
						<div class="itm_tit">
							<h4>스위트콤보</h4>
							<p>오리지널L + 탄산음료M2</p>
						</div>
						<div class="txt_price_wrap">
							<span class="txt_price">11,000<em>원</em></span>
						</div>
					</div></a>
			</div>
		</div>
	</div>

</body>
</html>