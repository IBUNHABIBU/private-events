require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  context ' create new user ' do
    scenario 'should be successful' do
      visit new_user_path
      within('form') do
        fill_in 'Name', with: 'Maya'
        fill_in 'Email', with: 'maya@gmail.com'
      end
      click_button 'Create User'
      expect(page).to have_content('Your account is created successfully')
    end
  end
end
