json.extract! myhack, :id, :title, :content, :user_id, :created_at, :updated_at
json.url myhack_url(myhack, format: :json)
