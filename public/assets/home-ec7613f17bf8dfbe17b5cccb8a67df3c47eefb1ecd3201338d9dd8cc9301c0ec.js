/**
 * Created by Alex on 11/24/2015.
 */

jQuery(function() {
    var bar = jQuery('nav');
    var top = bar.css('top');
    var ww = jQuery(window).width();
    var navigationHeight = -jQuery('.collapse').height();
    var mobileTop = Math.floor(navigationHeight - 60);

    jQuery(window).scroll(function() {
        var homepageHeight = $('#homepage').height();
        if(jQuery(this).scrollTop() < homepageHeight) {
            bar.addClass('navbar-fixed-top');
        } else {
            bar.removeClass('navbar-fixed-top');
            if(ww < 768) {
                bar.stop().animate({top : mobileTop}, 600);
            } else {
                bar.stop().animate({top : top}, 300);
            }
        }
    });
});
