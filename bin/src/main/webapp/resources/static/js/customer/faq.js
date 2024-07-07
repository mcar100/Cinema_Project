import { callAjax } from "../api/ajax.js";

$(document).ready(function(){	
	$(".link-btn").click(handleLinkBtnClick);
})

function handleLinkBtnClick(e){
	e.preventDefault();
	const faqTypeId = $(this).data('id');
	changeFaqType(faqTypeId);
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

