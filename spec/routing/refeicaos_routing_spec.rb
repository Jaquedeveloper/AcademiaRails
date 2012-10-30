require "spec_helper"

describe RefeicaosController do
  describe "routing" do

    it "routes to #index" do
      get("/refeicaos").should route_to("refeicaos#index")
    end

    it "routes to #new" do
      get("/refeicaos/new").should route_to("refeicaos#new")
    end

    it "routes to #show" do
      get("/refeicaos/1").should route_to("refeicaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/refeicaos/1/edit").should route_to("refeicaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/refeicaos").should route_to("refeicaos#create")
    end

    it "routes to #update" do
      put("/refeicaos/1").should route_to("refeicaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/refeicaos/1").should route_to("refeicaos#destroy", :id => "1")
    end

  end
end
