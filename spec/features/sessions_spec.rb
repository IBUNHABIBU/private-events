require 'rails_helper'

describe "the signin process", type: :feature do
   
  it "signs me in" do
    visit login_path
    within(:sessions) do
      fill_in 'Email', with: 'maya@gmail.com'
      fill_in 'Password', with: '123456'
    end
    click_button 'Sign in'
    expect(page).to have_content 'Success'
  end
end