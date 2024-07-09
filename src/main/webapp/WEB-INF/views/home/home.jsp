<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="resources/static/vendor/jquery/jquery.min.js"></script>
<link href="resources/static/css/home/Home.css" rel="stylesheet" type="text/css">

<title>롯데시네마</title>
</head>

<body>


<%@ include file="/WEB-INF/views/layout/header.jsp" %>


<div class="home header_img_section">
	<div class="wrap">
		<ul class="img_list">
		
			  <c:forEach var="item" items="${info}">
        		   <li>
        		   		<a title="영상표출" class="video-link" href="javascript:void(0);"
        		   		   onclick="openModal('${item.moveVidPath}');">
        		   		     	<img src="${item.moveImgPath}${item.moveImgName}">
        		   		</a>
        		   </li>
    		  </c:forEach>
		</ul>
		
		<button type="button" class="btn_left" id="btn_left" onclick="leftBtn();"></button>
		<button type="button" class="btn_right" id="btn_right" onclick="rightBtn();"></button>
	</div>
</div>


<div class="home header_movie_list">
  <div style="height: 400px; width: 1200px; position:relative;">
	
	   <div class="header_rank">
	   		<span class="movi_info_txt">
	   			<a href="https://www.lottecinema.co.kr/NLCHS/Movie/List?flag=1"><em>07.02 15:05</em>&nbsp;기준</a>
	   		</span>
	   <div class="rank_list">
			<ul class="rank_img" style="display: flex;">
					
				<c:forEach var="item" items="${rankInfo}">
				
				</c:forEach>
				<c:forEach var="subItem" items="${subInfo}">		
					<li>
						<div style="text-align: center;"> 
						
							<div class="image-container">
								<img src="${subItem.movieImgPath}${subItem.movieImgName}">
								<em class="overlay">1</em> <!-- 이미지 위에 위치할 overlay div -->
								<div class="over_box">
									<div class="inner">
										<a href="#" class="btn_col3 ty3" title="화면이동" style="display: block; margin-top: 100px; ">예매하기</a>
										<a href="#none" class="btn_col3 ty3" title="화면이동" style="display: block; ">상세정보</a>
									</div>
								</div>
							</div>
							<div class="btm_info" style="overflow: hidden;
													     white-space: nowrap;
													     text-overflow: ellipsis;">
							   <strong class="tit_info">
							   		<span class="ic_grade gr_${subItem.rankDto.movieGrade}">전체</span>${subItem.movieName}
							   </strong>
							   <span class="sub_info1">
							   	   <span class="rate_info">예매율&nbsp;<em>${subItem.rankDto.movieCount}%</em></span>
							   	   
							   	   <span class="star_info" style="cursor: pointer;">${subItem.rankDto.movieStar}</span>
							   </span>
							</div>
						</div>
					</li>
				</c:forEach>
				<!-- <li>
					<div style="text-align: center;"> 
					
						<div class="image-container">
							<img src="resources/static/img/home/21144_101_1.jpg">
							<em class="overlay">2</em> 이미지 위에 위치할 overlay div
						</div>
						<div class="btm_info">
						   <strong class="tit_info">
						   		<span class="ic_grade gr_12">12</span
						   		/>인사이드 아웃2
						   </strong>
						   <span class="sub_info1">
						   	   <span class="rate_info">예매율&nbsp;<em>24.4%</em></span>
						   	   
						   	   <span class="remain_info" style="cursor: pointer;">D-1</span>
						   </span>
						</div>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21170_101_1.jpg">
							<em class="overlay">3</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21173_101_1.jpg">
							<em class="overlay">4</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/LotteCard_184262.png">
							<em class="overlay">ad</em>
					</div>
				</li>
			   
			    <li>
			    	<div class="image-container">
							<img src="resources/static/img/home/21252_101_1.jpg">
							<em class="overlay">5</em>
					</div>
			    </li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21204_101_1.jpg">
							<em class="overlay">6</em>
					</div>	
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/16598_101_1.jpg">
							<em class="overlay">7</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21303_101_1.jpg">
							<em class="overlay">8</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/15666_101_1.jpg">
							<em class="overlay">9</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21179_101_1.jpg">
							<em class="overlay">10</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/16078_101_1.jpg">
							<em class="overlay">11</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21159_101_1.jpg">
							<em class="overlay">12</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/20998_101_1.jpg">
							<em class="overlay">13</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21085_101_1.jpg">
							<em class="overlay">14</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/17298_101_1.jpg">
							<em class="overlay">15</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21090_101_1.jpg">
							<em class="overlay">16</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21171_101_1.jpg">
							<em class="overlay">17</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21187_101_1.jpg">
							<em class="overlay">18</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/20930_101_1.jpg">
							<em class="overlay">19</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21209_101_1.jpg">
							<em class="overlay">20</em>
					</div>
				</li>
				<li>
					<div class="image-container">
							<img src="resources/static/img/home/21135_101_1.jpg">
							<em class="overlay">21</em>
					</div>
				</li> -->
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
    <video width="920" height="517.5" id="videoSource" controls autoplay>
        <!-- 비디오 소스 -->
        <!-- <source id="videoSource" type="video/mp4">   -->
 <!-- <source id="videoSource" src="https://cf2.lottecinema.co.kr/lotte_image/2024/LoveLiesBleeding/LoveLiesBleeding_1280720.mp4" type="video/mp4"> -->
    </video>
  </div>
