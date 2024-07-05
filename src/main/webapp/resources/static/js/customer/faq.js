import { callAjax } from "../api/ajax.js";

$(document).ready(function(){	
	$(".link-btn").click(handleLinkBtnClick);
	$(".link-btn:first-child").addClass("active");
	$("#searchBtn").click(handleSearchBtnClick);
	$(".brd_paginate > ol > li > a").click(handlePageNoClick);
})

function handleLinkBtnClick(e){
	e.preventDefault();
	const faqTypeId = $(this).data('id');
	changeFaq(faqTypeId);
	updateBtnStyle($(this))
	updateSearchbar();
}

async function handleSearchBtnClick(e){
	e.preventDefault();
	const searchKeyword = $("#searchKeyword").val();
	searchFaq(searchKeyword);
}

function handlePageNoClick(e){
	e.preventDefault();
	const pageNo = $(this).text();
	try{
		if(!pageNo){
			throw new Error('pageNo가 없습니다.');		
		}
		
		const searchKeyword =  $("#searchKeyword").val();
		if(searchKeyword){
			searchFaq(searchKeyword,pageNo);
			return;
		}
		
		const faqTypeId = $(".link-btn.active").data('id');
		if(!faqTypeId){
			throw new Error('faqTypeId가 없습니다.');			
		}
		changeFaq(faqTypeId, pageNo);
	}
	catch(e){
		console.log(e.message);	
	}
}

function updatePagination(){
	$(".brd_paginate > ol > li > a").click(handlePageNoClick);
}

function updateBtnStyle(btn){
	$(".link-btn").removeClass("active");
	btn.addClass("active")
}

function updateSearchbar(){
	$("#searchKeyword").val("");
}

async function changeFaq(faqTypeId,pageNo=1){
	try{
		const faqTable = await callAjax('GET', `/customer/faq/${faqTypeId}?pageNo=${pageNo}`);
		if(!faqTable){
			throw new Error('테이블 리로드에 실패했습니다.')
		}
		$("#faqTable").html(faqTable);
		updatePagination();
	}
	catch(e){
		alert(e.message);
	}	
}

async function searchFaq(searchKeyword,pageNo=1){
	try{
		if(!searchKeyword){
			throw new Error('검색할 내용을 입력해주세요.');
		}
		
		const faqTable = await callAjax('GET',`/customer/faq/search?title=${searchKeyword}&pageNo=${pageNo}`);
		if(!faqTable){
			throw new Error('faqTable 리로드에 실패했습니다.');
		}
		$("#faqTable").html(faqTable);
		updatePagination();
	}
	catch(e){
		alert(e.message);
	}
}