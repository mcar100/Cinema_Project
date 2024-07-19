import { callAjax } from "../api/ajax.js";

$(document).ready(function(){	
	$("#pageLink").on("click", ".link-btn", function(e){
		handleLinkBtnClick.bind(this)(e);
	})
	$("#pageLink").on("click","#searchBtn", handleSearchBtnClick);
	$("#pageLink").on("click",".brd_paginate > ol > li > a",handlePageNoClick);
	$("#pageLink").on("click", ".tab_header .tab_wrap li:not(.active) .sub_btn", function(e){
		handleHeaderBtnClick.bind(this)(e);
	});
})

async function handleHeaderBtnClick(e){
	e.preventDefault();
	try{
		const categoryId = $(this).data('id');
		const tableContent = await callAjax('GET', `/customer/notice/${categoryId}`);
		if(!tableContent){
			throw new Error('테이블 콘텐츠 리로드에 실패했습니다.')
		}
		$("#customerTable").html(tableContent);
		updatePagination();
	
		$(".sub_btn").removeClass("active");
		$(this).addClass("active")
		
	}
	catch(e){
		alert(e.message);
	}
}

function handleLinkBtnClick(e){
	e.preventDefault();
	const categoryId = $(this).data('id');
	changeTableContent(categoryId);
	updateBtnStyle($(this))
	updateSearchbar();
}

async function handleSearchBtnClick(e){
	e.preventDefault();
	const searchKeyword = $("#searchKeyword").val();
	searchTableContent(searchKeyword);
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
			searchTableContent(searchKeyword,pageNo);
			return;
		}
		
		const categoryId = $(".link-btn.active").data('id');
		if(!categoryId){
			throw new Error('Id가 없습니다.');			
		}
		changeTableContent(categoryId, pageNo);
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

async function changeTableContent(categoryId,pageNo=1){
	try{
		const tableContent = await callAjax('GET', `/customer/faq/${categoryId}?pageNo=${pageNo}`);
		if(!tableContent){
			throw new Error('테이블 콘텐츠 리로드에 실패했습니다.')
		}
		$("#customerTable").html(tableContent);
		updatePagination();
	}
	catch(e){
		alert(e.message);
	}	
}

async function searchTableContent(searchKeyword,pageNo=1){
	try{
		if(!searchKeyword){
			throw new Error('검색할 내용을 입력해주세요.');
		}
		
		const tableContent = await callAjax('GET',`/customer/faq/search?title=${searchKeyword}&pageNo=${pageNo}`);
		if(!tableContent){
			throw new Error('테이블 콘텐츠 리로드에 실패했습니다.');
		}
		$("#customerTable").html(tableContent);
		updatePagination();
	}
	catch(e){
		alert(e.message);
	}
}