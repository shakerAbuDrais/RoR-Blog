require 'rails_helper'

RSpec.describe "Commenrs", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/commenrs/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/commenrs/show"
      expect(response).to have_http_status(:success)
    end
  end

end
