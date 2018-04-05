document.addEventListener("DOMContentLoaded", function(event) {

  const chooseButton2 = (buttonA_id, buttonB_id, radioA_id, radioB_id) => {
    const buttonA = document.getElementById(buttonA_id);
    const buttonB = document.getElementById(buttonB_id);
    const radioA = document.getElementById(radioA_id);
    const radioB = document.getElementById(radioB_id);
    buttonA.addEventListener('click', function() {
      if (buttonB.classList.contains('selected')) {
        buttonB.classList.remove('selected');
      }
      if (!buttonA.classList.contains('selected')) {
        buttonA.classList.add('selected');
      }
      radioB.checked = false;
      radioA.checked = true;
    });
    buttonB.addEventListener('click', function() {
      if (buttonA.classList.contains('selected')) {
        buttonA.classList.remove('selected');
      }
      if (!buttonB.classList.contains('selected')) {
        buttonB.classList.add('selected');
      }
      radioA.checked = false;
      radioB.checked = true;
    })
  }
  chooseButton2('fille', 'garcon', 'child_no_valid_gender_féminin', 'child_no_valid_gender_masculin');
  chooseButton2('w-oui', 'w-non', 'child_no_valid_workshop_true', 'child_no_valid_workshop_false');
  chooseButton2('n-oui', 'n-non', 'child_no_valid_nursery_true', 'child_no_valid_nursery_false');



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

});
