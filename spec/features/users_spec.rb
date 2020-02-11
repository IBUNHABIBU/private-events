require 'rails_helper'

RSpec.feature "Users", type: :feature do
  context ' create new user ' do 
      scenario 'should be successful' do 
          visit new_user_path
          within('form') do 
              fill_in 'Name', with: 'Maya'
              fill_in 'Email', with: 'maya@gmail.com'
          end
          click_button 'Create User'
          expect(page).to have_content("User was successful created.")
      end
      scenario 'should fail' do 
      end
  end 
  context ' update user ' do 
  end 
  context ' destroy user ' do 
  end 
end
