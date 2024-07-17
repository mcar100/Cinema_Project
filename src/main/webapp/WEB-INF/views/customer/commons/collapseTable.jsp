<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.lotte.cinema.board.faq.dto.FaqDTO" %>
<% 
	List<FaqDTO> faqList = (List<FaqDTO>) request.getAttribute("faqList");
%>
<table class="tb_acc_wrap" summary="FAQ 표입니다. 구분, 질문 순서로 행이 구성되어 있습니다.">
	<caption>FAQ</caption>
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
		  	<%
	  			if(faqList!=null){
				 for (FaqDTO faq : faqList) { %>
					<tr class="acc_head" aria-expanded="false" role="button" id="tr_<%= faq.getId() %>">
						<td id="row0" headers="thead0"><%= faq.getCategoryName() %></td>
						<td headers="thead1 row0" class="text_l">
						<a class="ic_q btn collapsed" title="열기" data-toggle="collapse" href="#collapse<%= faq.getId()%>" role="button" aria-expanded="false" aria-controls="collapse<%=faq.getId()%>" >
							<strong class="txt_qna q">
							<span>질문</span>
						</strong>
						<%= faq.getTitle()%>
						</a>
					</td>
				</tr>
				<tr class="acc_body collapse" role="region" id="collapse<%=faq.getId()%>">
     				<td colspan="2" headers="thead1 row0">
					<div class="ic_a">
						<strong class="txt_qna a">
							<span>답변</span>									
						</strong>
						<div><%= faq.getContent()%></div>
					</div>
					</td>
     			</tr>
            	<% } 
	  			}
	  			else { %>
	  			<tr>
	  			</tr>
				<tr>
					<td headers="thead1 row0" class="text_l">
						등록된 질문이 없습니다.
					</td>
				</tr>	  				
	  		<%	}
            %>

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