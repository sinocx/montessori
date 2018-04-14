const options = {
  valueNames: [ 'child-name', 'sub-id', 'sub_status', 'sex' ],
  page: 10,
  pagination: true
};

const subCards = new List('dashboard_admin', options);

const e = document.getElementById("step-select");
e.addEventListener('change', function() {

  const strUser = e.value;
  console.log(strUser);

  if (strUser == "") {
    subCards.filter();
  } else if (strUser == 0) {
    subCards.filter(function(item) {
      if (item.values().sub_status == strUser) {
        return true;
      } else {
        return false;
      }
    });
  } else if (strUser == 1) {
    subCards.filter(function(item) {
      if (item.values().sub_status == strUser) {
        return true;
      } else {
        return false;
      }
    });
  } else if (strUser == 2) {
    subCards.filter(function(item) {
      if (item.values().sub_status == strUser) {
        return true;
      } else {
        return false;
      }
    });
  } else if (strUser == 3) {
    subCards.filter(function(item) {
      if (item.values().sub_status == strUser) {
        return true;
      } else {
        return false;
      }
    });
  }
});

const girlButton = document.getElementById('girl');
const boyButton = document.getElementById('boy');
const allButton = document.getElementById('all');

girlButton.addEventListener('click', function() {
  subCards.filter(function(item) {
    if (item.values().sex.replace(/^\s+|\s+$/gm,'') == "Fille") {
      return true;
    } else {
      return false;
    }
  });
});

boyButton.addEventListener('click', function() {
  subCards.filter(function(item) {
    if (item.values().sex.replace(/^\s+|\s+$/gm,'') == "Garçon") {
      return true;
    } else {
      return false;
    }
  });
});

allButton.addEventListener('click', function() {
  subCards.filter();
});
