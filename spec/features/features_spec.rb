require 'rails_helper'
# no 'restaurants to start with'
feature 'restaurants' do
  context 'no restaurants jave been added' do
    scenario 'should display a prompt to add a restaurant' do
      visit '/restaurants'
      expect(page).to have_content 'No restaurants yet'
      expect(page).to have_link 'Add a restaurant'
    end
  end
end
