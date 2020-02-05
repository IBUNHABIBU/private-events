require 'rails_helper'

RSpec.describe UsersController, type: :controller do
      describe '#new' do
        @user = User.new
        expect(response).to render_template(:new)
      end
end
