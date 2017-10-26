require 'rails_helper'

RSpec.describe "Consolidados", type: :request do
  describe "GET /consolidados" do
    it "works! (now write some real specs)" do
      get consolidados_path
      expect(response).to have_http_status(200)
    end
  end
end
