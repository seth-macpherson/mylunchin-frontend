require "spec_helper"

describe PlatesController do
  describe "routing" do

    it "routes to #index" do
      get("/plates").should route_to("plates#index")
    end

    it "routes to #new" do
      get("/plates/new").should route_to("plates#new")
    end

    it "routes to #show" do
      get("/plates/1").should route_to("plates#show", :id => "1")
    end

    it "routes to #edit" do
      get("/plates/1/edit").should route_to("plates#edit", :id => "1")
    end

    it "routes to #create" do
      post("/plates").should route_to("plates#create")
    end

    it "routes to #update" do
      put("/plates/1").should route_to("plates#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/plates/1").should route_to("plates#destroy", :id => "1")
    end

  end
end
