// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

$(document).ready(function()
{
  $("tr:odd").css({
    "background-color":"rgba(0,0,255,0.6)",
    "color":"#000000"});
});

$(function() {
   $('#geo-input').geocomplete();
});

function ubication() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else {
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {

    var x = document.getElementById("latitude");
    var y = document.getElementById("longitude");

    $("#latitude").prop('value', position.coords.latitude);
    $("#longitude").prop('value', position.coords.longitude);
}