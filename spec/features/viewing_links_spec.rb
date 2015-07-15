
feature 'Viewing links' do

  scenario 'I can see existing links on the page' do
    Link.create(URL: 'www.rubymonk.com',title: 'Ruby Monk',
        category: [Category.first_or_create(name: 'ruby')],
        description: 'useful for basics')
    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Ruby Monk')
      expect(page).to have_content('www.rubymonk.com')
      expect(page).to have_content('ruby')
      expect(page).to have_content('tutorial')
      expect(page).to have_content('useful for basics')
    end



  end

end
