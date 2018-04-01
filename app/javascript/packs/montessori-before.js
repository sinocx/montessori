document.addEventListener("DOMContentLoaded", function(event) {

  const chooseChildGender = () => {
    const filleButton = document.getElementById('fille');
    const garconButton = document.getElementById('garcon');
    const radioFille = document.getElementById('child_no_valid_gender_féminin');
    const radioGarcon = document.getElementById('child_no_valid_gender_masculin');
    filleButton.addEventListener('click', function() {
      if (garconButton.classList.contains('selected')) {
        garconButton.classList.remove('selected');
      }
      if (!filleButton.classList.contains('selected')) {
        filleButton.classList.add('selected');
      }
      radioGarcon.checked = false;
      radioFille.checked = true;
    });
    garconButton.addEventListener('click', function() {
      if (filleButton.classList.contains('selected')) {
        filleButton.classList.remove('selected');
      }
      if (!garconButton.classList.contains('selected')) {
        garconButton.classList.add('selected');
      }
      radioFille.checked = false;
      radioGarcon.checked = true;
    })
  }
  chooseChildGender();

  const montessoriBefore = () => {
    const yesButton = document.getElementById('mb-oui');
    const noButton = document.getElementById('mb-non');
    const radioYes = document.getElementById('child_no_valid_montessori_before_true');
    const radioNo = document.getElementById('child_no_valid_montessori_before_false');
    const montessoriNameInput = document.getElementById('montessori-name');
    yesButton.addEventListener('click', function() {
      if (noButton.classList.contains('selected')) {
        noButton.classList.remove('selected');
      }
      if (!yesButton.classList.contains('selected')) {
        yesButton.classList.add('selected');
      }
      radioNo.checked = false;
      radioYes.checked = true;
      if (montessoriNameInput.classList.contains('hidden')) {
        montessoriNameInput.classList.remove('hidden')
      }
    });
    noButton.addEventListener('click', function() {
      if (yesButton.classList.contains('selected')) {
        yesButton.classList.remove('selected');
      }
      if (!noButton.classList.contains('selected')) {
        noButton.classList.add('selected');
      }
      radioYes.checked = false;
      radioNo.checked = true;
      if (!montessoriNameInput.classList.contains('hidden')) {
        montessoriNameInput.classList.add('hidden')
      }
    })
  }
  montessoriBefore();

  const workshop = () => {
    const yesButton = document.getElementById('w-oui');
    const noButton = document.getElementById('w-non');
    const radioYes = document.getElementById('child_no_valid_workshop_true');
    const radioNo = document.getElementById('child_no_valid_workshop_false');
    yesButton.addEventListener('click', function() {
      if (noButton.classList.contains('selected')) {
        noButton.classList.remove('selected');
      }
      if (!yesButton.classList.contains('selected')) {
        yesButton.classList.add('selected');
      }
      radioNo.checked = false;
      radioYes.checked = true;
    });
    noButton.addEventListener('click', function() {
      if (yesButton.classList.contains('selected')) {
        yesButton.classList.remove('selected');
      }
      if (!noButton.classList.contains('selected')) {
        noButton.classList.add('selected');
      }
      radioYes.checked = false;
      radioNo.checked = true;
    })
  }
  workshop();

  const nursery = () => {
    const yesButton = document.getElementById('n-oui');
    const noButton = document.getElementById('n-non');
    const radioYes = document.getElementById('child_no_valid_nursery_true');
    const radioNo = document.getElementById('child_no_valid_nursery_false');
    yesButton.addEventListener('click', function() {
      if (noButton.classList.contains('selected')) {
        noButton.classList.remove('selected');
      }
      if (!yesButton.classList.contains('selected')) {
        yesButton.classList.add('selected');
      }
      radioNo.checked = false;
      radioYes.checked = true;
    });
    noButton.addEventListener('click', function() {
      if (yesButton.classList.contains('selected')) {
        yesButton.classList.remove('selected');
      }
      if (!noButton.classList.contains('selected')) {
        noButton.classList.add('selected');
      }
      radioYes.checked = false;
      radioNo.checked = true;
    })
  }
  nursery();

});
