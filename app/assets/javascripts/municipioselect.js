$(document).ready(function() {
  
  $("#barriosDiv").css('display','none');
  $('#municipio_id').bind('change',function(e){
    var munici = $(this).val();
         
    if (munici != ""){
      $("#barriosDiv").css('display','block'); 
      update_barrios_div(munici)
    }
    else
      $("#barriosDiv").css('display','none')
    });
  });

  function update_barrios_div(municipio_id) {  
  jQuery.ajax({
    url: "/update_barrios",
    type: "GET",
    data: {"municipio_id" : municipio_id},
    dataType: "html",
    success: function(data) {
      jQuery("#barriosDiv").html(data);
    }
  });

}
