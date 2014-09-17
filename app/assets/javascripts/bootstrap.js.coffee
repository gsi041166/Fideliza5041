jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()
jQuery ->
  $('#tabela').dataTable
    sPaginationType: "full_numbers"
    responsive: true 
    bProcessing: true
    sAjaxSource: $('#tabela').data('source')