/*global $ , alert , console */



/* Nice Scroll
===============================*/
$(document).ready(function () {
      $('[data-toggle="popover"]').popover(); 
    "use strict";
	$("html").niceScroll({
        scrollspeed: 60,
        mousescrollstep: 35,
        cursorwidth: 8,
        cursorcolor: '#191970',
        cursorborder: 'none',
        background: '#ddd',
        cursorborderradius: 3,
        autohidemode: false,
        cursoropacitymin: 0.1,
        cursoropacitymax: 1,
        zindex: "9999",
        horizrailenabled: false
	});
   
});

/*Fixed Header 
============================*/
$(document).ready(function () {
    "use strict";
    function getCurrentScroll() {
        return window.pageYOffset || document.documentElement.scrollTop;
    }
    var scroll_offset = 120,
        main_offset = 95;
    $(window).scroll(function () {
        var current_offset = getCurrentScroll();
        if (current_offset >= scroll_offset) {
            $('.header,.main,.top-header').addClass('scrolled');
        } else {
            $('.header,.main,.top-header').removeClass('scrolled');
        }
//        if (current_offset >= main_offset) {
//            $('.main').addClass('relative');
//        } else {
//            $('.main').removeClass('relative');
//        }
    });
});


$(document).ready(function () {
    "use strict";
	$('.btn-wishlist').click(function () {
        $(this).toggleClass('added-to-wishlist');
       // $(this).attr("title", "حذف من المفضلة");
    });
   
});


/* Timer Counter
===============================*/
var v_count = '0';
$(window).scroll(function () {
    'use strict';
    $('.timer').each(function () {
        var imagePos = $(this).offset().top,
            topOfWindow = $(window).scrollTop();
        if (imagePos < topOfWindow + 600 && v_count === '0') {
            $(function ($) {
                function count(options) {
                    v_count = '1';
                    options = $.extend({}, options || {}, $(this).data('countToOptions') || {});
                    $(this).countTo(options);
                }
                // start all the timers
                $('.timer').each(count);
            });
        }
    });
});
/*File Upload 
=========================*/
$(document).ready(function () {
    "use strict";
    $(".upload").on("change", function () {
        $(this).next(".chose-file").children("p").text($(this).val());
    });
});

/*Owl Carousel
=============================*/
$(document).ready(function () {
    "use strict";
    $(".carousel-2").owlCarousel({
        items : 3,
        itemsDesktopSmall : [979, 2],
        itemsDesktop : [1199, 2],
        navigation : true,
        pagination : false,
        autoPlay : true,
        navigationText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"]
    });
    
    $(".carousel-1").owlCarousel({
        items : 1,
        itemsDesktopSmall : [979, 1],
        itemsDesktop : [1199, 1],
        navigation : true,
        pagination : false,
        autoPlay : true,
        navigationText: ["<i class='fa fa-chevron-left'></i>", "<i class='fa fa-chevron-right'></i>"]
    });
});

/*Lighbox text
=========================*/
$(document).ready(function () {
    "use strict";
    $('.popup-text').magnificPopup({
        removalDelay: 500,
        closeBtnInside: true,
        callbacks: {
            beforeOpen: function () {
                this.st.mainClass = this.st.el.attr('data-effect');
            }
        },
        midClick: true
    });
    $('[data-toggle="tooltip"]').tooltip();   
});
