// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require jquery.turbolinks
//= require owl.carousel.min
//= require jquery.mixitup.min
//= require jquery.stellar.min
//= require jssor.slider.min
//= require wow.min
//= require ga
//= require jquery.chocolat
//=require jquery.ellipsis.min

// Copyright 2014-2015 Twitter, Inc.
// Licensed under MIT (https://github.com/twbs/bootstrap/blob/master/LICENSE)
if (navigator.userAgent.match(/IEMobile\/10\.0/)) {
    var msViewportStyle = document.createElement('style')
    msViewportStyle.appendChild(
        document.createTextNode(
            '@-ms-viewport{width:auto!important}'
        )
    )
    document.head.appendChild(msViewportStyle)
}

$(document).ready(function () {
    $('.gallery a').Chocolat();

    $.stellar({
        horizontalScrolling: false,
        verticalOffset: 40
    });
    $('.text-wrapper').ellipsis(
        {
            lines: 3,             // force ellipsis after a certain number of lines. Default is 'auto'
            ellipClass: 'ellip',  // class used for ellipsis wrapper and to namespace ellip line
            responsive: true
        }
    );
    $('.product-wrapper').ellipsis(
        {
            lines: 7,             // force ellipsis after a certain number of lines. Default is 'auto'
            ellipClass: 'ellip',  // class used for ellipsis wrapper and to namespace ellip line
            responsive: true
        }
    );


    $("#about-img-slide").owlCarousel({
        items: 1,
        itemsDesktop: [1199, 1],
        itemsDesktopSmall: [979, 1],
        itemsTablet: [768, 1],
        autoPlay: true
    });

    $("#owl-slider").owlCarousel({
        autoPlay: 3000, //Set AutoPlay to 3 seconds

        items: 4,
        itemsDesktop: [1199, 3],
        itemsDesktopSmall: [979, 3]

    });

    var jssor_1_SlideoTransitions = [
        [{b: 5500.0, d: 3000.0, o: -1.0, r: 240.0, e: {r: 2.0}}],
        [{b: -1.0, d: 1.0, o: -1.0, c: {x: 51.0, t: -51.0}}, {
            b: 0.0,
            d: 1000.0,
            o: 1.0,
            c: {x: -51.0, t: 51.0},
            e: {o: 7.0, c: {x: 7.0, t: 7.0}}
        }],
        [{b: -1.0, d: 1.0, o: -1.0, sX: 9.0, sY: 9.0}, {
            b: 1000.0,
            d: 1000.0,
            o: 1.0,
            sX: -9.0,
            sY: -9.0,
            e: {sX: 2.0, sY: 2.0}
        }],
        [{b: -1.0, d: 1.0, o: -1.0, r: -180.0, sX: 9.0, sY: 9.0}, {
            b: 2000.0,
            d: 1000.0,
            o: 1.0,
            r: 180.0,
            sX: -9.0,
            sY: -9.0,
            e: {r: 2.0, sX: 2.0, sY: 2.0}
        }],
        [{b: -1.0, d: 1.0, o: -1.0}, {b: 3000.0, d: 2000.0, y: 180.0, o: 1.0, e: {y: 16.0}}],
        [{b: -1.0, d: 1.0, o: -1.0, r: -150.0}, {b: 7500.0, d: 1600.0, o: 1.0, r: 150.0, e: {r: 3.0}}],
        [{b: 10000.0, d: 2000.0, x: -379.0, e: {x: 7.0}}],
        [{b: 10000.0, d: 2000.0, x: -379.0, e: {x: 7.0}}],
        [{b: -1.0, d: 1.0, o: -1.0, r: 288.0, sX: 9.0, sY: 9.0}, {
            b: 9100.0,
            d: 900.0,
            x: -1400.0,
            y: -660.0,
            o: 1.0,
            r: -288.0,
            sX: -9.0,
            sY: -9.0,
            e: {r: 6.0}
        }, {b: 10000.0, d: 1600.0, x: -200.0, o: -1.0, e: {x: 16.0}}]
    ];

    var jssor_1_options = {
        $AutoPlay: true,
        $SlideDuration: 800,
        $SlideEasing: $Jease$.$OutQuint,
        $CaptionSliderOptions: {
            $Class: $JssorCaptionSlideo$,
            $Transitions: jssor_1_SlideoTransitions
        },
        $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$
        },
        $BulletNavigatorOptions: {
            $Class: $JssorBulletNavigator$
        }
    };

    var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

    //responsive code begin
    //you can remove responsive code if you don't want the slider scales while window resizes
    function ScaleSlider() {
        var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
        if (refSize) {
            refSize = Math.min(refSize, 1920);
            jssor_1_slider.$ScaleWidth(refSize);
        }
        else {
            window.setTimeout(ScaleSlider, 30);
        }
    }

    ScaleSlider();
    $(window).bind("load", ScaleSlider);
    $(window).bind("resize", ScaleSlider);
    $(window).bind("orientationchange", ScaleSlider);
    //responsive code end


});

$(function () {
    $('div#text-wrapper').dotdotdot();
});


//about img slider carousel

/* ==============================================
 WOW plugin triggers animate.css on scroll
 =============================================== */

var wow = new WOW(
    {
        boxClass: 'wow', // animated element css class (default is wow)
        animateClass: 'animated', // animation css class (default is animated)
        offset: 100, // distance to the element when triggering the animation (default is 0)
        mobile: false        // trigger animations on mobile devices (true is default)
    }
);
wow.init();


$(function () {
    $('[data-toggle="tooltip"]').tooltip();
});


/*=========================*/
/*========portfolio mix====*/
/*==========================*/
$('#grid').mixitup();
/*
 $(window).scroll(
 {
 previousTop: 0
 },
 function () {
 var currentTop = $(window).scrollTop();
 if (currentTop < this.previousTop) {
 $("header").hide();
 } else {
 $("header").show();
 }
 this.previousTop = currentTop;
 });
 */

