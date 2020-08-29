$(document).ready(function($) {
    pos=$(".logo1").position();
	$(window).scroll(function() {
        var posScroll=$(document).scrollTop();
		if(parseInt(posScroll)>parseInt(pos.top))
		{
			$(".logo1").addClass("fixed");
		}
		else{
			$(".logo1").removeClass("fixed");
			}
    });
	
	$(function() {
    $('.sli img:gt(0)').hide();
    setInterval(function(){
      $('.sli :first-child').fadeOut()
         .next('img').fadeIn()
         .end().appendTo('.sli');}, 
      3000);
})
});