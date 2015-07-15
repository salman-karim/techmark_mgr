feature 'User Sign-up' do

  let(:user) do
    build :user
  end

  scenario 'can sign-up as new user' do
    expect { sign_up user }.to change(User, :count).by(1)
    expect(page).to have_content("#{user.username}")
    expect(User.first.email).to eq 'banana@example.com'
  end

end
