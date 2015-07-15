$(document).ready(function() {

  $('#signUpForm').hide();
    $('#signUpButton').click(function() {
      $('#signUpForm').show();
      $('#signUpButton').hide();
      $('#signInForm').hide();
      $('#signInButton').show();

   });

  $('#signInForm').hide();
    $('#signInButton').click(function() {
      $('#signInForm').show();
      $('#signInButton').hide();
      $('#signUpForm').hide();
      $('#signUpButton').show();

  });
});
