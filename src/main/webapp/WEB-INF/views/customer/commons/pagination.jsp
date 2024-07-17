<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.lotte.cinema.board.faq.dto.PaginationDTO" %>
<%
	int startNo = 1;
	int endNo = 1;
	int currentPageNo = 1;

	PaginationDTO pageInfo = (PaginationDTO) request.getAttribute("pageInfo");
	if(pageInfo!=null){
		int pageSize = pageInfo.getPageSize();
		currentPageNo = pageInfo.getPageNo()+1; // 0+1
		int lastPageNo = pageInfo.getLastPageNo();		

		int range = (int)Math.ceil((double)currentPageNo/(double)pageSize);
		startNo = (range-1)*pageSize+1;
		endNo = range*pageSize;
		if(endNo>lastPageNo){
			endNo = lastPageNo;
		}
	}
%>
<div class="brd_paginate">
	<ol>
		<%
			for(int i=startNo; i<=endNo; i++){
				if(i==currentPageNo){
					%>
					<li>
						<strong title="현재 페이지"><%=i %></strong>
					</li>
					<%
				}
				else{
					%>
					<li>
						<a href="#none"><%=i %></a>
					</li>
					<%
				}
			}
		%>
	</ol>
</div>