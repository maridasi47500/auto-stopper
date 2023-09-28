json.extract! post, :id, :image, :title, :content, :date, :city_id, :created_at, :updated_at
json.url post_url(post, format: :json)
