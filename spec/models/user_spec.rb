require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { build(:user) }
  context 'Creating User' do
    it 'should give a user name' do
      user.name = 'Maya'
      expect(user.name).to eq('Maya')
    end
    it 'should give the user email' do
      user.email = 'maya@gmail.com'
      expect(user.email).to eq('maya@gmail.com')
    end
  end
  context 'User Associations' do
    it { should have_many(:events) }
    it { should have_many(:event_attendees) }
    it { should have_many(:attended_events).through(:event_attendees) }
    it { should have_many(:invitations).with_foreign_key('event_id') }
    it { should have_many(:invited_events) }
  end
end
