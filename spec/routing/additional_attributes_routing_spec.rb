require "spec_helper"

describe AdditionalAttributesController do
  describe "routing" do

    it "routes to #index" do
      get("/additional_attributes").should route_to("additional_attributes#index")
    end

    it "routes to #new" do
      get("/additional_attributes/new").should route_to("additional_attributes#new")
    end

    it "routes to #show" do
      get("/additional_attributes/1").should route_to("additional_attributes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/additional_attributes/1/edit").should route_to("additional_attributes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/additional_attributes").should route_to("additional_attributes#create")
    end

    it "routes to #update" do
      put("/additional_attributes/1").should route_to("additional_attributes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/additional_attributes/1").should route_to("additional_attributes#destroy", :id => "1")
    end

  end
end
