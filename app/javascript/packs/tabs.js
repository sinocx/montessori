const tabs = document.querySelectorAll(".nav-item");
tabs.forEach( function(e){
  e.addEventListener('click', (event) => {
    $(".nav-item").removeClass('active');
  });
});

$(document).ready(function(){
  $(".nav-item").click(function(){
    $(this).toggleClass("active");
  });
  $('.nav-item').mouseenter(function(){
    $(this).children(".tab-extension").animate({height: "20px"}, 200);
  })
  $('.nav-item').mouseleave(function(){
    $(this).children(".tab-extension").animate({height: "0px"}, 200);
  })
});

