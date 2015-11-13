// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

var stratsCT = new Array(
                        "If you see an enemy you must stop entirely and don't shoot or move until three second have passed after he saw you.",
                        "You can only move when below 50% ammo left in your magazine",
                        "One person buys a gun and everyone else follows him and picks up the gun when he dies."
                        );

var stratsT = new Array(
                        "You can't go where you've already gone!",
                        "Change your resolution to something you're not used to (e.g If you play on 4:3 use 16:9, vice versa).",
                        "Your team is now a group of vampires with Transylvanian (Romanian) accents. Whenever you kill an enemy or if a teammate dies near you, you must suck its blood for approximately five seconds by crouching over its neck all the while making slurping noises."
                        );

$( document ).ready(function() {

    $(".T, .CT").click(function(){
        var n = Math.floor((Math.random() * stratsCT.length));

        // Math.floor((Math.random() * 100) + 1);

        if($(this).hasClass("CT")){

            $("blockquote").css("border-left","5px solid #01579b");
            $(".content-strat").text(stratsCT[n]);
        }
        if($(this).hasClass("T")){

            $("blockquote").css("border-left","5px solid #ffab40");
            $(".content-strat").text(stratsT[n]);
        }
    });
});
