import { callAjax } from "../../api/ajax.js";
import { convertFormDataToObj } from "../../utils/convertor.js";

$(document).ready(function(){
	$("#adminContent").on("submit","#customerForm",function(e){
		handleFormSubmit(e,writeBoard);
	});
})

function handleFormSubmit(e, callbackApi){
	e.preventDefault();
	const formData = $(e.target).serializeArray();
	const formObj = convertFormDataToObj(formData);
	const formUrl = $(e.target).data('url');
	console.log(formObj);
	callbackApi(formUrl,formObj);
}

async function writeBoard(url, formObj){
	try{
		if(url===undefined){
			throw new Error('url이 없습니다.');
		}
		
		const result = await callAjax('POST',url, formObj);
		console.log(result);
		if(!result){
			throw new Error('등록에 실패했습니다.');
		}
		alert('등록되었습니다.');
		window.location.reload();
	}
	catch(e){
		alert(e.message);
	}
}

