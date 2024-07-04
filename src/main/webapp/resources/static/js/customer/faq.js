import { callAjax } from "../api/ajax.js";

$(document).ready(function(){	
	$(".link-btn").click(handleLinkBtnClick);
	$(".link-btn:first-child").addClass("active");
})

function handleLinkBtnClick(e){
	e.preventDefault();
	const faqTypeId = $(this).data('id');
	changeFaqType(faqTypeId);
	updateBtnStyle($(this))
}

async function changeFaqType(faqTypeId){
	try{
		const faqTable = await callAjax('GET', `/customer/faq/${faqTypeId}`);
		if(!faqTable){
			throw new Error('faqTable 리로드에 실패했습니다.')
		}
		$("#faqTable").html(faqTable);
	}
	catch(e){
		alert(e.message);
	}	
}

function updateBtnStyle(btn){
	$(".link-btn").removeClass("active");
	btn.addClass("active")
}

