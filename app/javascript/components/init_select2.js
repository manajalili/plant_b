import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.js-exammple-basic-single').select2({
    placeholder: "Find a plant",
    allowClear: true
  });
};

export { initSelect2 };