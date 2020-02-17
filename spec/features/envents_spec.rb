require 'rails_helper'

RSpec.feature "events", type: :feature do
  context ' create new event ' do 
      scenario 'should be successful' do 
          visit new_event_path
          within('form') do 
              fill_in 'Name', with: 'Sido'
              fill_in 'Description', with: 'small innovation hub'
              fill_in 'Date', with: 2020-02-17 09:36:39
              fill_in 'Location', with: 'Musoma'
          end
          click_button 'Create Event'
          expect(page).to have_content("Event was successful created.")
      end
  end 
  context ' updating event ' do 
      scenario 'should be successful' do 
          visit new_user_path
          within('form') do 
              fill_in 'Name', with: 'Maya'
              fill_in 'Email', with: 'maya@gmail.com'
          end
          click_button 'Create User'
          expect(page).to have_content("User was successful created.")
      end
  end 
end