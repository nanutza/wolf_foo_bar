$( document ).ready(function() {
  // $("button").addClass("animated bounce");
  // $(".well").addClass("animated bounce");
  // $(".well").addClass("animated shake");
  // $("#target6").addClass("animate fadeOut")
  $("#target1").css("color", "red");
  // $("#target1").prop("disabled", true);
  $("#target4").remove();
  //   $("#target2").appendTo("#right-well");
  //   $("#target5").clone().appendTo("#left-well");
  $("#target1").parent().css("background-color", "red");
  //   $("#right-well").children().css("color", "orange");
  $("#left-well").children().css("color", "green");
  $(".target:nth-child(2)").addClass("animated bounce");
  // $(".target:even").addClass("animated shake");
  $( "#target3" ).slideUp( 2600 );
  $( ".target:odd" ).hide( 500 ).delay( 1500 ).show( 300 );
  $( "button" ).animate({
    left: [ "+=50", "swing" ],
    opacity: [ 0.75, "linear" ]
}, 30);

});



// https://learn.jquery.com/effects/intro-to-effects/