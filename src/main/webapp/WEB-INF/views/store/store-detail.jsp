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
<link rel="stylesheet" type="text/css" 	href="/resources/static/css/store/detail-common.css">
<link rel="stylesheet" type="text/css" 	href="/resources/static/css/default.css">

<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>


</head>
<body>

	<%@ include file="../layout/header.jsp"%>
	<div id="sub_section">
		<div id="contents"
			class="contents_mall_detail area__movingbar litype2">
			<div class="pd_wrap">
				<div class="pd_img">
					<div class="main_img">
						<img class=""
							src="${serverUrl}/${snackDetail.imageUUID}" alt="${snackDetail.snackName}">
					</div>
				</div>
				<div class="pd_detail">
					<table class="pd_table" summary="상품 상세설명에 대한 표입니다">
						<caption>상품 상세내용</caption>
						<colgroup>
							<col style="width: 30%;">
							<col style="width: auto;">
						</colgroup>
						<thead>
							<tr>
								<th scope="row" class="badge_wrap" colspan="2"></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row" class="tit" colspan="2">${snackDetail.snackName}</th>
							</tr>
							<tr>
								<td></td>
								<td><span class="txt_price">${snackDetail.price}</span></td>
							</tr>
							<tr>
								<th scope="row">구성품</th>
								<td>${snackDetail.items}</td>
							</tr>
							<tr>
								<th scope="row">구매제한</th>
								<td>${snackDetail.maxPurchase}</td>
							</tr>
							<tr>
								<th scope="row">유효기간</th>
								<td>온라인 관람권 24 개월</td>
							</tr>
							<tr>
								<th scope="row">사용가능 영화관</th>
								<td><button id="availableCinema" class="btn_col4 ty3 rnd"
										title="레이어팝업 열기">온라인 관람권</button>&nbsp;</td>
							</tr>
						</tbody>
					</table>
					<div class="bx_num">
						<button class="btn_mins">삭제</button>
						<div class="txt_num">1</div>
						<button class="btn_plus">추가</button>
					</div>
					<div class="txt_price_wrap">
						총 상품금액<strong class="txt_price_str">${snackDetail.price}<em>원</em></strong>
					</div>
					<div class="btn_wrap">
						<button class="btn_col2 ty7">선물하기</button>
						<button class="btn_col1 ty7" onclick="requestPay()">구매하기</button>
					</div>
				</div>
			</div>
			<ul class="tab_wrap outer pd_tab actionmovingbar">
				<li class="active">
					<button type="button" class="tab_tit" style="width: 50%; left: 0%;">
						<span>사용방법</span>
					</button>
					<div class="tab_con">
						<h4 class="hidden">사용방법</h4>
						<h5 class="sec_tit">사용방법</h5>
						<ul class="list_txt">
							<p>${snackDetail.guide}</p>
						</ul>
					</div>
				</li>
				<li class="">
					<button type="button" class="tab_tit"
						style="width: 50%; left: 50%;">
						<span>유의사항</span>
					</button>
					<div class="tab_con">
						<h4 class="hidden">유의사항</h4>
						<h5 class="sec_tit">취소/환불</h5>
						<ul class="list_txt">
							<p>${snackDetail.notes}</p>
						</ul>
					</div>
				</li>
				<li class="wrap_nav_underline"><span class="nav_underline"></span>
				</li>
			</ul>
		</div>
		<%@ include file="../layout/footer.jsp"%>
		<%@ include file="../commons/vendorBody.jsp"%>
	</div>
	<script src="${contextPath}/resources/static/js/store/store-detail.js"></script>
	<script src="${contextPath}/resources/static/js/store/order.js"></script>
-
</body>
</html>