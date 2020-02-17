require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'Creating User' do 
    let(:event){build(:event)}
      it 'should give event title' do 
          expect(event.name).to eq("Sido")
      end 
      it 'should give event description' do 
          expect(event.description).to eq("small innovation hub")
      end
      it 'it shows the event date' do 
          expect(event.date).to eq("2020-02-17 09:36:39")
      end
  end 
end
