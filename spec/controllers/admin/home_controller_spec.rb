require 'rails_helper'

RSpec.describe Admin::HomeController, type: :controller do
  render_views
  include Devise::Test::ControllerHelpers

  before do
    @request.env['devise.mapping'] = Devise.mappings[:user]
  end

  describe 'GET #index' do
    context '未ログイン' do
      it 'サインインにリダイレクト' do
        get :index
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
