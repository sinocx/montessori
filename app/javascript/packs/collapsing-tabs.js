document.addEventListener("DOMContentLoaded", function(event) {

  const panels = document.querySelectorAll('.panel');
  const buttons = document.querySelectorAll('.btn-tabs');

  for (var button of buttons) {
    button.addEventListener('click', function() {
      if (this.closest('.panel').classList.contains('closed')) {
        panels.forEach(function(panel) {
          if (!panel.classList.contains('closed')) {
            panel.classList.add('closed');
          }
        })
        this.closest('.panel').classList.remove('closed');
      } else {
        that = this;
        setTimeout("that.closest('.panel').classList.add('closed')", 200);
      }
    });
  };

});
