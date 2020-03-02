require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  before(:each) do
    user = create(:user)
  end
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
    it 'assigns the requested user to @user' do
      get :show, params: { id: user.to_param }
      assigns(:user).should eq(user)
    end
  end

  describe 'GET #index' do
    it 'displays all users' do
      get :index
      expect(assigns(:users)).to eq([user])
    end

    it 'renders the :index view' do
      get :index
      expect(response).to render_template('index')
    end
  end
end
