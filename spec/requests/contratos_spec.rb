require 'rails_helper'

RSpec.describe "Contratos", type: :request do
  describe "GET /contratos" do
    it "works! (now write some real specs)" do
      get contratos_path
      expect(response).to have_http_status(200)
    end
  end
end
