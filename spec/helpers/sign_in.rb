def sign_in user
  visit '/'
  within('form#signInForm') do
    fill_in :username, with: user.username
    fill_in :password, with: user.password
    click_button 'Sign in'
  end
end
