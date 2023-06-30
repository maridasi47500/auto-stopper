json.extract! game, :id, :user_id, :title, :path, :startcommand, :created_at, :updated_at
json.url game_url(game, format: :json)
