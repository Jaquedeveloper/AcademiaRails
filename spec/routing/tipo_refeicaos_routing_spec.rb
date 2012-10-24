require "spec_helper"

describe TipoRefeicaosController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_refeicaos").should route_to("tipo_refeicaos#index")
    end

    it "routes to #new" do
      get("/tipo_refeicaos/new").should route_to("tipo_refeicaos#new")
    end

    it "routes to #show" do
      get("/tipo_refeicaos/1").should route_to("tipo_refeicaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_refeicaos/1/edit").should route_to("tipo_refeicaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_refeicaos").should route_to("tipo_refeicaos#create")
    end

    it "routes to #update" do
      put("/tipo_refeicaos/1").should route_to("tipo_refeicaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_refeicaos/1").should route_to("tipo_refeicaos#destroy", :id => "1")
    end

  end
end
