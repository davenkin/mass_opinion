// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .


$(document).ready(function() {
    $("button.vote_button").click(function() {
        var vote_btn = $(this);
        $.ajax({
            url: "/home/vote/",
            type:"POST",
            data: {id:vote_btn.attr('id')},
            dataType: "json",
            success: function(data) {
                vote_btn.parent().children('.c_count').text(data);
                var total = 0;
                vote_btn.parents(".q_choices").children().each(function() {
                    total = total + parseInt($(this).children('.c_count').text())
                });
                var wh = data / total * 850
                vote_btn.parent().children(".c_elt").animate({width:0}, "fast");
                vote_btn.parent().children(".c_elt").animate({width:wh}, "slow");
            }
        });
    });


    $(".q_choices").each(function() {
        var total = 0;
        $(this).children().each(function() {
            total = total + parseInt($(this).children('.c_count').text());
        });
        $(this).children().each(function() {
            var choice_width = parseInt($(this).children('.c_count').text()) / total * 850;
            $(this).children(".c_elt").animate({width:choice_width}, "slow");
        });

    });
});


