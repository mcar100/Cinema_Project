// 1. ready : js의 dom 트리가 준비가 되었을 때를 컨트롤하는 메서드 : JQuery / js : DOMContentLoaded 
$(document).ready(function() {
	console.log("store detail page ready");
})


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