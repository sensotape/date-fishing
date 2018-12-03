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


const realPhotosButtonInput = document.getElementById('experience_photos_attributes_0_picture');
const photosButton = document.getElementById('photos-button');
var photoFileTitle = document.getElementById('experience_photos_attributes_0_picture');
const addedFileTitle = document.getElementById('photo-file-name');

const submitButton = document.getElementById('submit-experience-button');
const realSubmitExperienceButton = document.getElementById('experience-submit');

const cancelButton = document.getElementById('cancel-experience-button');

newDate1.addEventListener('click', function() {
  slider.style.transform = 'translate(-100vw)';
  var input1 = document.getElementById('input-1').value;
  realInput1.value = input1;
});

newDate2.addEventListener('click', function() {
  slider.style.transform = 'translate(-200vw)';
  var input3 = document.getElementById('input-3').value;
  realInput3.value = input3;

});

newDate3.addEventListener('click', function() {
  slider.style.transform = 'translate(-300vw)';

});

photosButton.addEventListener('click', function() {
  realPhotosButtonInput.click();
});

photoFileTitle.addEventListener('change', function() {
  addedFileTitle.insertAdjacentHTML('beforeend', photoFileTitle.value+'<br>');
});

submitButton.addEventListener('click', function() {
  realSubmitExperienceButton.click();
});


newDate2Back.addEventListener('click', function() {
  slider.style.transform = 'translate(0vw)';
});

newDate3Back.addEventListener('click', function() {
  slider.style.transform = 'translate(-100vw)';
});

submitExperienceBack.addEventListener('click', function() {
  slider.style.transform = 'translate(-200vw)';
});

