import { callAjax, makeRequestUrl } from "../api/ajax.js";

$(document).ready(function(){	
	// Category Button Event
	$("#pageLink").on("click", ".lotcipassfaq .link-btn", function(e){
		handleLinkBtnClick.bind(this)(e);
	})
	$("#pageLink").on("click", ".tab_header .tab_wrap li:not(.active) .sub_btn", function(e){
		handleHeaderBtnClick.bind(this)(e);
	});
	// Searchbar Event
	$("#pageLink").on("click","#searchFaqBtn", handleFaqSearchBtnClick);
	$("#pageLink").on("click","#searchNoticeBtn", handleNoticeSearchBtnClick);
	
	// Pagination Button Event
	$("#pageLink").on("click",".brd_paginate > ol > li > a",handlePageNoClick);
	
	// SelectBox Event
	$("#pageLink").on("change", "#theaterSelect",handleNoticeTheaterChange);
	
	// Link Event
	$("#pageLink").on("click", ".link-a",function(e){
		handleBoardDetailClick.bind(this)(e);
	});
})

async function handleBoardDetailClick(e){
	e.preventDefault();
	
	try{
		const boardId = $(this).data("id");
		const url ="/customer/noticeDetail";
		const tableContent = await callAjax('GET', url+"/"+boardId);
		if(!tableContent){
			throw new Error('테이블 콘텐츠 리로드에 실패했습니다.')
		}
		$("#pageLink > li.active > .tab_contents").html(tableContent);
	}
	catch(e){
		alert(e.message);
	}	
}


function handleHeaderBtnClick(e){
	e.preventDefault();
	const url = $("#customerTable").data("url");
	const categoryId = $(this).data('id');
	changeTableContent(url, categoryId);
	updateBtnActive($(".tab_header .tab_wrap li.active"),$(this).parent());
	handleSelectBoxChange(categoryId);
}

function handleSelectBoxChange(categoryId){
	if(categoryId===2){
		$(".selectbox-hidden").removeClass("hidden");
		load();
		switchSearchbarLength("short","normal");
	}
	else{
		$(".selectbox-hidden").addClass("hidden");
		$("#regionSelect").html("");
		$("#theaterSelect").html("");
		switchSearchbarLength("normal","short");
	}
}

function handleLinkBtnClick(e){
	e.preventDefault();
	const url = $("#customerTable").data("url");
	const categoryId = $(this).data('id');
	changeTableContent(url, categoryId);
	updateBtnActive($(".link-btn"),$(this))
	cleanSearchbar();
}

function handleFaqSearchBtnClick(e){
	e.preventDefault();
	const url = $("#customerTable").data("url");
	const searchKeyword = $("#searchKeyword").val();
	searchTableContent(url, null,searchKeyword);
}

function handleNoticeSearchBtnClick(e){
	e.preventDefault();
	const url = $("#customerTable").data("url");
	const searchKeyword = $("#searchKeyword").val();
	const categoryId = $(".link-btn.active").data('id');
	if(!categoryId){
		throw new Error('Id가 없습니다.');			
	}
	searchTableContent(url, categoryId,searchKeyword);
}

function handleNoticeTheaterChange(e){
	e.preventDefault();
	try{
		const url = $("#customerTable").data("url");
		if(!url){
			throw new Error('요청된 url이 없습니다.')
		}
		
		const selectTheater =  $("#theaterSelect").val();
		changeTableContentWithParams(url, 2, {theater: selectTheater});
	}
	catch(e){
		console.log(e.message);	
	}
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
			searchTableContent(url,null,searchKeyword,pageNo);
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

function switchSearchbarLength(add,remove){
	if($("#searchKeyword").hasClass(remove)){
		$("#searchKeyword").removeClass(remove);
	}
	else{
		$("#searchKeyword").addClass(add);
	}
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

async function changeTableContentWithParams(url,categoryId,params,pageNo=1){
	try{
		const requestUrl = makeRequestUrl(url, categoryId, params, {'pageNo': pageNo});
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

async function searchTableContent(url,categoryId,searchKeyword,pageNo=1){
	try{
		if(!searchKeyword){
			throw new Error('검색할 내용을 입력해주세요.');
		}
		const scope = $("#selectCondition1").val();
		const requestUrl = makeRequestUrl(`${url}/search`,categoryId,{'searchKeyword':searchKeyword, 'scope':scope!==null?scope:"",'pageNo': pageNo});
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