import "bootstrap";

 // Add slideDown animation to Bootstrap dropdown when expanding.
$('.dropdown').on('show.bs.dropdown', function() {
  $(this).find('.dropdown-menu').first().stop(true, true).slideDown();
  $('.dropdown-menu-btn-icon').animate({marginTop: "-40px"});
});

// Add slideUp animation to Bootstrap dropdown when collapsing.
$('.dropdown').on('hide.bs.dropdown', function() {
  $(this).find('.dropdown-menu').first().stop(true, true).slideUp();
  $('.dropdown-menu-btn-icon').animate({marginTop: "0"});
});
