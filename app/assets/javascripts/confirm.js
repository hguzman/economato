//Override the default confirm dialog by rails
$.rails.allowAction = function(link){
  if (link.data("confirm") == undefined){
    return true;
  }
  $.rails.showConfirmationDialog(link);
  return false;
}
//User click confirm button
$.rails.confirmed = function(link){
  link.data("confirm", null);
  link.trigger("click.rails");
}
//Display the confirmation dialog
$.rails.showConfirmationDialog = function(link){
  var message = link.data("confirm");
  var message2 = link.data("mensaje");
  var method = link.data("method");

  if (method == "post") {
    swal({
      title: message,
      text: message2,
      type: "warning",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      confirmButtonText: "Si",
      cancelButtonColor: "#DD6B55",
      closeOnConfirm: true },
      function(){
        $.rails.confirmed(link);
      });

  }else {
    swal({
      title: message,
      text: message2,
      type: "warning",
      showCancelButton: true,
      confirmButtonColor: "#DD6B55",
      confirmButtonText: "Si, Borrar",
      closeOnConfirm: true },
      function(){
        $.rails.confirmed(link);
      });

  }

}

toastr.options = {
    closeButton: true,
    progressBar: true,
    showMethod: 'slideDown',
    timeOut: 4000
};
