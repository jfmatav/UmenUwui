require "rails_helper"

RSpec.describe AcompanamientosController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/acompanamientos").to route_to("acompanamientos#index")
    end

    it "routes to #new" do
      expect(:get => "/acompanamientos/new").to route_to("acompanamientos#new")
    end

    it "routes to #show" do
      expect(:get => "/acompanamientos/1").to route_to("acompanamientos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/acompanamientos/1/edit").to route_to("acompanamientos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/acompanamientos").to route_to("acompanamientos#create")
    end

    it "routes to #update" do
      expect(:put => "/acompanamientos/1").to route_to("acompanamientos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/acompanamientos/1").to route_to("acompanamientos#destroy", :id => "1")
    end

  end
end
