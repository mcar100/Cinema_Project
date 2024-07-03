<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 - 롯데시네마</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/css/movieInfo/MovieInfo.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
	<div id="visual_top" class="visual_top visual_movie_home">
		<div class="inner">
			<div class="slide_wrap slide_visual_movie_home">
				<div class="owl-carousel owl-loaded owl-drag">
					<div class="owl-stage-outer">
						<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); width: 13440px; transition: all 0.5s ease 0s;">							
							<div class="owl-item cloned" style="width: 1920px;">
								<div class="item">
									<a title="화면이동" href="#none">
										<img id="checkvideo" src="https://cf2.lottecinema.co.kr/lotte_image/2024/Beautyfool/Beautyfool_1920420.jpg" data-video="https://cf2.lottecinema.co.kr/lotte_image/2024/Beautyfool/Beautyfool_1280720.mp4" alt="다큐 황은정 스마트폰이 뭐길래 2024년 7월 3일 롯데시네마 단독 선개봉 12세이상관람가">
									</a>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 1920px;">
								<div class="item">
									<a title="화면이동" href="#none">
										<img src="https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_19204202.jpg" data-video="https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4" alt="추락한 비행기 상어의 공격 목숨을 건 서바이벌 노웨이업 6월 19일 대개봉 15세이상관람가">
									</a>
								</div>
							</div>
							<div class="owl-item cloned" style="width: 1920px;">
								<div class="item">
									<a title="화면이동" href="#none">
										<img src="https://cf2.lottecinema.co.kr/lotte_image/2024/Junsu/Junsu_19204202.jpg" data-video="https://cf2.lottecinema.co.kr/lotte_image/2024/Junsu/Junsu_12807202.mp4" alt="에스파: 마이 퍼스트 페이지 절찬상영중 전체관람가 ‘에스파’의 찬란한 꿈의 기록. 그 첫 페이지가 스크린에서 펼쳐진다!">
									</a>
								</div>
							</div>												
						</div>
					</div>
					<div class="owl-nav" style="width: 1903px; margin-left: -951.5px;">
						<button type="button" role="presentation" class="owl-prev">
							<span aria-label="Previous"><</span>
						</button>
						<button type="button" role="presentation" class="owl-next">
							<span aria-label="Next">></span>
						</button>
					</div>
					<div class="owl-dots">
						<button role="button" class="owl-dot" id="dot1">
							<span></span>
						</button>
						<button role="button" class="owl-dot" id="dot2">
							<span></span>
						</button>
						<button role="button" class="owl-dot" id="dot3">
							<span></span>
						</button>
					</div>					
				</div>
				<div class="bx_ctrl" style="left: 1002px;">
					<button class="play">슬라이드 자동재생</button>
					<button class="stop">슬라이드 일시정지</button>
				</div>
			</div>
		</div>
	</div>
	<div id="layerMovieTrailer" class="layer_wrap ty2 layer_movie_trailer" style="left: 50%; top: 50%; margin-top: -261px; margin-left: -485px;">
		<strong class="hidden">레이어 팝업 시작</strong>
		<div class="layer_header">
			<button type="button" class="btn_close btnCloseLayer">팝업 닫기</button>
		</div>
		<div class="layer_contents">
			<video height="100%" width="100%" controls id="vdoPlayer" autoplay></video>
		</div>
		<strong class="hidden txtTabIndex" tabindex="0">레이어 팝업 끝</strong>
	</div>


	<div id="contents">
		<div class="movie_current_list">
			<h3 class="movie_title">
				현재 상영작
				<strong class="t5">TOP 5</strong>
			</h3>
			<ul class="movie_list">
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/인사이드아웃2.jpg" alt="인사이드 아웃2">
							<em class="num_info">1</em>
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
							<span class="ic_grade gr_all"></span>
							인사이드 아웃 2
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">96</span>
								분
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/콰이어트 플레이스.jpg" alt="콰이어트 플레이스">
							<em class="num_info">2</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21204&movieName=%EC%BD%B0%EC%9D%B4%EC%96%B4%ED%8A%B8%20%ED%94%8C%EB%A0%88%EC%9D%B4%EC%8A%A4%3A%20%EC%B2%AB%EC%A7%B8%20%EB%82%A0">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21204">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_15"></span>
							콰이어트 플레이스:첫째 날
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">99</span>
								분
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/핸섬가이즈.jpg" alt="핸섬가이즈">
							<em class="num_info">3</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21170&movieName=%ED%95%B8%EC%84%AC%EA%B0%80%EC%9D%B4%EC%A6%88">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21170">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_15"></span>
							핸섬가이즈
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">101</span>
								분
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/하이재킹.jpg" alt="하이재킹">
							<em class="num_info">4</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21173&movieName=%ED%95%98%EC%9D%B4%EC%9E%AC%ED%82%B9">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21173">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_12"></span>
							하이재킹
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">100</span>
								분
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/김준수 콘서트.jpg" alt="김준수 콘서트">
							<em class="num_info">5</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21179&movieName=%EA%B9%80%EC%A4%80%EC%88%98%20%EC%BD%98%EC%84%9C%ED%8A%B8%20%EB%AC%B4%EB%B9%84%20%EC%B1%95%ED%84%B0%20%EC%9B%90%20%3A%20%EB%A0%88%ED%81%AC%EB%A6%AC%EC%97%90%EC%9D%B4%EC%85%98">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21179">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_all"></span>
							김준수 콘서트 무비 챕터 원 : 레크리에이션
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">114</span>
								분
							</span>
						</span>
					</div>
				</li>
			</ul>
			<a class="btn_txt_more ty2" href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1">더보기</a>
		</div>
		<div class="movie_pre_list">
			<h3 class="movie_title">
				상영 예정작
				<strong class="t5">TOP 5</strong>
			</h3>
			<ul class="movie_list">
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/스물한번째.jpg" alt="스물한번째">							
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">							
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21267">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_all"></span>
							스물한 번째 계절이 널 기다릴 테니까
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">5</span>
								분
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/탈주.jpg" alt="탈주">							
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21144&movieName=%ED%83%88%EC%A3%BC">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21144">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_12"></span>
							탈주
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">94</span>
								분
							</span>
							<span class="remain_info">
								D-
								6
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/스마트폰.jpg" alt="스마트폰">
							
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21303&movieName=%EB%8B%A4%ED%81%90%20%ED%99%A9%EC%9D%80%EC%A0%95%20%3A%20%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8F%B0%EC%9D%B4%20%EB%AD%90%EA%B8%B8%EB%9E%98">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21303">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_12"></span>
							다큐 황은정 : 스마트폰이 뭐길래
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">69</span>
								분
							</span>
							<span class="remain_info">
								D-
								6
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/퍼펙트데이즈.jpg" alt="퍼펙트데이즈">
							
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21187">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_12"></span>
							퍼펙트 데이즈
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">124</span>
								분
							</span>
							<span class="remain_info">
								D-
								6
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/바이올렛.jpg" alt="바이올렛">
							
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">							
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=15666">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_all"></span>
							[보석특가]바이올렛 에버가든 - 영원과 자동 수기 인형 -
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">91</span>
								분
							</span>
						</span>
					</div>
				</li>
			</ul>
			<a class="btn_txt_more ty2" href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1">더보기</a>
		</div>
		<div class="movie_pre_list">
			<h3 class="movie_title">
				아르떼 영화
				<strong class="t5">TOP 5</strong>
			</h3>
			<ul class="movie_list">
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/그시절.jpg" alt="그시절">
							<em class="num_info">1</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=16078&movieName=[%EA%B7%B8%EC%8B%9C%EC%A0%88%ED%8A%B9%EA%B0%80]%EC%86%8C%EB%85%84%EC%8B%9C%EC%A0%88%EC%9D%98%20%EB%84%88">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=16078">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_15"></span>
							[그시절특가]소년시절의 너
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">135</span>
								분
							</span>
							<span class="remain_info">
								D-
								0
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/존오브.jpg" alt="존오브">
							<em class="num_info">2</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21159&movieName=%EC%A1%B4%20%EC%98%A4%EB%B8%8C%20%EC%9D%B8%ED%84%B0%EB%A0%88%EC%8A%A4%ED%8A%B8">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21159">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_12"></span>
							존 오브 인터레스트
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">105</span>
								분
							</span>
							<span class="remain_info">
								D-
								0
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/판문점.jpg" alt="판문점">
							<em class="num_info">3</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21197&movieName=%ED%8C%90%EB%AC%B8%EC%A0%90">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21197">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_12"></span>
							판문점
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">82</span>
								분
							</span>
							<span class="remain_info">
								D-
								0
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/그시절.jpg" alt="그시절">
							<em class="num_info">4</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=17298&movieName=[%EA%B7%B8%EC%8B%9C%EC%A0%88%ED%8A%B9%EA%B0%80]%EA%B7%B8%20%EC%8B%9C%EC%A0%88,%20%EC%9A%B0%EB%A6%AC%EA%B0%80%20%EC%A2%8B%EC%95%84%ED%96%88%EB%8D%98%20%EC%86%8C%EB%85%80">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=17298">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_15"></span>
							[그시절특가]그 시절, 우리가 좋아했던 소녀
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">107</span>
								분
							</span>
							<span class="remain_info">
								D-
								0
							</span>
						</span>
					</div>
				</li>
				<li class>
					<div class="top_info">
						<span class="poster_info">
							<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/프렌치수프.jpg" alt="프렌치수프">
							<em class="num_info">5</em>
						</span>
						<div class="over_box">
							<div class="inner" style="margin-top: -33px;">
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/ticketing?movieCd=21171&movieName=%ED%94%84%EB%A0%8C%EC%B9%98%20%EC%88%98%ED%94%84">예매하기</a>
								<a class="btn_col3 ty3" href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21171">상세정보</a>
							</div>
						</div>
					</div>
					<div class="btm_info">
						<strong class="tit_info">
							<span class="ic_grade gr_15"></span>
							프렌치 수프
						</strong>
						<span class="sub_info1">
							<span class="time blacktype">
								<span class="roboto">135</span>
								분
							</span>
							<span class="remain_info">
								D-
								0
							</span>
						</span>
					</div>
				</li>
			</ul>
			<a class="btn_txt_more ty2" href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1">더보기</a>
		</div>
	</div>
	<div id="banner_section" class="banner_wrap">
		<div class="banner_01">
			<a href="https://www.lottecinema.co.kr/NLCHS/Movie/MovieDetailView?movie=21179">
				<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/김준수 배너.jpg"">
			</a>
		</div>
		<div id="footerBanner" class="banner_type02" style="background-color: rgb(255, 241, 191); background-image: url(&quot;https://cf2.lottecinema.co.kr/lotte_image/2017/bg_01.jpg&quot;); background-repeat: repeat-x; background-position: 0px 0px;">
			<a href="https://www.lottecard.co.kr/app/LPBNFDA_V300.lc?evnBultSeq=8003">
				<img src="<%=request.getContextPath()%>/resources/static/img/movieInfo/롯데카드.png">
			</a>
		</div>
	</div>

	<div id="footer_section" class="footer">
		<div class="inner">
			<span class="f_logo">
				<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/logo_footer.gif" alt="lotte cinema">
			</span>	
				<ul class="f_menu type1">
					<li>
						<a href="https://www.lottecultureworks.com/index.aspx" title="회사소개" target="_self">회사소개</a>
					</li>
					<li>
						<a href="https://www.lottecinema.co.kr/NLCHS/Etc/MemberClause" title="이용약관" target="_self">이용약관</a>
					</li>
					<li>
						<a href="https://www.lottecinema.co.kr/NLCHS/Etc/IndividualInfomationHandlingPolicy" title="개인정보처리방침" target="_self">
							<strong>개인정보처리방침</strong>
						</a>
					</li>
					<li>
						<a href="https://www.lottecinema.co.kr/NLCHS/Etc/EmailCollectionRefusal" title="이메일무단수집거부" target="_self">이메일무단수집거부</a>
					</li>
					<li>
						<a href="https://www.lottecinema.co.kr/NLCHS/Etc/ElectronicManagementPolicy" title="고정형 영상정보처리기기 운영 및 관리방침" target="_self">고정형 영상정보처리기기 운영 및 관리방침</a>
					</li>
					<li>
						<a href="https://www.lottecinema.co.kr/NLCHS/Membership/l_point" title="L.POINT회원안내" target="_self">L.POINT회원안내</a>
					</li>
					<li>
						<a href="https://www.lottecinema.co.kr/NLCHS/Etc/AssignStandard" title="배정기준" target="_self">배정기준</a>
					</li>
					<li>
						<a href="https://www.lottecultureworks.com/Contents/employ/individuals.aspx" title="채용안내" target="_self">채용안내</a>
					</li>
					<li>
						<a href="https://www.lottecultureworks.com/Contents/ad/advertinquiry.aspx" title="광고/임대문의" target="_self">광고/임대문의</a>
					</li>
					<li>
						<a href="https://www.lottecultureworks.com/Contents/ethical/ethicsintroduce.aspx" title="사회적책임" target="_self">사회적책임</a>
					</li>
				</ul>
			<div class="bx_address type1">
				<address>서울특별시 송파구 올림픽로 295 삼성생명 잠실빌딩 18F</address><br>
				<span>대표 이메일
					<em class="roboto pl5">lottecultureworks@lotte.net</em>
				</span>
				<span class="bar">고객센터
					<em class="roboto">1544-8555</em>
					(유료)
				</span>
				<span class="bar">사업자등록번호
					<em class="roboto">313-87-00979</em>
				</span>
				<span class="bar">통신판매업신고번호 제
					<em class="roboto">1184</em>
					호
				</span>
				<a href="#none" title="사업자정보확인 팝업창 열림" class="txt_underline">사업자정보확인</a><br>
				<span>대표이사 최병환</span>
				<span class="bar">개인정보 보호 책임자 이수민</span>
				<span class="bar">호스팅 제공자 롯데이노베이트</span>				
			</div>
			<p class="copyright">Copyright © LOTTE Cultureworks All Right Reserved.</p>
		</div>
		<div class="article_award">
			<div class="inner">
				<ul>
					<li>
						<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_NCSI8.PNG?v=22042601" alt="NCSI / NCSI 영화관부문 8년 연속 1위">
					</li>
					<li>
						<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_kcsi.png?v=21020102" alt="KCSI 영화관부문 7년 연속 1위(총12회)">
					</li>
					<li>
						<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_kssqi-11.png?v=22111001" alt="KS-SQI 영화관부문 11년 연속 1위(총14회)">
					</li>
					<li>
						<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_brandcinema.png?v=21020101" alt="올해의 브랜드대상 영화관 부문 10년 연속 1위">
					</li>
					<li>
						<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_greenstar.png?v=21020101" alt="그린스타 영화관 부문 4년 연속 1위">
					</li>
					<li>
						<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_brandstar.png?v=21020101" alt="대한민국 브랜드 스타 영화관 부문 1위">
					</li>
					<li>
						<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_familyship.png?v=21020101" alt="가족친화 인증기업 선정">
					</li>
					<li>
						<img src="https://www.lottecinema.co.kr/NLCHS/Content/images/common/footer_award_winner.png?v=21020101" alt="소셜미디어 브랜드분야 WINNER 수상">
					</li>
				</ul>
			</div>
		</div>
	</div>

	

