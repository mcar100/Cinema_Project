import { callAjax } from "../api/ajax.js";
import { convertFormDataToObj } from "../utils/convertor.js";

$(document).ready(function(){
	$("#faqWriterForm").submit(function(e){
		handleFormSubmit(e,createFaq);
	});
})

function handleFormSubmit(e, callbackApi){
	e.preventDefault();
	const formData = $(e.target).serializeArray();
	const formObj = convertFormDataToObj(formData);
	callbackApi(formObj);
}

async function createFaq(formObj){
	try{
		const result = await callAjax('POST','/customer/faqWrite', formObj);
		console.log(result);
		if(!result){
			throw new Error('등록에 실패했습니다.');
		}
		alert('등록되었습니다.');
	}
	catch(e){
		alert(e.message);
	}
}