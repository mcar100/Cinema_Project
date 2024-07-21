<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h3 class="con_tit ty2">Store 물품 등록</h3>
		<hr />
		<form action="#" id="storeForm" class="tbl_form"
			data-url="">
			<table>
				<colgroup>
					<col style="width: 15%;">
					<col style="width: auto;">
				</colgroup>
				<tr>
					<th scope="row" class="req"><label for="categorySelect">물품
							유형</label></th>
					<td><select id="categorySelect" name="categoryName">
							<option value="스낵음료">스낵음료</option>
							<option value="포토카드">포토카드</option>
							<option value="관람권">관람권</option>
					</select></td>
				</tr>
				<tr>
					<th scope="row" class="req">상품 이름</th>
					<td>
						<div class="bx_textarea">
							<input type="text" class="ty2 w_full" name="title"
								placeholder="상품 이름" />
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row" class="req">구성품</th>
					<td>
						<div class="bx_textarea">
							<input type="text" class="ty2 w_full" name="title"
								placeholder="구성품" />
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row" class="req">구매제한</th>
					<td>
						<div class="bx_textarea">
							<input type="text" class="ty2 w_full" name="title"
								placeholder="구매제한" />
						</div>
					</td>
				</tr>

				<tr>
					<th scope="row" class="req">유효기간</th>
					<td>
						<div class="bx_textarea">
							<input type="text" class="ty2 w_full" name="title"
								placeholder="유효기간" />
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row" class="req">사용가능 영화관</th>
					<td>
						<div class="bx_textarea">
							<input type="text" class="ty2 w_full" name="title"
								placeholder="사용가능 영화관" />
						</div>
					</td>
				</tr>
				<tr>
					<th scope="row" class="req">사용방법</th>
					<td><textarea id="editor" class="ty2" name="content"
							placeholder="사용방법"></textarea></td>
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
</html>