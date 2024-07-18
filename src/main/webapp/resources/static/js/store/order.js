IMP.init('imp38580524'); // 예: 'imp00000000'


function requestPay() {
	IMP.request_pay({
		pg: "payco.store-e7232d62-4827-40d0-b395-618282fe4103",
		pay_method: "card",
		merchant_uid: "test_lypji6xn",
		name: "테스트 결제",
		amount: 100,
		buyer_tel: "010-0000-0000",
	});
}

document.addEventListener('DOMContentLoaded', function() {
	console.log("addEventListener 입니다.")

	const btnPlus = document.querySelector('.btn_plus');
	const btnMins = document.querySelector('.btn_mins');
	const txtNum = document.querySelector('.txt_num');

	// 상품 하나의 가격 
	const txtPrice = document.querySelector('.txt_price_str');
	const priceStr = txtPrice.textContent;
	const price = parseInt(priceStr.replace(/[^\d]/g, ''), 10);
    console.log("price : ", price);


	// 총 상품 금액 
	function updateTotalPrice() {
		const quantity = parseInt(txtNum.textContent, 10);
		console.log("quantity :", quantity);
		const totalPrice = quantity * price;
		console.log("totalPrice : ", totalPrice.toLocaleString());
		txtPrice.textContent = priceToString(totalPrice) + '원';
		console.log(txtPrice.textContent);
	}

	btnPlus.addEventListener('click', function() {
		let currentNumber = parseInt(txtNum.textContent, 10);
		currentNumber++;
		txtNum.textContent = currentNumber;
		updateTotalPrice();
	})

	btnMins.addEventListener('click', function() {
		let currentNumber = parseInt(txtNum.textContent, 10);
		if (currentNumber > 0) {
			currentNumber--;
			txtNum.textContent = currentNumber;
			updateTotalPrice();
		}
	})

	// 가격 포매팅 
	function priceToString(price) {
		return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}

})
