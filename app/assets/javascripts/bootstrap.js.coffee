jQuery ->
  $("a[rel~=popover], .has-popover").popover()
  $("a[rel~=tooltip], .has-tooltip").tooltip()
  
$(".datepicker").datepicker({
                dateFormat : "dd MM yy",
                buttonImageOnly : true,
                buttonImage : "<%= asset_path('iconDatePicker.gif') %>",
                showOn : "both",
                changeMonth : true,
                changeYear : true,
                yearRange : "c-20:c+5"
            })