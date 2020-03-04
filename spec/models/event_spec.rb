require 'rails_helper'

RSpec.describe Event, type: :model do
   let(:event) { build(:event) }
  context 'Creating Event' do
    it 'should give event title' do
      event.title = 'Sido'
      expect(event.title).to eq('Sido')
    end
    it 'should give event description' do
      event.description = 'small innovation hub'
      expect(event.description).to eq('small innovation hub')
    end
    it 'should give event Location' do
      event.location = 'Musoma'
      expect(event.location).to eq('Musoma')
    end
   
  end
  context 'Event Associations' do
    it { should belongs_to(:creator) }
    it { should have_many(:attendees) }
    it { should have_many(:attended_events).through(:event_attendees) }
    it { should have_many(:invitations).with_foreign_key('invitee') }
    it { should have_many(:invited_events) }
  end
end
