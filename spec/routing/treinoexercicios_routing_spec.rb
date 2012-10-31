require "spec_helper"

describe TreinoexerciciosController do
  describe "routing" do

    it "routes to #index" do
      get("/treinoexercicios").should route_to("treinoexercicios#index")
    end

    it "routes to #new" do
      get("/treinoexercicios/new").should route_to("treinoexercicios#new")
    end

    it "routes to #show" do
      get("/treinoexercicios/1").should route_to("treinoexercicios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/treinoexercicios/1/edit").should route_to("treinoexercicios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/treinoexercicios").should route_to("treinoexercicios#create")
    end

    it "routes to #update" do
      put("/treinoexercicios/1").should route_to("treinoexercicios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/treinoexercicios/1").should route_to("treinoexercicios#destroy", :id => "1")
    end

  end
end
