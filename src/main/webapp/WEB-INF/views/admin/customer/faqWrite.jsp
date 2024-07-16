<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<%@ page import="com.lotte.cinema.board.faq.entity.FaqCategory" %>
  <%
  	List<FaqCategory> fcList = (List<FaqCategory>)request.getAttribute("faqCategoryList");
  %>
  <body>
  	
  	<div class="container">
  		<h3>FAQ</h3>
  		<hr/>
	  	<form action="#" id="faqWriterForm">
	  		<%
	  			if(fcList!=null){
	  		%>
	  			<label for="categorySelect">질문 유형:</label>
	  			<select id="categorySelect" name="categoryName">
                <% for (FaqCategory fc : fcList) { %>
                    <option value="<%= fc.getName() %>"><%= fc.getName() %></option>
     
            	<% } %>
	  			</select>	
	  		<%
	  			}
	  		%>
	  		<br/>
  			<input name="title" placeholder="질문 내용" />
			<textarea id="editor" name="content" placeholder="답변 내용" ></textarea>
    		<button type="submit">submit</button>
  		</form>  	
  		<div id="faqWriteBoard"></div>
  		<a href="/customer/faq">faq 이동</a>
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
	<script type="module" src="/resources/static/js/admin/faqWriter.js"></script>
  </body>
