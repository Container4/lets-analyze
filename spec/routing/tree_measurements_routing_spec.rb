require "rails_helper"

RSpec.describe TreeMeasurementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/tree_measurements").to route_to("tree_measurements#index")
    end

    it "routes to #new" do
      expect(:get => "/tree_measurements/new").to route_to("tree_measurements#new")
    end

    it "routes to #show" do
      expect(:get => "/tree_measurements/1").to route_to("tree_measurements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/tree_measurements/1/edit").to route_to("tree_measurements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/tree_measurements").to route_to("tree_measurements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/tree_measurements/1").to route_to("tree_measurements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/tree_measurements/1").to route_to("tree_measurements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/tree_measurements/1").to route_to("tree_measurements#destroy", :id => "1")
    end

  end
end
