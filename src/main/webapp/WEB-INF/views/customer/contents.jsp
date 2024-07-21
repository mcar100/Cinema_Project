<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<c:set var="page" value="${pageType}"/>

<c:if test="${page.pageType == 'Notice'}">
	<div class="tab_header tab_con ty3">
		<ul class="tab_wrap inner">
			<li class="link-btn active" data-id="1">
				<button class="tab_tit sub_btn" data-id="1" style="left: 0px; margin-top: 3px; margin-left: 217.350px">
					<span>전체 공지</span>
				</button>
			</li>
			<li class="link-btn" data-id="2">
				<button class="tab_tit sub_btn" data-id="2" style="left: 71px; margin-top: 3px; margin-left: 217.350px">
					<span>영화관 공지</span>
				</button>
			</li>
		</ul>
	</div>
</c:if>

<div class="tab_con ty2">
	<h3 class="hidden">${page.pageType}</h3>
	<c:if test="${page.pageType == 'FAQ'}">
		<div class="faq_icon_wrap bx_category_slct lotcipassfaq">
			<c:choose>
				<c:when test="${empty categoryList}">
					<button class="link-btn">no items</button>
				</c:when>
				<c:otherwise>
					<c:forEach var="fc" items="${categoryList}" varStatus="status">
						<button class="ico_0${fc.id} link-btn ${status.index == 0 ? 'active' : ''}" data-id="${fc.id}">${fc.name}</button>
					</c:forEach>				
				</c:otherwise>	
			</c:choose>
		  	<div>${pageContext.request.contextPath}</div>
		</div>	
	</c:if>
</div>

<!-- Searchbar --> 
<jsp:include page="./commons/searchbar.jsp"/>
			
<!-- Table -->
<div id="customerTable" data-url=${page.requestUrl}>
	<c:if test="${page.tableType == 'Collapse'}">
		<jsp:include page="./commons/collapseTable.jsp" />
	</c:if>
	<c:if test="${page.tableType == 'Board'}">
		<jsp:include page="./commons/boardTable.jsp" />
	</c:if>
</div>

<a href="/admin">관리자 페이지 이동 ></a>

<!-- my script -->
<script type="module" src="/resources/static/js/customer/contents.js"></script>