require 'rails_helper'

RSpec.describe User, :type => :model do
  before(:all) do 
    @user = User.new(name:"Maya",email:"maya@gmail.com",password_digest:"12345")
  end
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
    it "It should give user name" do 
      expect(@user.name).to eq("Maya")
    end
    it "It should give email" do 
      expect(@user.email).to eq("maya@gmail.com")
    end
  end
end
