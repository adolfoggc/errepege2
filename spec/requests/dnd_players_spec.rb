require 'rails_helper'

RSpec.describe "DndPlayers", type: :request do
  describe "GET /dnd_players" do
    it "works! (now write some real specs)" do
      get dnd_players_path
      expect(response).to have_http_status(200)
    end
  end
end
