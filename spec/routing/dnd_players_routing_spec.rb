require "rails_helper"

RSpec.describe DndPlayersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/dnd_players").to route_to("dnd_players#index")
    end

    it "routes to #new" do
      expect(:get => "/dnd_players/new").to route_to("dnd_players#new")
    end

    it "routes to #show" do
      expect(:get => "/dnd_players/1").to route_to("dnd_players#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/dnd_players/1/edit").to route_to("dnd_players#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/dnd_players").to route_to("dnd_players#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/dnd_players/1").to route_to("dnd_players#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/dnd_players/1").to route_to("dnd_players#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/dnd_players/1").to route_to("dnd_players#destroy", :id => "1")
    end
  end
end
