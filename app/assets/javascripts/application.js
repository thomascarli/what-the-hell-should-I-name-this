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
//= require turbolinks
//= require_tree .

function generate_name(user_input) {
  $.ajax({
    url: "/generate_name",
    type: "POST",
    data: { "user_input": user_input },
    success: function(json) {
      generated_name = json.result.toString();
      $('.generated-name').text(generated_name);
    }
  });
}

function update_instructions() {
  $.ajax({
    url: "/generate_instruction",
    type: "POST",
    success: function(json) {
      generated_instruction = json.result.toString();
      $(".instructions").text(generated_instruction);
    }
  });
}

$( document ).on('ready page:load', function() {

  //User presses enter
  $(window).keydown(function(e) {

    var user_input = $(".input-box").val();

    if (e.keyCode === 13) {
      generate_name(user_input);
      update_instructions();
    }
  });

});
