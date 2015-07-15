feature 'User Sign-up' do

  scenario 'can sign-up as new user' do
    expect {sign_up}.to change(User, :count).by(1)
    expect(page).to have_content('Banana')
    expect(User.first.email).to eq 'banana@example.com'
  end

end