<script>
	// 슬라이드
	 $(document).ready(function(){
            var currentIndex = 0; // 현재 슬라이드 인덱스
            var itemWidth = 1920; // 각 슬라이드의 너비
            var slideCount = 3; // 슬라이드의 개수
            var maxIndex = slideCount - 1; // 최대 인덱스
			var slideInterval;

            function updateActiveItem() {
                $('.owl-item').removeClass('active');
                $('.owl-item').eq(currentIndex).addClass('active');
				$('.owl-dot').removeClass('active');
                $('.owl-dot').eq(currentIndex).addClass('active');
			}

            function updateTransform() {
                var translateX = -itemWidth * currentIndex;
                $('.owl-stage').css('transform', 'translate3d(' + translateX + 'px, 0px, 0px)');
            }

            function slideNext() {
                if (currentIndex < maxIndex) {
                    currentIndex++;
                } else {
                    currentIndex = 0;
                }
                updateTransform();
                updateActiveItem();
            }

            function slidePrev() {
                if (currentIndex > 0) {
                    currentIndex--;
                } else {
                    currentIndex = maxIndex;
                }
                updateTransform();
                updateActiveItem();
            }

            $('.owl-prev').click(slidePrev);
            $('.owl-next').click(slideNext);

            slideInterval = setInterval(slideNext, 4000);

			$('.stop').click(function() {
                clearInterval(slideInterval);
                $('.stop').addClass('active');
                $('.play').removeClass('active');
            });

            $('.play').click(function() {
                clearInterval(slideInterval);
                slideInterval = setInterval(slideNext, 4000);
                $('.play').addClass('active');
                $('.stop').removeClass('active');
            });

			$('.owl-dot').click(function() {
                currentIndex = $(this).index();
                updateTransform();
                updateActiveItem();
            });

            // 초기 상태 설정
            updateActiveItem();
		
        });
		
</script>
<script>
	// 영화정보 스크립트
	document.addEventListener('DOMContentLoaded', (event) => {
	const listItems = document.querySelectorAll('.movie_list li');
		listItems.forEach((item) => {
			item.addEventListener('mouseenter', () => {
				item.classList.add('active');
			});
			item.addEventListener('mouseleave', () => {
				item.classList.remove('active');
			});
		});
	});
</script>
<script>
	// 영상 스크립트
	$(document).ready(function() {
		$('.slide_wrap .item a').on('click', function(e) {
			e.preventDefault();
	
			var videoSrc = $(this).find('img').data('video');
			$('#layerMovieTrailer').addClass('active');
			$('#vdoPlayer').attr('src', videoSrc);		
		});
	
		$('.btnCloseLayer').on('click', function() {
			$('#layerMovieTrailer').removeClass('active');
			$('#vdoPlayer').attr('src', '');
		});
	});
</script>

</body>


</html>