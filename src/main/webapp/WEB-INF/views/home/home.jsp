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
				<a title="영상표출" class="video-link" href="#" onclick="openModal('https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4');">
					<img src="resources/static/img/Beautyfool_main.jpg">
				</a>
				
			</li>
			<li>
				<img src="resources/static/img/Junsu_main.jpg">
			</li>
			<li>
				<img src="resources/static/img/LoveLiesBleeding_main.jpg">
			</li>
			<li>
				<img src="resources/static/img/NoWayUp_main.jpg">
			</li>
		</ul>
		<button type="button" class="btn_left" id="btn_left" onclick="leftBtn();"></button>
		<button type="button" class="btn_right" id="btn_right" onclick="rightBtn();"></button>
	</div>
</div>
<div class="header_movie_list">
	
</div>

<!-- 동영상 모달 -->
<div id="myModal" class="modal">
  <div class="modal-content">
    <span class="close" onclick="closeModal()">&times;</span>
    <video controls autoplay style="width: 100%;">
        <!-- 비디오 소스 -->
        <source id="videoSource" src="https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4" type="video/mp4">
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
    },2000);
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

//모달 열기 함수
function openModal(videoUrl) {
    var modal = document.getElementById('myModal');
    var videoSource = document.getElementById('videoSource');
    
    videoSource.src = videoUrl; // 동영상 URL 설정
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