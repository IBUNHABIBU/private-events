require 'rails_helper'

RSpec.describe User, :type => :model do
  context "User validation " do
    it "Must have a user name" do 
      user = User.new(email:"maya@gmail.com").save
      expect(user).to eq(false)
    end
     it "it ensures email presence" do 
      user = User.new(name:"Maya").save
      expect(user).to eq(false)
    end
    it "it should save successfully" do 
      user = User.new(name:"Maya",email:"maya@gmail.com").save
      expect(user).to eq(true)
    end
  end
end
