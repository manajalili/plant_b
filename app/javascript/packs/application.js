/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

// import { initMapbox } from '../plugins/init_mapbox';

// import " ../plugins/flatpickr"

// import { toggleDateInputs } from '../plugins/booking';

// initMapbox();

// toggleDateInputs();
import {$,jQuery} from 'jquery';

import flatpickr from 'flatpickr'
import initMapbox from 'plugins/init_mapbox'
import 'flatpickr/dist/flatpickr.min.css'

flatpickr(".datepickr", {
  altInput: true,
   enableTime: true
});

initMapbox();
