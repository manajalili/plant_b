import $ from 'jquery';

const initEntersearch = () => {
$(document).ready(function(){
  $('#plant-search').keypress(function(e){
    if(e.keyCode==13)
    $('#plant-submit').click();
  });
});
};

export { initEntersearch };