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
            user = create(:user)
            get :show
            expect(response).to be_success
        end
        it "renders the #show view" do
            user = create(:user)
            get :show, id: user.id
            response.should render_template :show
        end
        it "assigns the requested user to @user" do
            user = create(:user)
            get :show, id: user.id
            assigns(:user).should eq(user)
        end
    end
    describe "POST #create" do
        context "with valid attributes" do
          it "saves the new user in the database"
          it "redirects to the home page"
        end
    
        context "with invalid attributes" do
          it "does not save the new user in the database"
          it "re-renders the :new template"
        end
    end
    describe "GET #index" do
          it "displays all users" do
            user = create(:user)
            get :index
            assigns(:users).should eq([user])
          end
  
          it "renders the :index view" do
            get :index
            response.should render_template :index
          end
    end
end
