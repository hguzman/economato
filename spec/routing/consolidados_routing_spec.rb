require "rails_helper"

RSpec.describe ConsolidadosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/consolidados").to route_to("consolidados#index")
    end

    it "routes to #new" do
      expect(:get => "/consolidados/new").to route_to("consolidados#new")
    end

    it "routes to #show" do
      expect(:get => "/consolidados/1").to route_to("consolidados#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/consolidados/1/edit").to route_to("consolidados#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/consolidados").to route_to("consolidados#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/consolidados/1").to route_to("consolidados#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/consolidados/1").to route_to("consolidados#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/consolidados/1").to route_to("consolidados#destroy", :id => "1")
    end

  end
end
