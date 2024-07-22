<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/static/css/layout/banner.css">
</head>
<body>
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
</body>
</html>