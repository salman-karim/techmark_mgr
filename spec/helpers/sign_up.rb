def sign_up user
  visit '/user/new'
  fill_in :first_name, with: user.first_name
  fill_in :last_name, with: user.last_name
  fill_in :email, with: user.email
  fill_in :username, with: user.username
  fill_in :password, with: user.password
  fill_in :password_confirmation, with: user.password_confirmation
  click_button 'Sign up'
end
