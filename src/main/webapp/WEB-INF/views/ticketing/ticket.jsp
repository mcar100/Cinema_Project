<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>예매</title>
<script src="resources/static/vendor/jquery/jquery.min.js"></script>
<link href="resources/static/css/ticketing/ticket.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@ include file="/WEB-INF/views/layout/header.jsp" %>
	<!-- <div style="height:114px;">
		<h4>헤더</h4>
	</div> -->

	<div class="ticket mainArea">
		<div class="contentsArea">
			
			<div class="sideArea">
				<ul class="sideMenu">
					<li style="background-color: #FF243E;">
						<strong>
							<span>01</span><br>상영시간
						</strong>
					</li>
					<li>
						<strong>
							<span>02</span><br>인원/좌석
						</strong>
					</li>
					<li>
						<strong>
							<span>03</span><br>결제
						</strong>
					</li>
					<li>
						<strong>
							<span>04</span><br>결제완료
						</strong>
					</li>
				</ul>
			</div>
			
			<div class="pickArea">
				<div class="cinemaLocation">
					<div class="titBox">
						<h4 class="tit">영화관</h4>
					</div>
					<div class="LocationArea">
						<ul>
							<li>
								<button type="button" class="tab_tit" style="width: 50%; left: 0%; height: 61px; border: none; background-color: #FFF;     border-bottom: 1px solid #CCC;">
									<span>전체</span>
								</button>
								<div class="tab_con" style="position: relative;">
									<div class="cinema_select" style="background-color: #F5F5F5;" >
										<ul style="height: 753px; list-style: none; min-height: 90px; padding:0; ">
											<li class="depth1">
												<a href="#none">MY 영화관<em>(0)</em></a>
												<div class="depth2">
													<div class="mCustomScrollbar _mCS_10 mCS-autoHide mCS_no_scrollbar" data-mcs-theme="minimal-dark" style="position: relative;">
													   <div id="mCSB_10" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: 753px;" tabindex="0">
													      <div id="mCSB_10_container" class="mCSB_container mCS_y_hidden mCS_no_scrollbar_y" style="position:relative; top:0; left:0;" dir="ltr">
															<div class="bx_notice">
																<p class="txt">로그인 후 이용해 주세요.</p>
																<a href="https://www.lottecinema.co.kr/NLCHS/Member/Login?hidUrlReferrer=https%3A%2F%2Fwww.lottecinema.co.kr%2FNLCHS%2FTicketing" class="btn_col3 ty3 rnd">로그인</a>
															</div>
														  </div>
													   </div>
													   <div id="mCSB_10_scrollbar_vertical" class="mCSB_scrollTools mCSB_10_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: none;">
														  <div class="mCSB_draggerContainer">
														     <div id="mCSB_10_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; top: 0px;">
														       <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														     </div>
														     <div class="mCSB_draggerRail"></div>
														  </div>
													   </div>
												    </div>
												 </div>
											</li>
											
											<c:forEach var="item" items="${region}">
												<c:choose>
													<c:when test="${item.regionName eq '서울'}">
														<li class="depth1 active">
													</c:when>
													<c:otherwise>
														<li class="depth1">
													</c:otherwise>
												</c:choose>
													
												<a href="#none">${item.regionName}<em>(${item.cinemaEA})</em></a>
												<div class="depth2">
													<div class="mCustomScrollbar basicCinemaScroll _mCS_1 mCS-autoHide" data-mcs-theme="minimal-dark" style="position: relative; overflow: visible;">
													   <div id="mCSB_1" class="mCustomScrollBox mCS-minimal-dark mCSB_vertical mCSB_outside" style="max-height: none;" tabindex="0">
														  <div id="mCSB_1_container" class="mCSB_container" style="position:relative; top:0; left:0;" dir="ltr">
															<ul>
																<c:forEach var="infos" items="${subInfos}">
																	<c:if test="${item.regionName eq infos.cinemaRegion}">
																		<li class="">
																			<a href="#none" style="width:170px;">${infos.cinemaName}</a>
																		</li>
																	</c:if>
																</c:forEach>
															</ul>
														  </div>
													   </div>
													   <div id="mCSB_1_scrollbar_vertical" class="mCSB_scrollTools mCSB_1_scrollbar mCS-minimal-dark mCSB_scrollTools_vertical" style="display: block;">
														 <div class="mCSB_draggerContainer">
															<div id="mCSB_1_dragger_vertical" class="mCSB_dragger" style="position: absolute; min-height: 50px; display: block; height: 623px; max-height: 719px; top: 0px;">
															  <div class="mCSB_dragger_bar" style="line-height: 50px;"></div>
														    </div>
															<div class="mCSB_draggerRail"></div>
														 </div>
													   </div>
													</div>
											   </div>
											</li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</li>
							<li>
								<button type="button" class="tab_tit" style="width: 50%; left: 50%; height: 61px; position:absolute; top:0; border: none; background-color: #FFF; border-bottom: 1px solid #CCC; font-size: 15px;">
									<span>스페셜관</span>
								</button>
							</li>
							<li class="underLine">
								<span class="nav_underline"></span>
							</li>
						</ul>
					</div>
				</div>
				
				<div class="cinemaPick">
					<div style="height: 55px; border-right: 1px solid #222; text-align: center; background-color: #000; line-height: 55px;">
						<h4 class="tit" style="font-size: 18px; color: #FFF;">영화 선택</h4>
					</div>
					<div class="cinemaArea">
						<div class="list_filter">
								<select title="영화 정렬 방법 선택">
									<option value="A">예매순</option>
									<!-- <option value="B">관객순</option>
									<option value="D">예정작</option> -->
							    </select>
						    <div class="bx_btn_view" style="position: absolute; right: 18px; top: 20px;">
						    	<ul style="list-style: none;">
						    		<li>
						    			<button type="button" class="btn_view_txt viewTxt active">텍스트형</button>
						    		</li>
						    		<li>
						    			<button type="button" class="btn_view_thm viewThm">썸네일형</button>
						    		</li>
						    	</ul>
						    </div>
					   </div>
					   
					   <div class="cinemaPickArea">
					   		<div class="cinemaPickAreaContainer" style="height:754px; overflow: scroll; ">
					   			<ul style="list-style: none; padding:0;">
					   				<c:forEach var="movieTit" items="${allMovies}">
						   			   <li class="">
						   					<a href="#none">
						   						<div class="group_info">
						   							<div class="bx_tit">
						   								<span class="ic_grade ${movieTit.grade}"></span>
	                                               	    <strong class="tit">${movieTit.title}</strong>    
						   							</div>
						   						</div>
						   					</a>
						   				</li>	
					   				</c:forEach>
					   			</ul>
					   		</div>
					   
					   </div>
					   
					   
					 
					</div> 
					</div>
					
				<div class="roomArea">
					<div class="roomDayArea">
						<h4 class="tit" style="font-size: 18px; color: #FFF;">2024-07-18(오늘)</h4>
					</div>
					<div class="roomMainArea">
						<div class="dayPick">
							<div class="dayPickContent">
							 	<ul class="dayList">
							 		<div class="dayOuter">
							 			<div class="dayStage">
							 			
							 			</div>
							 		</div>
							 		<div><div>
							 	</ul>
							</div>
						</div>
						<div>
							<ul>
								<li>
									<div class="roomInfo">
										<div class="movieGroup">
											<div class="movieTit">
												 <span class="ic_grade gr_12"></span>
												 <strong style="margin-left:10px;">탈주</strong>
											</div>
											<div class="showRoom">
												<ul>
													<li style="width: 23.5%;"> 
														<a href="#none">
															<dl>
																<!-- <dt>상영시간</dt> -->
																<dd style="">
																	<strong style="								  
																	        display: block;
    font-size: 15px;
    font-weight: bold;
    text-align: center; 
																	}">12:00</strong>
																</dd>
																<!-- <dt>잔여석</dt> -->
																<dd style="font-size: 11px;">
																	<strong style="color: #427652; font-size: 11px;">120</strong>
																	/ 132
																</dd>
																<!-- <dt>상영관</dt> -->
																<dd style="position: absolute;
																		    right: 15px;
																		    bottom: 3.5px;
																		    font-size: 11px;
																		}"> 4관	</dd>
															</dl>
														</a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	
	
	
	<!-- 배너 -->
	<div style="border: 5px solid blue; height:540px; padding-top: 70px; text-align: center;">
			<div style="border: 1px solid green; margin-bottom: 50px; height:180px;">
				<a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_34&amp;adgroupid=adg_lottecinema_20240705_33&amp;adid=adi_lottecinema_20240705_42" target="" title="화면이동">
					<img src="https://cf2.lottecinema.co.kr/lotte_image/2024/TheBaton/TheBaton_980180.jpg" alt="그리고 바통은 넘겨졌다 7월 17일 대개봉 전체관람가">
				</a>
			</div>
			<div style="border: 2px solid yellow; height:240px;">
				<a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_36&amp;adgroupid=adg_lottecinema_20230227_112&amp;adid=adi_lottecinema_20230227_136" target="_blank" title="새창열기">
					<img src="https://cf2.lottecinema.co.kr/lotte_image/2024/Samsungfire/Samsungfire_9802402.png" alt="삼성화재 다이렉트 착 내 차 보험료 확인하면 스타벅스 아메리카노 1잔 바로 지급 만기일 상관없이 365일 참여 가능">
				</a>
			</div>
	</div>
	<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
	<!-- <div style="height:369px;">
		<h4>풋터</h4>
	</div> -->
	
	
</body>

<script>
		$('a').on('click',function(e){
			
			if(!(!$(this).closest('.header_section').length)){
				e.preventDefault(); // 기본 링크 동작 막기
			}
			const parentUl = $(this).parent().closest('ul');
			const isActive = parentUl.find('li.active').length > 0;
			if(isActive){
				console.log('있다!');
				parentUl.find('li.active').removeClass('active');
			}
			
			const info = $(this).parent().attr('class').split(/\s+/)[0];
			if(info === 'depth1'){
				$(this).parent().addClass('active');
			}else if(info === ''){
				$(this).parent().addClass('active');
			}
			console.log(info);
		})
	
	</script>
</html>