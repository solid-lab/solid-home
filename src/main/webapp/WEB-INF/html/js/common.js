$(document).ready(function () {

  // top버튼
  $(".top").hide();
  $(function () {

      $(window).scroll(function () {
          if ($(this).scrollTop() > 100) {
              $('.top').fadeIn();
          } else {
              $('.top').fadeOut();
          }
      });

      $('.top').click(function () {
          $('body,html').animate({
              scrollTop: 0
          }, 800);
          return false;
      });
  });

    // header menu
    $("#header").hover(function () {
        $(this).addClass("header_on");
        $(".h_02").stop().slideDown();
    }, function () {
        $(this).removeClass("header_on");
        $(".h_02").stop().slideUp();
    });

    $("ul.mainmenu li").hover(function () {
        $(this).addClass("m_li_on");
    }, function () {
        $(this).removeClass("m_li_on");
    });

    $("ul.submenu li").hover(function () {
        $(this).addClass("li_on");
    }, function () {
        $(this).removeClass("li_on");
    });

    $("ul.submenu").hover(function () {

        var idx = $(this).index();

        $(this).parent().parent().parent().siblings().children().children("ul.mainmenu").children("li").eq(idx).addClass("m_li_on");

    }, function () {
        $(this).parent().parent().parent().siblings().children().children("ul.mainmenu").children("li").removeClass("m_li_on");
    });


    // m header menu
    $(".m_h01 i").click(function(){
        $("#m_header").toggleClass("header_on");
        $(".m_h02").slideToggle();
        $("ul.m_sub").slideUp();
    });

    $("ul.m_main>li>a").click(function(){
        $("ul.m_sub").slideUp();
        $(this).siblings("ul.m_sub").slideDown();
    });


    // main Framework hover
    $(".section_ul li").hover(function(){
        $(this).addClass("cate_on");
    }, function(){
        $(this).removeClass("cate_on");
    });


    // sub route menu
    $(".select_title").click(function(){
        $(this).siblings("ul").slideToggle('fast');
    });
    $(".r_select01 ul li").click(function(){
      $(this).parent("ul").slideToggle('fast');
    });
    $(".r_select02").click(function(){
      $(".r_select03 ul").slideUp('fast');
    });
    $(".r_select03").click(function(){
      $(".r_select02 ul").slideUp('fast');
    });


    // sub1 nms hover
    $(".nms_box ul li").hover(function(){
        $(this).addClass("li_hover");
    }, function(){
        $(this).removeClass("li_hover");
    });


    // sub1 원스크롤
    $(".r_select02 ul li a").on('click', function (event) {
        $(this).parent().addClass("title_on");
        $(this).parent().siblings().removeClass("title_on");
        // $(this).parent().parent("ul").hide();

        if (this.hash !== "") {
            event.preventDefault();
            var hash = this.hash;
            $('html, body').animate({
                scrollTop: $(hash).offset().top
            }, 800, function () {
                window.location.hash = hash;
            });
        }
    });


    // sub2 사업영역 hover
    $(".b_b01 ul li").hover(function(){
        $(this).addClass("b_hover");
    }, function(){
        $(this).removeClass("b_hover");
    });


    // sub2 파트너 hover
    $(".b_b02 ul li").hover(function(){
        $(this).addClass("p_hover");
    }, function(){
        $(this).removeClass("p_hover");
    });


    // contact 개인정보처리방침 check
    $(".check_section i").click(function(){
        $(this).toggleClass("check_on");
    });

});
