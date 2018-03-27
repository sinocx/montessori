const tabs = document.querySelectorAll(".nav-link")
tabs.forEach( function(e){
  e.addEventListener('click', (event) => {
    $(".nav-link").removeClass('active');
  });
});

$(document).ready(function(){
  $(".nav-link").click(function(){
    $(this).toggleClass("active");
  });
  $('.nav-link').mouseenter(function(){
    $(this).delay(5).animate({marginTop: "-20px"}, 300);
    $(this).children(".tab-extension").animate({height: "20px"}, 300);
  })
  $('.nav-link').mouseleave(function(){
    $(this).animate({marginTop: "0px"}, 300);
    $(this).children(".tab-extension").animate({height: "0px"}, 300);
  })
});

