$(document).ready(function() {

  $('#signUpForm').hide();
    $('#signUpButton').click(function() {
      $('#signUpForm').show();
      $('#signInButton').show();
      $('#signInForm').hide();
      $('#signUpButton').hide();
   });

  $('#signInForm').hide();
    $('#signInButton').click(function() {
      $('#signInForm').show();
      $('#signUpButton').show();
      $('#signUpForm').hide();
      $('#signInButton').hide();
  });
});
