feature 'Adding categories' do

  scenario 'can add 1 category to a new link' do

    visit 'links/new'
    fill_in 'url', with: 'www.rubykoans.com'
    fill_in 'title', with: 'Ruby Koans'
    fill_in 'category', with: 'self-learning ruby'
    fill_in 'description', with: 'Useful for precourse'
    click_button 'Create link'
    link = Link.first
    expect(link.categories.map { |category| category.name} ).to include('self-learning')
    expect(page).to have_content('self-learning')
  end

end