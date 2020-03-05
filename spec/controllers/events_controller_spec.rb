require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  context 'GET #new' do
    it 'returns a success response' do
      get :new
      expect(response).to be_success
    end
  end
  context 'GET #show' do
    it 'returns a success response' do
      get :show
      expect(response).to be_success
    end
    it 'renders the #show view' do
      get :show, params: { id: user.to_param }
      response.should render_template :show
    end
    it 'assigns the requested event to @event' do
      get :show, params: { id: user.to_param }
      assigns(:event).should eq(event)
    end
  end

  describe 'GET #index' do
    it 'displays all events' do
      get :index
      expect(assigns(:events)).to eq([event])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
