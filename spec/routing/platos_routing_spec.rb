require "rails_helper"

RSpec.describe PlatosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/platos").to route_to("platos#index")
    end

    it "routes to #new" do
      expect(:get => "/platos/new").to route_to("platos#new")
    end

    it "routes to #show" do
      expect(:get => "/platos/1").to route_to("platos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/platos/1/edit").to route_to("platos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/platos").to route_to("platos#create")
    end

    it "routes to #update" do
      expect(:put => "/platos/1").to route_to("platos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/platos/1").to route_to("platos#destroy", :id => "1")
    end

  end
end
