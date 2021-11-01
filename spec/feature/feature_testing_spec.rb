require 'capybara/rspec'


feature 'See list of bookmarks' do 
    scenario 'see bookmark' do 
       visit ('/')
        expect(page).to have_content "Welcome"
    end 
end 