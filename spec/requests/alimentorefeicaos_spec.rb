require 'spec_helper'

describe "Alimentorefeicaos" do
  describe "GET /alimentorefeicaos" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get alimentorefeicaos_path
      response.status.should be(200)
    end
  end
end
