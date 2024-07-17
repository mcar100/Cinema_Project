$(function() {
	onload();
})

function onload() {
	tabMenu();
}

//tab : event
function tabMenu() {
	$(".tab_wrap > li:not(.active) .tab_wrap.inner > li .tab_tit").attr("tabindex", "-1");
	$(".tab_wrap .tab_tit").off().on("click focusin", function() {
		$(this).parent("li").addClass("active").siblings("li").removeClass("active");
		if ($(this).siblings(".tab_con").find(".tab_wrap.inner").length > 0) {
			$(this).parents(".tab_wrap").find(".tab_wrap.inner > li .tab_tit").attr("tabindex", "-1");
			$(this).siblings(".tab_con").find(".tab_wrap.inner > li .tab_tit").attr("tabindex", "0");
		}
	});
};