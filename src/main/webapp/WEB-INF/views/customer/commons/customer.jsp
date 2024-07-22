<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>고객센터 - 롯데시네마</title>
	<jsp:include page="../../commons/vendorHead.jsp"/>

	<link
  		href="/resources/static/css/customer/customer.css"
  		rel="stylesheet"
  		type="text/css"
	/>
  </head>
  <body>
  
  	<!-- Header -->
  	<%@ include file="../../layout/header.jsp"%>
  
  	<!--  Contents -->
	<div id="contents" class="contents_customer area__movingbar litype5" >
		<div class="title_top">
			<h2 class="tit">고객센터</h2>
		</div>
		<ul id="pageLink" class="tab_wrap outer actionmovingbar">
			<li class="active">
				<button type="button" class="tab_tit" style="width:20%; left: 0%;" data-link="/customer/faq">
					<span>FAQ</span>
				</button>
				<div class="tab_contents">
				</div>
			</li>
			<li>
				<button type="button" class="tab_tit" style="width:20%; left:20%;" data-link="/customer/notice">
					<span>공지사항</span>
				</button>
				<div class="tab_contents"></div>
			</li>
			<li>
				<button type="button" class="tab_tit" style="width:20%; left:40%;">
					<span>1:1문의</span>
				</button>
				<div class="tab_contents"></div>
			</li>
			<li>
				<button type="button" class="tab_tit" style="width:20%; left:60%;">
					<span>단체관람/대관문의</span>
				</button>
				<div class="tab_contents"></div>
			</li>
			<li>
				<button type="button" class="tab_tit" style="width:20%; left:80%;">
					<span>분실물문의</span>
				</button>
				<div class="tab_contents"></div>
			</li>
		</ul>
	</div>
	<jsp:include page="../../layout/footer.jsp"/>
	<jsp:include page="../../commons/vendorBody.jsp"/>
	<script type="module" src="/resources/static/js/customer/commons.js"></script>
  </body>
</html>