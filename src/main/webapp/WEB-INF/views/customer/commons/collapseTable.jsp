<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<c:set var="page" value="${pageType}"/>
<table class="tb_acc_wrap" summary="${pageType} 표입니다. 구분, 질문 순서로 행이 구성되어 있습니다.">
	<caption>${page.pageType}</caption>
	<colgroup>
		<col style="width: 20%;">
		<col style="width: auto;">
	</colgroup>
	<thead>
		<tr>
			<th scope="col" id="thead0">구분</th>
			<th scope="col" id="thead1">질문</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${empty tableList}">
				<tr>
				</tr>
				<tr>
					<td headers="thead1 row0" class="text_l">
						등록된 글이 없습니다.
					</td>
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="item" items="${tableList}" >
					<tr class="acc_head" aria-expanded="false" role="button" id="tr_${item.id}">
						<td id="row0" headers="thead0">${item.categoryName}</td>
						<td headers="thead1 row0" class="text_l">
							<a class="ic_q btn collapsed" title="열기" data-toggle="collapse" href="#collapse${item.id}" role="button" aria-expanded="false" aria-controls="collapse${item.id}" >
								<strong class="txt_qna q">
								<span>질문</span>
								</strong>
							${item.title}
							</a>
						</td>
					</tr>
					<tr class="acc_body collapse" role="region" id="collapse${item.id}">
						<td colspan="2" headers="thead1 row0">
						<div class="ic_a">
							<strong class="txt_qna a">
								<span>답변</span>									
							</strong>
							<div>${item.content}</div>
						</div>
						</td>
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