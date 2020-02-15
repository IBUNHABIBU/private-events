require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:all) do 
    @user = User.new(name:"Maya",email:"maya@gmail.com",password_digest:"12345")
  end
  context 'Creating User' do 
      before(:all) do 
          @user = User.new(name:"Maya",email:"maya@gmail.com")
      end
      it 'should give a user name' do 
          expect(@user.name).to eq("Maya")
      end 
      it 'should give the user email' do 
          expect(@user.email).to eq("maya@gmail.com")
      end
  end 
end
