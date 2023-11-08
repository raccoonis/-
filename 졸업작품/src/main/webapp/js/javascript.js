jQuery(document).ready(function(){

    //메뉴 
    $('.navi>li').mouseover(function(){
        $(this).find('.submenu').stop().slideDown(500);
    }).mouseout(function(){
        $(this).find('.submenu').stop().slideUp(500);
    });

    let scrolled = false;
    $(window).scroll(function(){

        var scroll = $(window).scrollTop();

        if (scroll > 10) { // 내려갔을 때

            if (!scrolled) {
                $(".top_bg").animate({opacity: 0.5, height: "100%"}, 500);
            }
            scrolled = true;

        } else if (scroll <= 0){ // 탑

            if (scrolled) {
                $(".top_bg").animate({opacity: 0, height: "0%"}, 500);
            }
            scrolled = false;

        }

    });

    $('.imgslide a:gt(0)').hide();
    setInterval(function(){
      $('.imgslide a:first-child').fadeOut()
         .next('a').fadeIn()
         .end().appendTo('.imgslide');},5000);

});