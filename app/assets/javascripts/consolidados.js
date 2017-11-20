//= require footable/footable.all.min.js


profesores = $('#consolidado_ficha_id').html();

ficha = $('#consolidado_teacher_id :selected').text();
options = '<option value=""></option>';
options = options + $(profesores).filter("optgroup[label='" + ficha + "']").html()
if (options) {
  $('#consolidado_ficha_id').html(options);
}else{
  $('#consolidado_ficha_id').empty();
}


$('#consolidado_teacher_id').change(function() {
  ficha = $('#consolidado_teacher_id :selected').text();
  options = '<option value=""></option>';
  options = options + $(profesores).filter("optgroup[label='" + ficha + "']").html()
  if (options) {
    $('#consolidado_ficha_id').html(options);
  }else{
    $('#consolidado_ficha_id').empty();
  }
});

$(document).on('click', '.remove_link', function(event) {

  console.log("Entro");

  $(this).prev().find("input[type='hidden']").prop('value', '1');
  $(this).parents('.fields').hide();
  event.preventDefault();
});


$('.add_fields').click(function(event) {
  var new_id = new Date().getTime();
  var regexp = new RegExp($(this).data('id'), "g");
  // $(link).parent().before(content.replace(regexp, new_id));
  $(this).parents('tfoot').next('tbody').append($(this).data('fields').replace(regexp, new_id));

  $('.select2select').select2({
    width: "100%",
    theme: "bootstrap",
    language: "es"
  });
});


$('.select2select').select2({
  width: "100%",
  theme: "bootstrap",
  language: "es"
});
