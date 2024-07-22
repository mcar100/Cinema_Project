<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<div class="tab_con ty2">
	<c:set var="page" value="${pageType}"/>
	<h3 class="hidden">${page.pageType}</h3>
	<c:if test="${page.pageType == 'FAQ'}">
		<div class="faq_icon_wrap bx_category_slct lotcipassfaq">
			<c:choose>
				<c:when test="${empty faqCategoryList}">
					<button class="link-btn">no items</button>
				</c:when>
				<c:otherwise>
					<c:forEach var="fc" items="${faqCategoryList}" varStatus="status">
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
<div id="faqTable">
	<jsp:include page="./commons/collapseTable.jsp" />
</div>

<a href="/admin">관리자 페이지 이동 ></a>
<!-- my script -->
<script type="module" src="/resources/static/js/customer/faq.js"></script>