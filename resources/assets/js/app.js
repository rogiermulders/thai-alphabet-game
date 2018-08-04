
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

$(function () {
    
    setTimeout(function(){
        $('[data-toggle="tooltip"]').tooltip()
    }, 10000);
  
});


var player = $('#game-audio')[0]

player.play();