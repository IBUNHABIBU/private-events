require 'rails_helper'

RSpec.describe UsersController, type: :controller do
     context 'GET #new' do 
        it 'returns a success response' do 
            get :new
            expect(response).to be_success
        end 
     end 
    context 'GET #show' do 
        it 'returns a success response' do 
            user = User.create(name:"Maya",email:"maya@gmail.com")
            get :show, params: { id: user.to_param }
            expect(response).to be_success
        end
    end
end
