<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>관리자 페이지 - 롯데시네마</title>
	<jsp:include page="../commons/vendorHead.jsp"/>
	<link
  		href="/resources/static/css/customer/customer.css"
  		rel="stylesheet"
  		type="text/css"
	/>
	<link rel="stylesheet" href="https://cdn.ckeditor.com/ckeditor5/42.0.0/ckeditor5.css">
	
  </head>
  <body>
  	<div id="contents">
		<div class="title_top"><h2 class="tit">Admin Page</h2></div>
		<ul id="pageLink" class="tab_wrap outer">
			<li class="active"><button class="tab_tit" data-id="1" data-link="/admin/customer/faq" style="width: 20%; left: 0%;"><span>FAQ</span></button></li>
			<li><button class="tab_tit" data-id="2" data-link="/admin/customer/notice" style="width: 20%; left:20%;"><span>공지사항</span></button></li>
			<li><button class="tab_tit" data-id="3" data-link="/stores/snack/admin" style="width: 20%; left:40%;"><span>물품 등록</span></button></li>
		</ul>
		<hr/>
		<div id="adminContent">
	
		</div>
		<a href="/customer/faq">홈페이지 이동 ></a>
  	</div>
    <script type="importmap">
		{
			"imports": {
				"ckeditor5": "https://cdn.ckeditor.com/ckeditor5/42.0.0/ckeditor5.js",
				"ckeditor5/": "https://cdn.ckeditor.com/ckeditor5/42.0.0/"
			}
		}
	</script>
  	<script type="module" src="/resources/static/js/admin/admin.js"></script>
	<script type="module" src="/resources/static/js/admin/customer/customer.js"></script>
	<jsp:include page="../commons/vendorBody.jsp"/>
  </body>
</html>