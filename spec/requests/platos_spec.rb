require 'rails_helper'

RSpec.describe "Platos", :type => :request do
  describe "GET /platos" do
    it "works! (now write some real specs)" do
      get platos_path
      expect(response).to have_http_status(200)
    end
  end
end
