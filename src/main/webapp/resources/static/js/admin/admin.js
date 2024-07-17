import { callAjax } from "../api/ajax.js";

$(document).ready(function(){
	reload("/admin/customer/faq");
	$("#pageLink > li > .tab_tit").click(handleLinkClick);
})

function handleLinkClick(){
	const url = $(this).data("link");
	reload(url);
	$("#pageLink > li").removeClass("active");
	$(this).parent().addClass("active");
}

async function reload(url){
	try{
		const content = await callAjax('GET',url);	

		if(!content){
			throw new Error('페이지 로드에 실패했습니다.');
		}
		$("#adminContent").html(content);
	}
	catch(e){
		$("#adminContent").html(e.message);
	}
}