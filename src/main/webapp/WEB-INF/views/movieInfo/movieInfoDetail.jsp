<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재상영작 - 롯데시네마</title>
<link href="../../../resources/static/img/common/favicon.ico" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/css/movieInfo/MovieInfo.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<div id="main_top_of_top_banner" class="banner_top_wrap banner_type01" style="background-color: rgb(36, 19, 63);">
		<div class="inner">
			<a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_32&adgroupid=adg_lottecinema_20240702_17&adid=adi_lottecinema_20240702_21" target title="화면이동">
				<img src="../../../resources/static/img/movieInfo/BOL4_98080.jpg" alt="볼빨간사춘기 메리고라운드 더 무비 7월 12일 롯데시네마 전체관람가">
			</a>
			<button class="btn_clone_close">닫기</button>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/layout/header.jsp" %>
	<div id="visual_top" class="visual_top visual_movie_home">
		<div class="inner">
			<div class="slide_wrap slide_visual_movie_home">
				<div class="owl-carousel owl-loaded owl-drag">
					<div class="owl-stage-outer">
						<div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); width: 13440px; transition: all 0.5s ease 0s;">							
							<c:forEach var="m" items="${mainSlide}">
							<div class="owl-item cloned" style="width: 1920px;">
								<div class="item">
									<a title="화면이동" href="#none">
										<img id="checkvideo" src="../../../resources/static/img/movieInfo/${m.slidePoster}" data-video="../../../resources/static/video/movieInfo/${m.video}" alt="${m.explanation}">
									</a>
								</div>
							</div>
						</c:forEach>
						</div>
					</div>
					<div class="owl-nav" style="width: 80%; margin-left: -40%;">
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
		<jsp:include page="../movieInfo/movieInfoContent.jsp"/>	
	</div>
		
	<div id="banner_side_section" class="banner_side_wrap" style="top: 565px;">
		<div class="banner_01" style="top: 365px;">
			<a href="https://nvapi.feeldmc.com:443/ad/p/in/v1_0/clk?slotid=stw_lottelotte_41&adgroupid=adg_lottecinema_20240705_30&adid=adi_lottecinema_20240705_38" target title="화면이동">
				<img src="../../../resources/static/img/movieInfo/TheBaton_145145.png" alt="그리고 바통은 넘겨졌다 7월 17일 대개봉 전체관람가">
			</a>
			<button class="btn_close btn_clone_close">광고 닫기</button>
		</div>
	</div>

	<%@ include file="/WEB-INF/views/layout/banner.jsp" %>
	<%@ include file="/WEB-INF/views/layout/footer.jsp" %>
	
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
function initializeMovieListEvents() {
	const listItems = document.querySelectorAll('.movie_list li');
	console.log(listItems);
	listItems.forEach((item) => {
		item.addEventListener('mouseenter', () => {
			item.classList.add('active');
		});
		item.addEventListener('mouseleave', () => {
			item.classList.remove('active');
		});
	});
}

document.addEventListener('DOMContentLoaded', (event) => {
	initializeMovieListEvents();
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
<script>
	// 슬라이드 배너 스크립트
	$('.btn_clone_close').on('click', function() {
		$(this).closest('div').parent().css('display', 'none');
	});
</script>

<script>
$(document).ready(function() {
    $(document).on('click', 'button[data-id], a[data-id]', async function(event) {
        event.preventDefault();

        const dataId = $(this).data('id');
        const flag = $(this).data('flag');
        const url = '/movieInfo/detail/contents';
        
        try {
            await changeTableContent(url, flag);

            if ($(this).is('button')) {
                updateBtnActive(dataId, 'button');
            } else if ($(this).is('a')) {
                updateBtnActive(dataId, 'a');
            }
        } catch (error) {
            console.error("Error during AJAX request:", error);
        }
    });
});

async function changeTableContent(url, flag) {
    try {
        const response = await $.ajax({
            url: url,
            type: 'GET',
            data: { flag: flag }
        });

        $("#contents").html(response);
        
        initializeMovieListEvents();

        if (flag < 5) {
            $('#movietype1').css('display', 'block');
            $('#movietype2').css('display', 'none');
        } else {
            $('#movietype1').css('display', 'none');
            $('#movietype2').css('display', 'block');
        }
    } catch (error) {
        console.error("AJAX Error:", error);
        throw error;
    }
}

function updateBtnActive(dataId, type) {
    if (type === 'button') {

        $('ul.tab_btn_type1 li').removeClass('active');
        $('button[data-id]').filter(function() {
            return $(this).data('id') === dataId;
        }).closest('li').addClass('active');


        if (dataId === 'current') {
            $('#movietype1 li:first-child').addClass('on');
            $('#movietype2 li').removeClass('on');
        }

        if (dataId === 'upcoming') {
            $('#movietype2 li:first-child').addClass('on');
            $('#movietype1 li').removeClass('on');
        }
    } else if (type === 'a') {
        $('ul.list_lnk li').removeClass('on');
        $('a[data-id]').filter(function() {
            return $(this).data('id') === dataId;
        }).closest('li').addClass('on');


        if ($('#movietype1 li').hasClass('on')) {
            setButtonActive('current');
        }
        if ($('#movietype2 li').hasClass('on')) {
            setButtonActive('upcoming');
        }
    }
}

function setButtonActive(buttonId) {
    $('ul.tab_btn_type1 li').removeClass('active');
    $('button[data-id]').filter(function() {
        return $(this).data('id') === buttonId;
    }).closest('li').addClass('active');
}


</script>

</body>
</html>