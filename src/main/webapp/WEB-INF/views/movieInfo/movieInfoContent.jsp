<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="movie_screen_box">
		<ul class="tab_btn_type1">
			<li class="active">
				<button type="button" data-id="current" data-flag="1">
					<span>현재 상영작</span>
				</button>
			</li>
			<li>
				<button type="button" data-id="upcoming" data-flag="6">
					<span>상영 예정작</span>
				</button>
			</li>
		</ul>
		<ul class="list_lnk" id="movietype1" style="display: block;">
			<li class="on">
				<a href="#none" role="button" data-id="a" data-flag="2">예매순</a>
			</li>
			<li>
				<a href="#none" role="button" data-id="b" data-flag="3">좋아요 많은순</a>
			</li>
			<li>
				<a href="#none" role="button" data-id="c" data-flag="4">평점 높은순</a>
			</li>
		</ul>
		<ul class="list_lnk" id="movietype2" style="display: none;">
			<li>
				<a href="#none" role="button" data-id="d" data-flag="7">개봉일순</a>
			</li>
			<li>
				<a href="#none" role="button" data-id="e" data-flag="8">예매순</a>
			</li>
			<li>
				<a href="#none" role="button" data-id="f" data-flag="9">평점 높은순</a>
			</li>
		</ul>
		<ul class="movie_list type2">
			<c:forEach var="ma" items="${movieAll}" varStatus="status">
			<li class="screen_add_box">
				<div class="top_info">
					<span class="poster_info">
						<img src="../../../resources/static/img/movieInfo/${ma.poster}" alt="${ma.explanation}">
						<em class="num_info">${ma.number}</em>
					</span>
					<div class="over_box">
						<div class="inner" style="margin-top: -33px;">
							<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=20970&movieName=%EC%9D%B8%EC%82%AC%EC%9D%B4%EB%93%9C%20%EC%95%84%EC%9B%83%202">예매하기</a>
							<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=20970">상세정보</a>
						</div>
					</div>
				</div>
				<div class="btm_info">
					<strong class="tit_info">
						<span class="ic_grade ${ma.grade}"></span>
						${ma.title}
					</strong>
					<span class="sub_info1">
						<span class="time blacktype">
							<span class="roboto">${ma.playTime}</span>
							분
						</span>
						<c:if test="${not empty ma.daysUntilRelease}">
						<span class="remain_info">
							${ma.daysUntilRelease}
						</span>
						</c:if>
					</span>
				</div>
			</li>
			<c:if test="${status.index == 3}">
				<li class="screen_add_box">
					<a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_40&adgroupid=adg_lottecinema_20240530_54&adid=adi_lottecinema_20240530_64" target="_blank" title="새창열기">
						<img src="../../../resources/static/img/movieInfo/LotteCard_184310.png" alt="롯데시네마X롯데카드 디지로카 London 2D 영화관람권 15매 증정">
						<em class="num_info">AD</em>
					</a>
				</li>
			</c:if>
		</c:forEach>
		</ul>
		<button type="button" class="btn_txt_more" style="display: none;">
			<span>펼쳐보기</span>
		</button>
	</div>