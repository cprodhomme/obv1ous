var k = [79, 66, 86],
n = 0;
$(document).keydown(function (e) {
    if (e.keyCode === k[n++]) {
        if (n === k.length) {
            $('.awpheader').animate({
                left: "0",
            }, 3000, function() {

              });
            n = 0;
            return false;
        }
    }
    else {
        n = 0;
    }

});
