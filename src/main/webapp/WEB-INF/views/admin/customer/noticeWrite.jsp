<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.lotte.cinema.theater.dto.TheaterGroupDTO" %>
  <body>
	<div class="container">
		<h3 class="con_tit ty2">공지사항</h3>
		<hr/>
		<form action="#" id="customerForm" class="tbl_form" data-url="/admin/customer/noticeWrite">
		<table>
			<colgroup>
				<col style="width: 15%;">
				<col style="width: auto;">
			</colgroup>
			<tbody>
				<tr>
					<th scope="row" class="req"><label for="categorySelect">공지 유형</label></th>
					<td>
						<select id="categorySelect" name="categoryName" data-kor="공지 유형">
							<option value="entire">전체 공지</option>
							<option value="theater">영화관 공지</option>
						</select>	
					</td>
				</tr>
				<tr class="selectbox-hidden hidden">
					<th scope="row" class="req"><label for="categorySelect">지역/영화관</label></th>
					<td>
						<select id="regionSelect" name="region" data-kor="지역명">
						
						</select>	
						<select id="theaterSelect" name="theaterName" data-kor="영화관명">
	
						</select>	
					</td>
				</tr>
				<tr>
					<th scope="row" class="req">공지 제목</th>
					<td>
						<div class="bx_textarea">
							<input type="text" class="ty2 w_full" name="title" placeholder="공지 제목" data-kor="공지 제목"/>
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row" class="req">공지 내용</th>
					<td><textarea id="editor" class="ty2" name="content" placeholder="공지 내용" data-kor="공지 내용"></textarea></td>
				</tr>
			</tbody>
		</table>
		<div class="btn_btm_wrap">
			<button class="btn_col2 ty6" type="submit">등록</button>
		</div>
		</form>  	
	</div>

	<script type="module">
		import {
			ClassicEditor,
			Essentials,
			Bold,
			Italic,
			Font,
			Paragraph
		} from 'ckeditor5';

		ClassicEditor.create( document.querySelector( '#editor' ), {
			plugins: [ Essentials, Bold, Italic, Font, Paragraph ],
			toolbar: {
				items: [
					'undo', 'redo', '|', 'bold', 'italic', '|',
					'fontSize', 'fontFamily', 'fontColor', 'fontBackgroundColor'
				]
			}
		} )
		.then(data=>{
			window.editor = data;
		})
		.catch( /* ... */ );
	</script>
	<script>
		$(document).ready(function(){
			$("#categorySelect").change(handleCategoryChange);
			$("#regionSelect").change(handleRegionChange);
		})
		function handleCategoryChange(){
			const value = $(this).val();
			if(value==="theater"){
				$("#customerForm .selectbox-hidden").removeClass("hidden");
				load();
			}
			else{
				$("#customerForm .selectbox-hidden").addClass("hidden");
				$("#regionSelect").html("");
				$("#theaterSelect").html("");
			}
		}
		
		const map = {}
		<c:forEach var="entry" items="${theaterGroupList}">
				if(!map["${entry.key}"]){
					map["${entry.key}"]=[];
				}
				<c:forEach var="item" items="${entry.value}">
				    map["${entry.key}"].push("<option value='${item.name}'>${item.name}</option>");
				</c:forEach>
		</c:forEach>
		
		function load(){
			$("#regionSelect").append("<option value=''>지역명</option>");
			$("#theaterSelect").append("<option value=''>영화관명</option>");
			<c:forEach var="entry" items="${theaterGroupList}">
				$("#regionSelect").append("<option value='${entry.key}'>${entry.key}</option>");								
			</c:forEach>	
		}
		
		function handleRegionChange(){
			const value = $(this).val();
			const options = map[value];
			$("#theaterSelect").html("");
			if(value===""){
				$("#theaterSelect").append("<option value=''>영화관명</option>");	
				return;
			}
			for(let i=0; i<options.length; i++){
				$("#theaterSelect").append(options[i]);	
			}
		}
	</script>
  </body>