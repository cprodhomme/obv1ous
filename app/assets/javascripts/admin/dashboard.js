// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
//= require ckeditor/init
$( document ).ready(function() {

    var sentences = ["It's you ... again ROOOOOAR",
                    "I love you, but i love pizza more",
                    "You found a bug ? it’s not a bug – it’s an undocumented feature.",
                    "If it tastes like chicken, smell like chicken, it looks like chicken but Chuck Norris says to you that it's' sheep , whell it's sheep.",
                    "0100100001100101011011000110110001101111001000000110000101100100011011010110100101101110",
                    "Hello Georges ... Wait you are not georges !"
                ];


    $("#WelcomAdmin").text(sentences[Math.floor((Math.random() * sentences.length))]);

});
