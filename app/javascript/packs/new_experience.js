const slider = document.getElementById('slider-new-experience');

const newDate1 = document.getElementById('new-date-1');
const newDate2 = document.getElementById('new-date-2');
const newDate3 = document.getElementById('new-date-3');

const newDate2Back = document.getElementById('new-date-2-back');
const newDate3Back = document.getElementById('new-date-3-back');
const submitExperienceBack = document.getElementById('submit-experience-back');

const realInput1 = document.getElementById('experience_title');
const realInput2 = document.getElementById('experience_category');
const realInput3 = document.getElementById('experience_description');
const realInput4 = document.getElementById('experience_location');
const realInput5 = document.getElementById('experience_date');

const container = document.getElementById('mainContainerForm');

const realPhotosButtonInput = document.getElementById('experience_photos_attributes_0_picture');
const photosButton = document.getElementById('photos-button');
var photoFileTitle = document.getElementById('experience_photos_attributes_0_picture');
const addedFileTitle = document.getElementById('photo-file-name');

const submitButton = document.getElementById('submit-experience-button');
const realSubmitExperienceButton = document.getElementById('experience-submit');

const cancelButton = document.getElementById('cancel-experience-button');

newDate1.addEventListener('click', function() {
  step1();
});

newDate2.addEventListener('click', function() {
  step2();
});

newDate3.addEventListener('click', function() {
  step3();
});

newDate2Back.addEventListener('click', function() {
  stepback1();
});

newDate3Back.addEventListener('click', function() {
  stepback2();
});

submitExperienceBack.addEventListener('click', function() {
  stepback3();
});

document.getElementById('submit-experience-button').addEventListener('click', function() {
  step3();
  //submitRealExperience();
});

document.addEventListener('keyup', function(e) {
  if (e.key == "ArrowRight") {
    nextStep();
  } else if (e.key == "ArrowLeft") {
    previousStep();
  } else if ((e.key === "Enter") && (container.dataset.step === "3")) {
    step3();
  }
});

// function submitRealExperience() {
//
// }

function nextStep() {
  if (container.dataset.step === "1") {
    step1();
  } else if (container.dataset.step === "2") {
    step2();
  } else if (container.dataset.step === "3") {
    step3();
  } else {
    step3();
  }
}

function previousStep() {
  if (container.dataset.step === "4") {
    stepback3();
  } else if (container.dataset.step === "3") {
    stepback2();
  } else if (container.dataset.step === "2") {
    stepback1();
  } else {
    stepback1();
  }
}

function step1() {
  slider.style.transform = 'translate(-100vw)';
  var input1 = document.getElementById('input-1').value;
  realInput1.value = input1;
  var input2 = document.getElementById('input-2').value;
  realInput2.value = input2;
  container.dataset.step = 2;
}

function step2() {
  slider.style.transform = 'translate(-200vw)';
  var input3 = document.getElementById('input-3').value;
  realInput3.value = input3;
  container.dataset.step = 3;
}

function step3() {
  var input4 = document.getElementById('input-4').value;
  realInput4.value = input4;
  var test1 = document.getElementById('test-1').value;
  realInput5.value = test1;
  if ((input4 != undefined) && (test1 != undefined)) {
    realSubmitExperienceButton.click();
  }
}

photoFileTitle.addEventListener('change', function() {
  x = photoFileTitle.value.replace('fakepath\\','')
  addedFileTitle.insertAdjacentHTML('beforeend', x + '<br>');
  photosButton.style.backgroundColor = '#9B2E2E'
  photosButton.style.borderColor ='#9B2E2E'
  photosButton.innerHTML = '<span style="color: white">✓</span>'

});

function stepback1() {
  slider.style.transform = 'translate(0vw)';
  container.dataset.step = 1;
};

function stepback2() {
  slider.style.transform = 'translate(-100vw)';
  container.dataset.step = 2;
};

function stepback3() {
  slider.style.transform = 'translate(-200vw)';
  container.dataset.step = 3;
};

photosButton.addEventListener('click', function() {
  realPhotosButtonInput.click();
});
