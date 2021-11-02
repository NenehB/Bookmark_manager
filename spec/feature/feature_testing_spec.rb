require 'capybara/rspec'

feature 'See list of bookmarks' do
  scenario 'see bookmark' do
    visit('/')
    expect(page).to have_content 'Welcome'
  end
  scenario 'viewing bookmarks' do
    visit('/bookmarks')
    bookmarks = %w[google amazon wikipedia]
    bookmarks.each do |bookmark|
      expect(page).to have_content bookmark
    end
  end
end
