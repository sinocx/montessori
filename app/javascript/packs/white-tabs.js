const tabContent = $('.tab-content');
const initialHeight = tabContent.children(".tab-pane").outerHeight();
console.log(initialHeight);
tabContent.outerHeight(initialHeight + 30);

$(document).ready(function(){
  $(".nav-item").click(function(){
    $(".nav-item").removeClass('active');
    $(".nav-item").removeClass('white');
    $(this).addClass("active");
    $(this).addClass("white");
    const hashit = $(this).find('a').attr('href');
    const autoHeight = $(hashit).outerHeight();
    const content = tabContent.children(".tab-pane").children();
    content.animate({opacity: "0"}, 0);
    tabContent.animate({height: autoHeight}, 100, function(){
      content.animate({opacity: "1"}, 100);
    });
  });
});
