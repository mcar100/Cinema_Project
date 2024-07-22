<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<c:set var="board" value="${boardDetail}"/>
<c:set var="prev" value="${prevBoard}"/>
<c:set var="next" value="${nextBoard}"/>
<h3 class="hidden">공지사항</h3>
<ul class="tab_wrap inner">
	<li class="active">
		<div class="tab_con ty4">
			<h4 class="hidden">전체 공지</h4>
			<table class="tbl_dtal" summary="공지사항 상세내용에 대한 표입니다.">
				<caption>공지사항 상세내용</caption>
				<colgroup>
					<col style="width: auto;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">${board.title}</th>
					</tr>
				</thead>
				<tbody>
					<tr class="tb_info">
						<td>
							<span class="tit">영화관</span>
							<span class="cont">${board.theaterName}</span>
							<span class="tit">등록일</span>
							<span class="cont">${board.createdAt}</span>
							<span class="tit">조회수</span>
							<span class="cont">0</span>
						</td>
					</tr>
					<tr class="tb_content">
						<td>
							<div id="divNoticeContents">
								${board.content}
							</div>
						</td>
					</tr>
					<tr class="tb_link">
						<td>
							<a href="#" class="link-a" id="${prev.id}" data-id="${prev.id}">
									<span class="tb_prev">다음글</span>
									<c:choose>
										<c:when test="${empty prev.title}">
											<span>다음 글이 없습니다.</span>
										</c:when>
										<c:otherwise>
											<span>${prev.title}</span>
										</c:otherwise>
									</c:choose>
								</a>
						</td>
					</tr>
					<tr class="tb_link">
						<td>
							<a href="#" class="link-a" id="${next.id}" data-id="${next.id}">
								<span class="tb_next">이전글</span>
								<c:choose>
									<c:when test="${empty next.title}">
										<span>이전 글이 없습니다.</span>
									</c:when>
									<c:otherwise>
										<span>${next.title}</span>
									</c:otherwise>
								</c:choose>
							</a>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="btn_btm_wrap">
				<a href="/customer" class="btn_col2 ty6">목록</a>
			</div>
		</div>
	</li>
</ul>