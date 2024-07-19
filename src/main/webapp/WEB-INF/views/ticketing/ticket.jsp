<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>예매</title>

<link href="resources/static/css/ticketing/ticket.css" rel="stylesheet" type="text/css">
</head>
<body>

	<div style="height:114px;">
		<h4>헤더</h4>
	</div>

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
								<button type="button" class="tab_tit" style="width: 50%; left: 0%; height: 61px;">
									<span>전체</span>
								</button>
								<div >
									<div style="background-color: #F5F5F5;" >
										<ul style="height: 753px;">
										
										</ul>
									</div>
								</div>
							</li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>
				
				<div class="cinemaPick">
					<div style="height: 55px; border-right: 1px solid #222; text-align: center; background-color: #000; line-height: 55px;">
						<h4 class="tit" style="font-size: 18px; color: #FFF;">영화 선택</h4>
					</div>
					<div></div>
				</div>
				
				<div style="width: 500px; height: 100%;  float: left; overflow: hidden;">
					<div style="height: 55px; border-right: 1px solid #222; text-align: center; background-color: #000; line-height: 55px;">
						<h4 class="tit" style="font-size: 18px; color: #FFF;">2024-07-18(오늘)</h4>
					</div>
					<div></div>
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
	
	<div style="height:369px;">
		<h4>풋터</h4>
	</div>
</body>
</html>