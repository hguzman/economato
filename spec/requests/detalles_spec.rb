require 'rails_helper'

RSpec.describe "Detalles", type: :request do
  describe "GET /detalles" do
    it "works! (now write some real specs)" do
      get detalles_path
      expect(response).to have_http_status(200)
    end
  end
end
