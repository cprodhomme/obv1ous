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
//= require_tree .
//= require materialize-sprockets

$( document ).ready(function() {


var k = [38, 38, 40, 40, 37, 39, 37, 39, 66, 65],
n = 0;
$(document).keydown(function (e) {
    if (e.keyCode === k[n++]) {
        if (n === k.length) {
            Materialize.toast('The konami code !!!', 6000);
            Materialize.toast('You are smart for an human.', 8000);
            if($(".pseudoNav a").text().length){
                Materialize.toast('Nice to meet you ' + $(".pseudoNav a").text() + ".", 10000);
            }
            n = 0;
            return false;
        }
    }
    else {
        n = 0;
    }
});

    $(".icoinfoplayer").hover(function(){
        $(this).parent().find(".infoPlayer").text($(this).attr('data'));
    },function(){
        $(this).parent().find(".infoPlayer").text("");
    });

});
