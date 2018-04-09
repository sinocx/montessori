// import List from 'list';

document.addEventListener("DOMContentLoaded", function(event) {

  const DeleteBtns = document.querySelectorAll('.btn-delete');

  for (var btn of DeleteBtns) {
    const cardId = btn.dataset.cardId;
    const card = document.getElementById(cardId);
    btn.addEventListener('click', function() {
      card.parentNode.removeChild(card);
    });
  };

  // let e = document.getElementById("step-select").value;
  // const strUser = e.options[e.selectedIndex].value;
  // console.log(e);

  function filter() {
    const e = document.getElementById("step-select");
    e.addEventListener('change', function() {

      const strUser = e.options[e.selectedIndex].value;
      console.log(strUser);

      // if (this.attr('class') == "step-0") {
      //   console.log("etape 0")
      //   subCards.filter();
      // } else if (this.attr('class') == "step-1") {
      //   var sub_status = item.values().sub_status;
      //   console.log(sub_status);
      // } else if (this.attr('class') == "step-2") {

      // } else if (this.attr('class') == "step-3") {

      // } else if (this.attr('class') == "step-4") {

      // }
    });
    // console.log(strUser);
  }
  filter();
  // const e = document.getElementById("step-select");
  // const strUser = e.options[e.selectedIndex].value;
  // console.log(strUser);

  const options = {
    valueNames: [ 'child-name', 'sub-id', 'sub_status' ],
    page: 10,
    pagination: true
  };

  const subCards = new List('dashboard_admin', options);

  // $('select').on('change', function () {
  //   // var optionSelected = $("option:selected", this);
  //   // var valueSelected = this.value;

  //   console.log("change");
  //   console.log(this.attr('class'));

  //   if (this.attr('class') == "step-0") {
  //     console.log("etape 0")
  //     subCards.filter();
  //   } else if (this.attr('class') == "step-1") {
  //     var sub_status = item.values().sub_status;
  //     console.log(sub_status);
  //   } else if (this.attr('class') == "step-2") {

  //   } else if (this.attr('class') == "step-3") {

  //   } else if (this.attr('class') == "step-4") {

  //   }
  // });

});
