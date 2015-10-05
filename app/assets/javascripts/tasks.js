$(function() {
  $('#tasks ul li span').click(function() {
    $('#' + this.dataset.targetLinkId).click();
  });


  $( "#sortable" ).sortable({
  placeholder: "ui-state-highlight",
  handle: ".handle"
  });
  $( "#sortable" ).disableSelection();
});

