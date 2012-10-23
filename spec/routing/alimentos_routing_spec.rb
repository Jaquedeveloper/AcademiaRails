require "spec_helper"

describe AlimentosController do
  describe "routing" do

    it "routes to #index" do
      get("/alimentos").should route_to("alimentos#index")
    end

    it "routes to #new" do
      get("/alimentos/new").should route_to("alimentos#new")
    end

    it "routes to #show" do
      get("/alimentos/1").should route_to("alimentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/alimentos/1/edit").should route_to("alimentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/alimentos").should route_to("alimentos#create")
    end

    it "routes to #update" do
      put("/alimentos/1").should route_to("alimentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/alimentos/1").should route_to("alimentos#destroy", :id => "1")
    end

  end
end
