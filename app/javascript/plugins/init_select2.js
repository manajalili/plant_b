import $ from 'jquery';
import 'select2';
import 'select2/dist/css/select2.css';

const initSelect2 = () => {
  $('.js-exammple-basic-single').val('').select2({
    placeholder: "Find a plant 🌱",
    allowClear: true
  });
};

export default initSelect2;
