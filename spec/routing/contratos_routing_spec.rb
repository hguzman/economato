require "rails_helper"

RSpec.describe ContratosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/contratos").to route_to("contratos#index")
    end

    it "routes to #new" do
      expect(:get => "/contratos/new").to route_to("contratos#new")
    end

    it "routes to #show" do
      expect(:get => "/contratos/1").to route_to("contratos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/contratos/1/edit").to route_to("contratos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/contratos").to route_to("contratos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/contratos/1").to route_to("contratos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/contratos/1").to route_to("contratos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/contratos/1").to route_to("contratos#destroy", :id => "1")
    end

  end
end
