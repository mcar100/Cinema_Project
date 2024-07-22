
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

const priceAmount = $('#totalPrice').val();
const buyerMemberEmail = $('#memberEmail').val();
const buyerMemberName = $('#memberName').val();


const IMP = window.IMP;
IMP.init('imp38580524');


function requestToss() {
	console.log("requestPay()호출");
	// IMP.request_pay(param, callback) 결제창 호출
	IMP.request_pay({ // param
		pg: "tosspay.tosstest",
		pay_method: "card",
		merchant_uid: 'cart_' + new Date().getTime(),
		name: "Helpring 강의",
		amount: "10000",
		buyer_email: "alsgml@naver.com",
		buyer_name: "강민희",

	}, function(rsp) { // callback

		console.log("rsp : ", rsp);
		/** 결제 검증 **/
		$.ajax({
			type: 'POST',
			url: '/verifyIamport/' + rsp.imp_uid,
			beforeSend: function(xhr) {
				xhr.setRequestHeader(header, token);
			}
		}).done(function(result) {

			// rsp.paid_amount와 result.response.amount(서버 검증) 비교 후 로직 실행
			if (rsp.paid_amount === result.response.amount) {
				alert("결제가 완료되었습니다.");
				$.ajax({
					type: 'POST',
					url: '/lecture/payment',
					beforeSend: function(xhr) {
						xhr.setRequestHeader(header, token);
					}
				}).done(function() {
					window.location.reload();
				}).fail(function(error) {
					alert(JSON.stringify(error));
				})
			} else {
				alert("결제에 실패했습니다." + "에러코드 : " + rsp.error_code + "에러 메시지 : " + rsp.error_message);

			}
		})
	});
};

function requestKaKao() {

	// IMP.request_pay(param, callback) 결제창 호출
	IMP.request_pay({ // param
		pg: "kakaopay.TC0ONETIME",
		pay_method: "card",
		merchant_uid: 'cart_' + new Date().getTime(),
		name: "Helpring 강의",
		amount: "10000",
		buyer_email: "alsgml@naver.com",
		buyer_name: "강민희",

	}, function(rsp) { // callback

		console.log("rsp : ", rsp);
		/** 결제 검증 **/
		$.ajax({
			type: 'POST',
			url: '/verifyIamport/' + rsp.imp_uid,
			beforeSend: function(xhr) {
				xhr.setRequestHeader(header, token);
			}
		}).done(function(result) {

			// rsp.paid_amount와 result.response.amount(서버 검증) 비교 후 로직 실행
			if (rsp.paid_amount === result.response.amount) {
				alert("결제가 완료되었습니다.");
				$.ajax({
					type: 'POST',
					url: '/lecture/payment',
					beforeSend: function(xhr) {
						xhr.setRequestHeader(header, token);
					}
				}).done(function() {
					window.location.reload();
				}).fail(function(error) {
					alert(JSON.stringify(error));
				})
			} else {
				alert("결제에 실패했습니다." + "에러코드 : " + rsp.error_code + "에러 메시지 : " + rsp.error_message);

			}
		})
	});
};

function requestPayco() {

	// IMP.request_pay(param, callback) 결제창 호출
	IMP.request_pay({ // param
		pg: "payco.AUTOPAY",
		pay_method: "card",
		merchant_uid: 'cart_' + new Date().getTime(),
		name: "Helpring 강의",
		amount: "10000",
		buyer_email: "alsgml@naver.com",
		buyer_name: "강민희",

	}, function(rsp) { // callback

		/** 결제 검증 **/
		$.ajax({
			type: 'POST',
			url: '/verifyIamport/' + rsp.imp_uid,
			beforeSend: function(xhr) {
				xhr.setRequestHeader(header, token);
			}
		}).done(function(result) {

			// rsp.paid_amount와 result.response.amount(서버 검증) 비교 후 로직 실행
			if (rsp.paid_amount === result.response.amount) {
				alert("결제가 완료되었습니다.");
				$.ajax({
					type: 'POST',
					url: '/lecture/payment',
					beforeSend: function(xhr) {
						xhr.setRequestHeader(header, token);
					}
				}).done(function() {
					window.location.reload();
				}).fail(function(error) {
					alert(JSON.stringify(error));
				})
			} else {
				alert("결제에 실패했습니다." + "에러코드 : " + rsp.error_code + "에러 메시지 : " + rsp.error_message);

			}
		})
	});
};

function reqeustNaverPay(){
	alert("아직 준비중인 결제 시스템입니다. 다른 결제 수단을 이용해주세요.");
}
