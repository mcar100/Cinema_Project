<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<fieldset class="search_wrap ty2">
	<c:set var="page" value="${pageType}"/>
	<c:if test="${page.pageType == 'FAQ'}">
	<legend>영화관 FAQ 검색하기</legend>
	</c:if>
	<c:if test="${page.pageType != 'FAQ'}">
		<select class="ty3" title="검색조건 제목 선택" id="selectCondition1">
			<option value="1" selected>제목</option>
			<option value="2">내용</option>
			<option value="3">제목+내용</option>
		</select>
	</c:if>
	<input type="text" placeholder="검색어를 입력해주세요." id="searchKeyword" 
			title="검색어를 입력해주세요." class="${page.searchType}">
	<button id="searchBtn" type="button" class="btn_col2">검색</button>
	<c:if test="${page.pageType == 'FAQ'}">
		<div class="txt_help_wrap">
			<p>더 궁금한 점이 있거나, 이미 문의한 내용과 답변을 확인하려면?</p>
			<a href="#none">1:1문의 바로가기</a>
		</div>
	</c:if>
</fieldset>