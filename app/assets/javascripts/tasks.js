$(function() {
  $( "#sortable" ).sortable({
  placeholder: "ui-state-highlight",
  handle: ".handle"
  });
  $( "#sortable" ).disableSelection();
});