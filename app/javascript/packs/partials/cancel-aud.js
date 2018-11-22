function cancelNewAud() {
  $("#cancel-new-aud").on("click", function(){
    $("#new-targetaudience").slideDown(150);
    $("#cancel-new-aud").slideUp(150);
    $('#targetaudience-form').slideUp(150);
  });
  console.log('cancelNewAud loaded');
}

export { cancelNewAud };
