// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap.min
//= require_tree .
var appkey = 'XWny5j0V89yb1uZu6SI_D95EADV5FzBYldE9Ny0_q0GOzcWLiruPyhN-f2Pcyohf';

$(document).ready(function() {
  $(".video-container").click(function(){
      window.location.href = '/videos/'+$(this).data('video');
  });
});

var showLoginModal = function(video){
  video_detail = $("#video_id").val();
  $("#login-modal").modal("show");
}

//<div id="zype_<%= video['_id'] %>"></div><script src="https://player.zype.com/embed/<%= video['_id'] %>.js?autoplay=true&access_token= {access_token} " type="text/javascript"></script>
