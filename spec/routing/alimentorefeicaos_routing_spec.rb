require "spec_helper"

describe AlimentorefeicaosController do
  describe "routing" do

    it "routes to #index" do
      get("/alimentorefeicaos").should route_to("alimentorefeicaos#index")
    end

    it "routes to #new" do
      get("/alimentorefeicaos/new").should route_to("alimentorefeicaos#new")
    end

    it "routes to #show" do
      get("/alimentorefeicaos/1").should route_to("alimentorefeicaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alimentorefeicaos/1/edit").should route_to("alimentorefeicaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alimentorefeicaos").should route_to("alimentorefeicaos#create")
    end

    it "routes to #update" do
      put("/alimentorefeicaos/1").should route_to("alimentorefeicaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alimentorefeicaos/1").should route_to("alimentorefeicaos#destroy", :id => "1")
    end

  end
end
