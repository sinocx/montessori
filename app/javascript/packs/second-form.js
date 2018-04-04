document.addEventListener("DOMContentLoaded", function(event) {

  const chooseButton3 = (buttonA_id, buttonB_id, buttonC_id, radioA_id, radioB_id, radioC_id) => {
    const buttonA = document.getElementById(buttonA_id);
    const buttonB = document.getElementById(buttonB_id);
    const buttonC = document.getElementById(buttonC_id);

    const radioA = document.getElementById(radioA_id);
    const radioB = document.getElementById(radioB_id);
    const radioC = document.getElementById(radioC_id);

    buttonA.addEventListener('click', function() {
      if (buttonB.classList.contains('selected')) {
        buttonB.classList.remove('selected');
      }
      if (buttonC.classList.contains('selected')) {
        buttonC.classList.remove('selected');
      }
      if (!buttonA.classList.contains('selected')) {
        buttonA.classList.add('selected');
      }
      radioB.checked = false;
      radioC.checked = false;
      radioA.checked = true;
    });
    buttonB.addEventListener('click', function() {
      if (buttonA.classList.contains('selected')) {
        buttonA.classList.remove('selected');
      }
      if (buttonC.classList.contains('selected')) {
        buttonC.classList.remove('selected');
      }
      if (!buttonB.classList.contains('selected')) {
        buttonB.classList.add('selected');
      }
      radioA.checked = false;
      radioC.checked = false;
      radioB.checked = true;
    });
    buttonC.addEventListener('click', function() {
      if (buttonA.classList.contains('selected')) {
        buttonA.classList.remove('selected');
      }
      if (buttonB.classList.contains('selected')) {
        buttonB.classList.remove('selected');
      }
      if (!buttonC.classList.contains('selected')) {
        buttonC.classList.add('selected');
      }
      radioA.checked = false;
      radioB.checked = false;
      radioC.checked = true;
    });
  }

  chooseButton3('n-a', 'n-b', 'n-c', 'second_form_nursery_0', 'second_form_nursery_1', 'second_form_nursery_2');
  chooseButton3('w-a', 'w-b', 'w-c', 'second_form_workshop_0', 'second_form_workshop_1', 'second_form_workshop_2');

  const chooseButton4 = (buttonA_id, buttonB_id, buttonC_id, buttonD_id, radioA_id, radioB_id, radioC_id, radioD_id) => {
    const buttonA = document.getElementById(buttonA_id);
    const buttonB = document.getElementById(buttonB_id);
    const buttonC = document.getElementById(buttonC_id);
    const buttonD = document.getElementById(buttonD_id);

    const radioA = document.getElementById(radioA_id);
    const radioB = document.getElementById(radioB_id);
    const radioC = document.getElementById(radioC_id);
    const radioD = document.getElementById(radioD_id);

    buttonA.addEventListener('click', function() {
      if (buttonB.classList.contains('selected')) {
        buttonB.classList.remove('selected');
      }
      if (buttonC.classList.contains('selected')) {
        buttonC.classList.remove('selected');
      }
      if (buttonD.classList.contains('selected')) {
        buttonD.classList.remove('selected');
      }
      if (!buttonA.classList.contains('selected')) {
        buttonA.classList.add('selected');
      }
      radioB.checked = false;
      radioC.checked = false;
      radioD.checked = false;
      radioA.checked = true;
    });
    buttonB.addEventListener('click', function() {
      if (buttonA.classList.contains('selected')) {
        buttonA.classList.remove('selected');
      }
      if (buttonC.classList.contains('selected')) {
        buttonC.classList.remove('selected');
      }
      if (buttonD.classList.contains('selected')) {
        buttonD.classList.remove('selected');
      }
      if (!buttonB.classList.contains('selected')) {
        buttonB.classList.add('selected');
      }
      radioA.checked = false;
      radioC.checked = false;
      radioD.checked = false;
      radioB.checked = true;
    });
    buttonC.addEventListener('click', function() {
      if (buttonA.classList.contains('selected')) {
        buttonA.classList.remove('selected');
      }
      if (buttonB.classList.contains('selected')) {
        buttonB.classList.remove('selected');
      }
      if (buttonD.classList.contains('selected')) {
        buttonD.classList.remove('selected');
      }
      if (!buttonC.classList.contains('selected')) {
        buttonC.classList.add('selected');
      }
      radioA.checked = false;
      radioB.checked = false;
      radioD.checked = false;
      radioC.checked = true;
    });
    buttonD.addEventListener('click', function() {
      if (buttonA.classList.contains('selected')) {
        buttonA.classList.remove('selected');
      }
      if (buttonB.classList.contains('selected')) {
        buttonB.classList.remove('selected');
      }
      if (buttonC.classList.contains('selected')) {
        buttonC.classList.remove('selected');
      }
      if (!buttonD.classList.contains('selected')) {
        buttonD.classList.add('selected');
      }
      radioA.checked = false;
      radioB.checked = false;
      radioC.checked = false;
      radioD.checked = true;
    });
  }

  chooseButton4('c-a', 'c-b', 'c-c', 'c-d', 'second_form_canteen_0', 'second_form_canteen_1', 'second_form_canteen_2', 'second_form_canteen_3');

});
