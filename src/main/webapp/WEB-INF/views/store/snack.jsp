<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<c:set var="serverUrl"
	value="https://cf.lottecinema.co.kr//Media/WebAdmin" />

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
			<c:forEach var="snack" items="${snackList}">
				<c:if test="${snack.category == 'BEST'}">
					<div id="store2" class="lc_wrap ty3" tabindex="0"
						style="outline: none">
						<h3 class="lc_tit mt50">베스트</h3>
						<a href="#none" class="lc_itm">
							<div class="itm_img">
								<img src="${serverUrl}/${snack.imageUUID}.jpg"
									alt="${snack.snackName}" />
								
							</div>
							<div class="itm_cont">
								<div class="badge_wrap"></div>
								<div class="itm_tit">
									<h4>${snack.snackName}</h4>
									<p>${snack.items}</p>
								</div>
								<div class="txt_price_wrap">
									<span class="txt_price">${snack.price}<em>원</em></span>
								</div>
							</div>
						</a>
					</div>
				</c:if>
			</c:forEach>
			<c:forEach var="snack" items="${snackList}">
				<c:if test="${snack.category == 'PHOTO_CARD'}">
					<div id="store13" class="lc_wrap ty3" tabindex="0"
						style="outline: none;">
						<h3 class="lc_tit mt50">포토카드</h3>
						<a href="#none" class="lc_itm">
							<div class="itm_img">
								<img src="${serverUrl}/${snack.imageUUID}.jpg"
									alt="${snack.snackName}" />
							</div>
							<div class="itm_cont">
								<div class="badge_wrap"></div>
								<div class="itm_tit">
									<h4>${snack.snackName}</h4>
									<p>${snack.items}</p>
								</div>
								<div class="txt_price_wrap">
									<span class="txt_price">${snack.price}<em>원</em></span>
								</div>
							</div>
						</a>
					</div>
				</c:if>
			</c:forEach>
			<c:forEach var="snack" items="${snackList}">
				<c:if test="${snack.category == 'TICKET'}">
					<div id="store3" class="lc_wrap ty3" tabindex="0"
						style="outline: none;">
						<h3 class="lc_tit mt50">관람권</h3>
						<a href="#none" class="lc_itm">
							<div class="itm_img">
								<img src="${serverUrl}/${snack.imageUUID}.jpg"
									alt="${snack.snackName}" />
							</div>
							<div class="itm_cont">
								<div class="badge_wrap"></div>
								<div class="itm_tit">
									<h4>${snack.snackName}</h4>
									<p>${snack.items}</p>
								</div>
								<div class="txt_price_wrap">
									<span class="txt_price">${snack.price}<em>원</em></span>
								</div>
							</div>
						</a>
					</div>
				</c:if>
			</c:forEach>
			<c:forEach var="snack" items="${snackList}">
				<c:if test="${snack.category eq 'SNACK_DRINK'}">
					<div id="store4" class="lc_wrap ty3" tabindex="0"
						style="outline: none;">
						<h3 class="lc_tit mt50">스낵음료</h3>
						<a href="#none" class="lc_itm">
							<div class="itm_img">
								<img src="${serverUrl}/${snack.imageUUID}.jpg"
									alt="${snack.snackName}" />
							</div>
							<div class="itm_cont">
								<div class="badge_wrap"></div>
								<div class="itm_tit">
									<h4>${snack.snackName}</h4>
									<p>${snack.items}</p>
								</div>
								<div class="txt_price_wrap">
									<span class="txt_price">${snack.price}<em>원</em></span>
								</div>
							</div>
						</a>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
</body>
</html>