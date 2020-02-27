import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-exammple-basic-single').val('').select2({
    placeholder: "Find a plant",
    allowClear: true
  });
};

export { initSelect2 };