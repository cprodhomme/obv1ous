// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).ready(function() {
    var shoot = 0;

    $('.logo_obv').click(function(){

        if (shoot < 8) {
            shoot = shoot +1;

            $('.awpheader').animate({
                left: "0",
            }, 1500, function() {
                $(".logo-img").attr("src","assets/logo-shoot-"+shoot+".png");
            }).delay( 400 );

            $('.awpheader').animate({
                left: "-200px",
            },1500);
        }

    });
});
