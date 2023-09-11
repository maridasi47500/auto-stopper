json.extract! traffic_info, :id, :source_id, :destination_id, :time, :created_at, :updated_at
json.url traffic_info_url(traffic_info, format: :json)
