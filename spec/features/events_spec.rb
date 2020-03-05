require 'rails_helper'

RSpec.feature 'events', type: :feature do
  context ' create new event ' do
    scenario 'should be successful' do
      
      visit new_event_path
      within('form') do
        fill_in "Title", with: 'Sido'
        fill_in "Description", with: 'small innovation hub'
        fill_in "Location", with: 'Musoma'
      end
      click_button 'Create Event'
      expect(page).to have_content('Event was successful created.')
    end
  end
end
