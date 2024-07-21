<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<c:set var="page" value="${pageType}"/>
<table class="tb_acc_wrap" summary="${pageType} 표입니다. 번호, 구분, 제목, 등록일 순서로 행이 구성되어 있습니다.">
	<caption>${page.pageType}</caption>
	<colgroup>
		<col style="width: 10%;">
		<col style="width: 15%;">
		<col style="width: auto;">
		<col style="width: 15%;">
	</colgroup>
	<thead>
		<tr>
			<th scope="col" id="thead0">번호</th>
			<th scope="col" id="thead1">구분</th>
			<th scope="col" id="thead2">제목</th>
			<th scope="col" id="thead3">등록일</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${empty tableList}">
				<tr>
					<td colspan="4">
						<div class="bx_nodata">
							<img src="/resources/static/img/icon/nodata_80_01.png" alt>
							<p class="tit">등록된 글이 없습니다.</p>
						</div>
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="item" items="${tableList}" >
					<tr class="acc_head" id="tr_${item.id}">
						<td id="row0" headers="thead0">
							<c:choose>
								<c:when test="${empty item.rowNum}">
									<strong class="ico_imp"><span>중요</span></strong>
								</c:when>
								<c:otherwise>
									${item.rowNum}
								</c:otherwise>
							</c:choose>
						</td>
						<td headers="thead1">
							<c:choose>
								<c:when test="${empty item.theaterName}">
									전체
								</c:when>
								<c:otherwise>
									${item.theaterName}
								</c:otherwise>
							</c:choose>
						</td>
						<td headers="thead2" class="text_l">
							<a href="#none" data-id="${item.id}">
							${item.title}
							</a>
						</td>
						<td headers="thead3">${item.createdAt}</td>
					</tr>
				</c:forEach>
			</c:otherwise>	
		</c:choose>
	</tbody>
</table>
<!-- pagination -->
<jsp:include page="../commons/pagination.jsp"/>

<script type="module">
$(document).ready(function(){
	  $('.collapse').on('show.bs.collapse', function() {
		    $('.collapse').not(this).collapse('hide');
		  });
})
</script>