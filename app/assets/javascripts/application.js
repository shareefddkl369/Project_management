// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
$(document).ready(function() {
    $("textarea").elastic();
});

function make_style_pattern(t) {
    a = t.value.split('\n');
    b = 1;
    for (x = 0; x < a.length; x++) {
        if (a[x].length >= t.cols)
            b += Math.floor(a[x].length / t.cols);
    }
    b += a.length;
    if (b > t.rows)
        t.rows = b;
}