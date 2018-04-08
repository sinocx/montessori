document.addEventListener("DOMContentLoaded", function(event) {

  const books = document.querySelectorAll('.book-overlay');

  window.onclick = function(event) {
    books.forEach(function(book) {
      let elmt = [book];
      elmt.push(book.children.item(0));
      elmt.push(book.children.item(1));
      elmt.push(book.children.item(2));
      if (elmt.includes(event.target) && book.classList.contains('selected')) {
        book.classList.remove('selected');
      } else if (elmt.includes(event.target) && !book.classList.contains('selected')) {
        book.classList.add('selected');
      } else if (book.classList.contains('selected')) {
        book.classList.remove('selected');
      }
    });
  };

});
