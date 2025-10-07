require 'rails_helper'

RSpec.describe "Admin::Profiles", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/admin/profiles/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/admin/profiles/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/admin/profiles/update"
      expect(response).to have_http_status(:success)
    end
  end
end
