$(function(){
  //$.datepicker.setDefaults($.datepicker.regional["es"]);
	$(".datepicker").datepicker({
    "format": "yyyy-mm-dd",
    "weekStart": 1,
    "language": 'es',
    "autoclose": true
    //"minDate": "-20D",
    //"maxDate": "+2M, -10D"
    //"changeMonth": true,
    //"changeYear": true,
    //"yearRange": "2000:2013"
  });
});
