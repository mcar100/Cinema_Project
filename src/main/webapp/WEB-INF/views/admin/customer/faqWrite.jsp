<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.lotte.cinema.board.faq.entity.FaqCategory" %>
  <%
  	List<FaqCategory> fcList = (List<FaqCategory>)request.getAttribute("faqCategoryList");
  %>
  <body>
  	
  	<div class="container">
  		<h3 class="con_tit ty2">FAQ</h3>
  		<hr/>
	  	<form action="#" id="customerForm" class="tbl_form" data-url="/admin/customer/faqWrite">
			<table>
				<colgroup>
					<col style="width: 15%;">
					<col style="width: auto;">
				</colgroup>
				<tbody>
					<%
						if(fcList!=null){
					%>
					<tr>
						<th scope="row" class="req"><label for="categorySelect">질문 유형</label></th>
						<td>
							<select id="categorySelect" name="categoryName" data-kor="질문 유형">
							<% for (FaqCategory fc : fcList) { %>
								<option value="<%= fc.getName() %>"><%= fc.getName() %></option>
							<% } %>
							</select>	
						</td>
					</tr>
					<%
						}
					%>
					<tr>
						<th scope="row" class="req">질문 내용</th>
						<td>
							<div class="bx_textarea">
								<input type="text" class="ty2 w_full" name="title" placeholder="질문 내용" data-kor="질문 내용"/>
							</div>
						</td>
					</tr>
					<tr>
						<th scope="row" class="req">답변 내용</th>
						<td><textarea id="editor" class="ty2" name="content" placeholder="답변 내용" data-kor="답변 내용" ></textarea>	</td>
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
  </body>
