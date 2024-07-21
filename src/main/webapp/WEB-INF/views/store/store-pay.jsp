<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>결제 - 롯데시네마</title>
<link rel="stylesheet" type="text/css"
	href="${contextPath}/resources/static/css/store/store-common.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/static/css/default.css">
<link rel="stylesheet" type="text/css" href="${contextPath}/resources/static/css/store/store-pay.css">
</head>
<body>
		<div id="contents" class="contents_full contents_reserve">
			<div class="wrap_reserve mall">
				<h2 class="hidden">예매하기</h2>
				<div id="reserveStep03" class="section_step_con step03 active">
					<h3 class="hidden">결제</h3>
					<div class="article article_sum_infor">
						<div class="group_top">
							<h4 class="tit">상품정보</h4>
						</div>
						<div class="inner">
							<div class="movie_infor new2020">
								<span class="thm"> <img
									src="https://cf.lottecinema.co.kr//Media/WebAdmin/${snackDetail.imageUUID}"
									alt="일반 관람권"></span><strong class="tit">${snackDetail.snackName}</strong>
								<dl class="dlist_infor">
									<dt class="hidden">내용</dt>
									<dd>${snackDetail.snackName}</dd>
									<dt>수량</dt>
									<dd>${snackInfoDto.quantity}개</dd>
								</dl>
							</div>

						</div>
					</div>
					<div class="article article_pay_method">
						<div class="group_top">
							<h4 class="tit">결제수단</h4>
							<button type="button" class="btn_txt_reset">초기화</button>
						</div>
						<div class="inner">
							<div
								class="mCustomScrollbar _mCS_1 mCS-autoHide mCS_no_scrollbar"
								data-mcs-theme="minimal-dark"
								style="position: relative; overflow: visible;">
								<div id="mCSB_1"
									class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside"
									style="max-height: none;" tabindex="0">
									<div id="mCSB_1_container"
										class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y"
										style="position: relative; top: 0; left: 0;" dir="ltr">
										<div class="group_discount" style="display: block;">
											<h3 class="tit_payment">할인/포인트</h3>
											<div class="wrap_coupon">
												<div class="bx_cate">
													<ul class="list_pay_item cate4">
														<li class="mline" id="point_etc"><button
																class=" disabled">제휴포인트/할인</button></li>
													</ul>
												</div>
											</div>
											<div class="toggle_wrap no couplechk" style="display: none;"></div>
										</div>
										<div class="group_payment">
											<h5 class="tit_payment">최종 결제수단</h5>
											<div class="bx_cate">
												<ul class="list_pay_item cate6">
													<li><button type="button" class="cate1 ">신용카드</button></li>
													<li><button type="button" class="cate2 ">엘페이</button></li>
													<li><button type="button" class="cate3 ">
															<em class="ic_txt_event type2 active">EVENT</em>간편결제
														</button></li>
													<li><button type="button" class="cate5 ty2 ">내통장결제</button></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
								<div id="mCSB_1_scrollbar_vertical"
									class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical"
									style="display: none;">
									<div class="mCSB_draggerContainer">
										<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
											style="position: absolute; min-height: 50px; height: 0px; top: 0px;">
											<div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
										</div>
										<div class="mCSB_draggerRail"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="article article_payment">
						<div class="group_top">
							<h4 class="tit">결제하기</h4>
						</div>
						<div class="inner">
							<div class="select_item_wrap"></div>
							<div class="payment_sum_wrap">
								<dl>
									<dt>상품금액</dt>
									<dd>
										<strong id="product-price">${formattedAmount}</strong>원
									</dd>
								</dl>
								<dl>
									<dt>할인금액</dt>
									<dd>
										-<strong>0</strong>원
									</dd>
								</dl>
								<dl>
									<dt>결제금액</dt>
									<dd>
										총<strong id="total-price">${formattedAmount}</strong>원
									</dd>
								</dl>
								<a href="#none" class="btn_col1 btn_confirm">결제하기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../layout/footer.jsp"%>
		<%@ include file="../commons/vendorBody.jsp"%>
</body>

</html>