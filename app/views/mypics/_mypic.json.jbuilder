json.extract! mypic, :id, :title, :content, :image, :user_id, :created_at, :updated_at
json.url mypic_url(mypic, format: :json)
