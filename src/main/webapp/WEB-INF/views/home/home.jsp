<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="resources/static/vendor/jquery/jquery.min.js"></script>
<link href="resources/static/css/slider/slider.css" rel="stylesheet" type="text/css">

<title>롯데시네마</title>
</head>

<body>
<div class="header_img_section">
	<div class="wrap">
		<ul class="img_list">
			<li>
				<a title="영상표출" class="video-link" href="javascript:void(0);" onclick="openModal('https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4');">
					<img src="resources/static/img/Beautyfool_main.jpg">
				</a>
				
			</li>
			<li>
				<a title="영상표출" class="video-link" href="javascript:void(0);" onclick="openModal('https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4');">
					<img src="resources/static/img/Junsu_main.jpg">
				</a>
			</li>
			<li>
				<a title="영상표출" class="video-link" href="javascript:void(0);" onclick="openModal('https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4');">
					<img src="resources/static/img/LoveLiesBleeding_main.jpg">
				</a>
			</li>
			<li>
				<a title="영상표출" class="video-link" href="javascript:void(0);" onclick="openModal('https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4');">
					<img src="resources/static/img/NoWayUp_main.jpg">
				</a>
			</li>
		</ul>
		<button type="button" class="btn_left" id="btn_left" onclick="leftBtn();"></button>
		<button type="button" class="btn_right" id="btn_right" onclick="rightBtn();"></button>
	</div>
</div>


<div class="header_movie_list">
  <div style="border:1px solid red; height: 400px; width: 1200px; position:relative;">
	
	   <div class="header_rank">
	   <div class="rank_list">
			<ul class="rank_img" style="display: flex;">
				
				<li>
					<div style="text-align: center;">
						<div class="image-container">
							<img src="resources/static/img/20970_101_1.jpg">
							 <em class="overlay">1</em> <!-- 이미지 위에 위치할 overlay div -->
						</div>
						<div class="btm_info">
						   <strong class="tit_info">
						   <span class="ic_grade gr_12">12</span>프렌치 수프
						   </strong><span class="sub_info1">
						   <br>
						   <span class="rate_info">예매율&nbsp;<em>0.1%</em></span><span class="star_info" style="cursor: pointer;">8.8</span></span>
						   </div>
					</div>
				</li>
				<li>
					<div class="image-container">
						<img src="resources/static/img/21144_101_1.jpg">
						<em class="overlay">2</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21170_101_1.jpg">
							<em class="overlay">3</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21173_101_1.jpg">
							<em class="overlay">4</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/LotteCard_184262.png">
							<em class="overlay">ad</em>
					</div>
				</li>
			   
			    <li>
			    	<div class="image-container">
							<img src="resources/static/img/21252_101_1.jpg">
							<em class="overlay">5</em>
					</div>
			    </li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21204_101_1.jpg">
							<em class="overlay">6</em>
					</div>	
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/16598_101_1.jpg">
							<em class="overlay">7</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21303_101_1.jpg">
							<em class="overlay">8</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/15666_101_1.jpg">
							<em class="overlay">9</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21179_101_1.jpg">
							<em class="overlay">10</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/16078_101_1.jpg">
							<em class="overlay">11</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21159_101_1.jpg">
							<em class="overlay">12</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/20998_101_1.jpg">
							<em class="overlay">13</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21085_101_1.jpg">
							<em class="overlay">14</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/17298_101_1.jpg">
							<em class="overlay">15</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21090_101_1.jpg">
							<em class="overlay">16</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21171_101_1.jpg">
							<em class="overlay">17</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21187_101_1.jpg">
							<em class="overlay">18</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/20930_101_1.jpg">
							<em class="overlay">19</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21209_101_1.jpg">
							<em class="overlay">20</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/21135_101_1.jpg">
							<em class="overlay">21</em>
					</div>
				</li>
			</ul>
		
	    </div>
	    
		
  </div>	
  <div style="display: flex; justify-content: space-between; height: 100%; align-items: center;">
			<div style="top: 50%;">
				<button type="button" class="info_left" id="info_left" onclick="info_left();"></button>
			</div>
			<div style="top: 50%;">
				<button type="button" class="info_right" id="info_right" onclick="info_right();"></button>
			</div>
		</div>
</div>
</div>
<!-- 동영상 모달 -->
<div id="myModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <video id="videoSource" controls autoplay style="width: 100%;">
        <!-- 비디오 소스 -->
        <!-- <source id="videoSource" type="video/mp4">   -->
 <!-- <source id="videoSource" src="https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4" type="video/mp4"> -->
    </video>
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
</body>

<script>

$(document).ready(function(){
	$('.img_list li').last().prependTo('.img_list');
    setInterval(function(){
       $('.img_list').animate({left:'-='+1920},'slow',function(){
           $('.img_list li') .first().appendTo('.img_list');
           $('.img_list').css('left',0);
       });
    },5000);
    
    $('#info_right').css('display','none');
});



function leftBtn() {
	console.log($('.img_list').css('left'));
	if($('.img_list').css('left') === '0px'){
		console.log('왼쪽 버튼 동작함');
	 	 $('.img_list').animate({left:'-='+1920},'slow',function(){
	       	 $('.img_list li') .first().appendTo('.img_list');
	       	 $('.img_list').css('left',0);
	 	 });
	}
}

function rightBtn() {
	console.log($('.img_list').css('left'));
	if($('.img_list').css('left') === '0px'){
		console.log('오른쪽 버튼 동작함');
		 $('.img_list').css('left', '-1920px');
	        $('.img_list li').last().prependTo('.img_list');
	        $('.img_list').animate({left:'+='+1920},'slow');
	 	/*  $('.img_list').animate({left:'+='+1920},'slow',function(){
	       	 $('.img_list li').last().prependTo('.img_list');
	       	 $('.img_list').css('left',0);
	 	 }); */
	}
	    
}

function info_left(){
		
		console.log('인포 왼쪽 버튼 동작함');
	 	 $('.rank_list').animate({left:'-='+200},'fast',function(){
	 		 if($('#info_right').css('left') === '200px')
	 		 console.log($('.rank_list').css('left'));
	 		 if($('.rank_list').css('left') === '-3400px'){
	 			 /* $('#info_left').css('background-image','none'); */
	 			 $('#info_left').css('display','none');
	 			 console.log('그만!~~');
	 		 }
  	 
	 	 });
	
}

function info_right(){
	
	console.log('인포 왼쪽 버튼 동작함');
 	 $('.rank_list').animate({left:'+='+200},'fast',function(){
 		 console.log($('.rank_list').css('left'));
 		 if($('.rank_list').css('left') === '0px'){
 			 $('#info_right').css('background-image','none');
 			 console.log('그만!~~');
 		 }
 		 
       	 
 	 });

}

//모달 열기 함수
function openModal(videoUrl) {
	
    let modal = document.getElementById('myModal');
    let videoSource = document.getElementById('videoSource');
    console.log("비디오" ,videoSource);
    videoSource.setAttribute('src',videoUrl);
    //videoSource.src = videoUrl; // 동영상 URL 설정
  
    console.log(videoSource.src);
    modal.style.display = 'block'; // 모달 표시
}

// 모달 닫기 함수
function closeModal() {
    var modal = document.getElementById('myModal');
    modal.style.display = 'none'; // 모달 숨김
}

// 모달 외부 클릭 시 닫기
window.onclick = function(event) {
    var modal = document.getElementById('myModal');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}





</script>
</html>