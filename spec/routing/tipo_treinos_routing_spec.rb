require "spec_helper"

describe TipoTreinosController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_treinos").should route_to("tipo_treinos#index")
    end

    it "routes to #new" do
      get("/tipo_treinos/new").should route_to("tipo_treinos#new")
    end

    it "routes to #show" do
      get("/tipo_treinos/1").should route_to("tipo_treinos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_treinos/1/edit").should route_to("tipo_treinos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_treinos").should route_to("tipo_treinos#create")
    end

    it "routes to #update" do
      put("/tipo_treinos/1").should route_to("tipo_treinos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_treinos/1").should route_to("tipo_treinos#destroy", :id => "1")
    end

  end
end
