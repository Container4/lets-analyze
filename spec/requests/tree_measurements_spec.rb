require 'rails_helper'

RSpec.describe "TreeMeasurements", type: :request do
  describe "GET /tree_measurements" do
    it "works! (now write some real specs)" do
      get tree_measurements_path
      expect(response).to have_http_status(200)
    end
  end
end
