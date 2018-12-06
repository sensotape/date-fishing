import flatpickr from 'flatpickr';

flatpickr(".datepickr", {
  // mode: "range",
  altInput: true,
  minDate: "today",
  maxDate: new Date().getDate() + "/" + (new Date().getMonth() + 1) + "/" + (new Date().getFullYear() + 1)
});

flatpickr(".datepickr-range", {
  mode: "range",
  altInput: true,
  minDate: "today",
  maxDate: new Date().getDate() + "/" + (new Date().getMonth() + 1) + "/" + (new Date().getFullYear() + 1)
});

flatpickr(".datepickr-birthday", {
  altInput: true,
  maxDate: "today"
});
