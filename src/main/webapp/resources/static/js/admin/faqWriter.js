import { convertFormDataToObj } from "../utils/convertor.js";

$(document).ready(function(){
	console.log('hi');
	$("#faqWriterForm").submit(function(e){
		handleFormSubmit(e,createFaq);
	});
})

function handleFormSubmit(e, callbackApi){
	e.preventDefault();
	const formData = $(e.target).serializeArray();
	const formObj = convertFormDataToObj(formData);
	try{
		console.log(formObj);
		callbackApi(formObj);
	}
	catch(thrown){
		console.log(thrown);
	}
}

function createFaq(formObj){
	$.ajax({
		url: "http://localhost:9090/customer/faqWrite",
		type: 'POST',
		contentType: 'application/json',
		data: JSON.stringify(formObj),
		success: function(response){
			console.log(response);
		},
		error: function(xhr,status,error){
			console.error('통신 실패 ',status,error);
		}
		
	})
}