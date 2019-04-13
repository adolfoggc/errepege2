json.extract! dnd_player, :id, :name, :age, :race, :gender, :experience, :description, :weight, :height, :created_at, :updated_at
json.url dnd_player_url(dnd_player, format: :json)
