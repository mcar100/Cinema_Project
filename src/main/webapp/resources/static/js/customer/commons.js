import { callAjax } from "../api/ajax.js";

$(document).ready(function(){
	reload("/customer/faq");
	$("#pageLink > li > .tab_tit").click(handleLinkClick);
})

function handleLinkClick(){
	const url = $(this).data("link");
	$("#pageLink > li").removeClass("active");
	$(this).parent().addClass("active");
	reload(url);
}

async function reload(url){
	try{
		$("#pageLink .tab_contents").html("<div class='skeleton_box'></div>");
		const content = await callAjax('GET',url);	

		if(!content){
			throw new Error('페이지 로드에 실패했습니다.');
		}
		$(".skeleton_box").remove();
		$("#pageLink > .active > .tab_contents").html(content);
	}
	catch(e){
		console.log(e.message);
	}
}