require "rails_helper"

RSpec.describe DetallesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/detalles").to route_to("detalles#index")
    end

    it "routes to #new" do
      expect(:get => "/detalles/new").to route_to("detalles#new")
    end

    it "routes to #show" do
      expect(:get => "/detalles/1").to route_to("detalles#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/detalles/1/edit").to route_to("detalles#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/detalles").to route_to("detalles#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/detalles/1").to route_to("detalles#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/detalles/1").to route_to("detalles#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/detalles/1").to route_to("detalles#destroy", :id => "1")
    end

  end
end
