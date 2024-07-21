import { callAjax, makeRequestUrl } from "../api/ajax.js";

$(document).ready(function(){	
	// Category Button Event
	$("#pageLink").on("click", ".link-btn", function(e){
		handleLinkBtnClick.bind(this)(e);
	})
	$("#pageLink").on("click", ".tab_header .tab_wrap li:not(.active) .sub_btn", function(e){
		handleHeaderBtnClick.bind(this)(e);
	});
	// Searchbar Event
	$("#pageLink").on("click","#searchBtn", handleSearchBtnClick);
	
	// Pagination Button Event
	$("#pageLink").on("click",".brd_paginate > ol > li > a",handlePageNoClick);

})

async function handleHeaderBtnClick(e){
	e.preventDefault();
	const url = $("#customerTable").data("url");
	const categoryId = $(this).data('id');
	changeTableContent(url, categoryId);
	updateBtnActive($(".tab_header .tab_wrap li.active"),$(this).parent());
}

function handleLinkBtnClick(e){
	e.preventDefault();
	const url = $("#customerTable").data("url");
	const categoryId = $(this).data('id');
	changeTableContent(url, categoryId);
	updateBtnActive($(".link-btn"),$(this))
	cleanSearchbar();
}

async function handleSearchBtnClick(e){
	e.preventDefault();
	const url = $("#customerTable").data("url");
	const searchKeyword = $("#searchKeyword").val();
	searchTableContent(url, searchKeyword);
}

function handlePageNoClick(e){
	e.preventDefault();
	const pageNo = $(this).text();
	try{
		if(!pageNo){
			throw new Error('pageNo가 없습니다.');		
		}
		
		const url = $("#customerTable").data("url");
		if(!url){
			throw new Error('요청된 url이 없습니다.')
		}
		
		const searchKeyword =  $("#searchKeyword").val();
		if(searchKeyword){
			searchTableContent(url,searchKeyword,pageNo);
			return;
		}
		
		const categoryId = $(".link-btn.active").data('id');
		if(!categoryId){
			throw new Error('Id가 없습니다.');			
		}
		changeTableContent(url, categoryId, pageNo);
	}
	catch(e){
		console.log(e.message);	
	}
}

function updatePagination(){
	$(".brd_paginate > ol > li > a").click(handlePageNoClick);
}

function updateBtnActive(removeTarget,target){
	removeTarget.removeClass("active");
	target.addClass("active")
}

function cleanSearchbar(){
	$("#searchKeyword").val("");
}

async function changeTableContent(url,categoryId,pageNo=1){
	try{
		const requestUrl = makeRequestUrl(url, categoryId, {'pageNo': pageNo});
		const tableContent = await callAjax('GET', requestUrl);
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

async function searchTableContent(url,searchKeyword,pageNo=1){
	try{
		if(!searchKeyword){
			throw new Error('검색할 내용을 입력해주세요.');
		}
		const requestUrl = makeRequestUrl(`${url}/search`,null,{'title':searchKeyword, 'pageNo': pageNo});
		const tableContent = await callAjax('GET',requestUrl);
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