</div>
    
    <%@ include file="/WEB-INF/views/layout/footer.jsp" %>
   
</body>

<script>


$(document).ready(function(){
	$('.img_list li').last().prependTo('.img_list');
    setInterval(function(){
       $('.img_list').animate({left:'-='+1920},'slow',function(){
           $('.img_list li') .first().appendTo('.img_list');
           $('.img_list').css('left',0);
       });
    },500000);
    
    /* $('#info_right').css('display','none'); */
});

let currentTaget = '';



$('.rank_img').find('.image-container').mouseover(function(e){
	e.target.classList.add('active');
	$(this).find('.over_box').addClass('active');
	 $(e.target).find('.inner').addClass('active'); 
	// $(this).addClass('active'); // 현재 요소에 active 클래스 추가
	// e.target.find('.over_box').css('z-index', '1001');
	// 현재 요소 안에서 .over_box 요소를 찾아 z-index를 변경
    /* $(this).find('.over_box').css('z-index', '1001'); */ 
	/* $(this).find('.over_box').css('display', 'block'); */
})



$('.rank_img').find('.image-container').mouseout(function(e){
	e.target.classList.remove('active');
	$(this).find('.over_box').removeClass('active');
	/* $(this).find('.over_box').css('display', 'none'); */
	/* $(this).find('.over_box').css('z-index', '0');  */
})



//포스터 슬라이드 왼쪽 버튼
function leftBtn() {
	
	if($('.img_list').css('left') === '0px'){
		
	 	 $('.img_list').animate({left:'-='+1920},'slow',function(){
	       	 $('.img_list li') .first().appendTo('.img_list');
	       	 $('.img_list').css('left',0);
	 	 });
	}
	
}

// 포스터 슬라이드 오른쪽 버튼
function rightBtn() {
	
	if($('.img_list').css('left') === '0px'){
		
		 $('.img_list').css('left', '-1920px');
	     $('.img_list li').last().prependTo('.img_list');
	     $('.img_list').animate({left:'+='+1920},'slow');
	        
	 	/*  $('.img_list').animate({left:'+='+1920},'slow',function(){
	       	 $('.img_list li').last().prependTo('.img_list');
	       	 $('.img_list').css('left',0);
	 	 }); */
	}
	    
}

//영화순위 왼쪽 버튼
function info_left(){
		
	console.log('인포 왼쪽 버튼 동작함');
	$('.rank_list').animate({left:'-='+200},'fast',function(){
	 	
		if($('.rank_list').css('left') === '-200px'){
	 		    $('#info_right').css('display','block');
	 	}
	 	if($('.rank_list').css('left') === '-3400px'){
	 			$('#info_left').css('display','none');
	 	}
  	 
	});
}

// 영화순위 오른쪽 버튼
function info_right(){
	
	 console.log('인포 오른쪽 버튼 동작함');
 	 $('.rank_list').animate({left:'+='+200},'fast',function(){
 		
 		 if($('.rank_list').css('left') === '-3200px'){
 			    $('#info_left').css('display','block');
 		 }
 		 if($('.rank_list').css('left') === '0px'){
 			    $('#info_right').css('display','none');
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
    let modal = document.getElementById('myModal');
    modal.style.display = 'none'; // 모달 숨김
}

// 모달 외부 클릭 시 닫기
window.onclick = function(event) {
    let modal = document.getElementById('myModal');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}

</script>
</html>