document.addEventListener("DOMContentLoaded", function(event) {

  const books = document.querySelectorAll('.book-overlay');
  // const wrapper = document.getElementById('biblio');

  // for (var book of books) {
  //   book.addEventListener('click', function() {
  //     if (this.classList.contains('selected')) {
  //       this.classList.remove('selected');
  //     } else {
  //       books.forEach(function(book) {
  //         if (book.classList.contains('selected')) {
  //           book.classList.remove('selected');
  //         }
  //       });
  //       console.log('adding selected');
  //       this.classList.add('selected');
  //     }
  //   });

    // wrapper.addEventListener('click', function() {
    //   books.forEach(function(book) {
    //     if (book.classList.contains('selected')) {
    //       book.classList.remove('selected');
    //     }
    //   });
    // })
  // };
  window.onclick = function(event) {
    console.log(event.target);
    books.forEach(function(book) {
      console.log(book.children);
      let elmt = [book];
      for (var child in book.children) {
        elmt.push(child);
      };
      // console.log(elmt);
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
