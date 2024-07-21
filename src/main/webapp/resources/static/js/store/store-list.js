document.addEventListener('DOMContentLoaded', function() {
	
	// 모든 가격 요소 선택
	const txtPrice = document.querySelectorAll('.txt_price');

	// 각 가격 요소에 대해 포맷팅 적용
	txtPrice.forEach(function(txtPrice) {
		
		const priceStr = txtPrice.textContent;
		const price = parseInt(priceStr.replace(/[^\d]/g, ''), 10);
		txtPrice.textContent = `${priceToString(price)}원`;		
		const fmtPrice = priceToString(price);
		// 포맷팅된 금액으로 업데이트
		txtPrice.textContent = `${fmtPrice}원`;
	});

})
