
document.addEventListener('DOMContentLoaded', function() {
	
	const btnPlus = document.querySelector('.btn_plus');
	const btnMins = document.querySelector('.btn_mins');
	const txtNum = document.querySelector('.txt_num');
	const btnPay = document.querySelector('.btn_col1');

	// 상세보기 정보 가격 
	const priceInfo = document.querySelector('.txt_price');
	const priceInfoNum = priceInfo.textContent;
	const fmtPrice = priceToString(priceInfoNum)
	priceInfo.textContent = fmtPrice + ' 원';

	// 상품 하나의 가격 
	const txtPrice = document.querySelector('.txt_price_str'); // 가격 
	const priceStr = txtPrice.textContent; // 가격 
	const price = parseInt(priceStr.replace(/[^\d]/g, ''), 10);
	txtPrice.textContent = priceToString(price) + '원';

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

	btnPay.addEventListener('click', function() {
		const snackId = document.getElementById('snackId').value;
		const quantity = parseInt(txtNum.textContent, 10);
		const data = {
			"snackId": snackId,
			"quantity": quantity,
			"price": price
		}
		
		payInfo(data);
	})

	// 총 상품 금액 
	function updateTotalPrice() {
		const quantity = parseInt(txtNum.textContent, 10);
		const totalPrice = quantity * price;
		txtPrice.textContent = priceToString(totalPrice) + '원';
	}


})

function payInfo(data) {
	console.log("payInfo : ", data);

	$.ajax({
		type: "get",
		url: "/stores/snack/order-page",
		data: data,
		success: function(resp) {
			$('#sub_section').html(resp);
		},
		error: function(error) {
			console.log("error : ", error)
		}
	})
}


function requestPay(data) {
	console.log("requestPay call");
	console.log("data : ", data);

	IMP.init('imp38580524'); // 예: 'imp00000000'
	IMP.request_pay({
		pg: "tosspayments",
		pay_method: "card",
		merchant_uid: "1234578",
		name: "스파게티면 500g",
		amount: 200,
		buyer_email: "gildong@gmail.com",
		buyer_name: "홍길동",
		buyer_tel: "010-4242-4242",
		buyer_addr: "서울특별시 강남구 신사동",
		buyer_postcode: "01181"
	}, rsp => {
		if (rsp.success) {
			// 결제 성공 시 로직
			console.log('Payment succeeded');
			// 추가로 실행할 로직을 여기에 작성
		} else {
			// 결제 실패 시 로직
			console.log('Payment failed : ', rsp.error_msg);
			// 추가로 실행할 로직을 여기에 작성
		}
	});
}
