feature 'User sign out' do

  let(:user) do
    build :user
  end

  scenario 'can sign out' do
    sign_up user
    expect(page).to have_content("#{user.username}")
    click_button 'Sign out'
    expect(page).to have_content ('Goodbye')
    expect(page).not_to have_content("#{user.username}")
  end
end
