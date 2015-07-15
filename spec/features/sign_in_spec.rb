feature 'User sign in' do

  let(:user) do
    build :user
  end

  scenario 'can sign in' do
    sign_up user
    click_button 'Sign out'
    sign_in user
    expect(page).to have_content("#{user.username}")
  end

end
