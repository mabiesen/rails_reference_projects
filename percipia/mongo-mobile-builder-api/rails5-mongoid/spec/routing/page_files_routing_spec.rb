require "rails_helper"

RSpec.describe PageFilesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/page_files").to route_to("page_files#index")
    end

    it "routes to #new" do
      expect(:get => "/page_files/new").to route_to("page_files#new")
    end

    it "routes to #show" do
      expect(:get => "/page_files/1").to route_to("page_files#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/page_files/1/edit").to route_to("page_files#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/page_files").to route_to("page_files#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/page_files/1").to route_to("page_files#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/page_files/1").to route_to("page_files#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/page_files/1").to route_to("page_files#destroy", :id => "1")
    end

  end
end