const tabs = document.querySelectorAll(".nav-item");
tabs.forEach( function(e){
  e.addEventListener('click', (event) => {
    $(".nav-item").removeClass('active');
    $(".nav-item").removeClass('white');
  });
});

$(document).ready(function(){
  $(".nav-item").click(function(){
    $(this).toggleClass("active");
    $(this).toggleClass("white");
  });
});
