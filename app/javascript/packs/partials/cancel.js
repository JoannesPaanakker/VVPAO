function cancelNewExp() {
  $("#cancel-new-exp").on("click", function(){
    $("#new-expertise").slideDown(150);
    $("#cancel-new-exp").slideUp(150);
    $('#expertise-form').slideUp(150);
  });
  console.log('cancelNewExp loaded');
}

export { cancelNewExp };
